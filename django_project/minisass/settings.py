version: "3.9"

volumes:
  postgres_data:
  certificates:
services:
  db:
    image: kartoza/postgis:16-3.4
    volumes:
      - postgres_data:/var/lib/postgresql
      - ./geodata:/data
      # Activate the restore script when downloading and importing existing data
      - ./geodata/restore.sh:/docker-entrypoint-initdb.d/restore.sh
    environment:
      - POSTGRES_DB=${POSTGIS_DB}
      - POSTGRES_USER=${POSTGRES_USER}
      - POSTGRES_PASS=${POSTGRES_PASS}
      - ALLOW_IP_RANGE=${ALLOW_IP_RANGE}
      - POSTGRES_MULTIPLE_EXTENSIONS=${POSTGRES_MULTIPLE_EXTENSIONS}
      - FORCE_SSL=${FORCE_SSL}
    ports:
      - "32769:5432"
    restart: always
    healthcheck:
      test: "PGPASSWORD=${POSTGRES_PASS} pg_isready -h 127.0.0.1 -U ${POSTGRES_USER} -d minisass"
      interval: 5s
      timeout: 10s
      retries: 30

  mount:
    image: kartoza/s3mount
    build:
      context: deployment/docker-s3-bucket
    privileged: true
    environment:
      - AWS_ACCESS_KEY=minio_admin
      - AWS_SECRET_ACCESS_KEY=secure_minio_secret
      - S3_MOUNT_DIRECTORY=/web
      - S3_BUCKET_NAME=mapproxy
      # URL can be an amazon S3 bucket so that we can mount it
      - MINIO_URL=http://minio:9000/
    volumes:
      - ./data_images:/web
  django:
    build:
      context: .
      dockerfile: ./deployment/docker/Dockerfile
    volumes:
      - ./django_project:/home/web/django_project
      # Images on the platform will be stored here
      - ./data_images:/web
    environment:
      - POSTGRES_DB=${POSTGRES_DB}
      - POSTGRES_USER=${POSTGRES_USER}
      - POSTGRES_PASS=${POSTGRES_PASS}
      - DATABASE_HOST=${DATABASE_HOST}
      - DATABASE_PORT=${DATABASE_PORT}
      - ALLOWED_HOSTS='*'
      - SERVER_MODE=${SERVER_MODE}
      - RECAPTCHA_PUBLIC_KEY=${RECAPTCHA_PUBLIC_KEY}
      - RECAPTCHA_PRIVATE_KEY=${RECAPTCHA_PRIVATE_KEY}
      - SMTP_HOST=${SMTP_HOST}
      - SMTP_PORT=${SMTP_PORT}
      - SMTP_EMAIL=${SMTP_EMAIL}
      - SMTP_HOST_USER=${SMTP_HOST_USER}
      - SMTP_HOST_PASSWORD=${SMTP_HOST_PASSWORD}
      - SMTP_EMAIL_TLS=${SMTP_EMAIL_TLS}
    depends_on:
      db:
        condition: service_healthy
    restart: always
    logging:
      driver: json-file
      options:
        max-size: 200m
        max-file: '10'

  letsencrypt:
    build: ./deployment/letsencrypt/
    environment:
      - HTTPS_HOST=${HTTPS_HOST}
      - HTTP_HOST=${HTTP_HOST}
      - ADMIN_EMAIL=${ADMIN_EMAIL}
      - LETSENCRYPT_MODE=${LETSENCRYPT_MODE}
    volumes:
      - certificates:/certificates/
    restart: always

  vtiles:
    image: pramsey/pg_featureserv
    volumes:
      - ./deployment/config/pg_featureserv.toml:/etc/pg_featureserv.toml
    restart: always
    environment:
      - DATABASE_URL=postgres://${POSTGRES_USER}:${POSTGRES_PASS}@${DATABASE_HOST}/${POSTGRES_DB}
      - PGFS_SERVER_URLBASE=https://${HTTPS_HOST}/tiles
      - PGFS_SERVER_BASEPATH=/
    ports:
      - "9000:9000"
    depends_on:
      db:
        condition: service_healthy
    healthcheck:
      test: curl --fail -s http://localhost:9000/ || exit 1
      interval: 1m30s
      timeout: 10s
      retries: 3
    logging:
      driver: json-file
      options:
        max-size: 200m
        max-file: '10'

  web:
    build: ./deployment/nginx/
    environment:
      - HTTPS_HOST=${HTTPS_HOST}
      - HTTP_HOST=${HTTP_HOST}
      - HTTPS_PORT=${HTTPS_PORT}
      - HTTP_PORT=${HTTP_PORT}
      - LETSENCRYPT_MODE=${LETSENCRYPT_MODE}
      - RESOLVER=${RESOLVER}
    ports:
      - "${HTTP_PORT}:80"
      - "${HTTPS_PORT}:443"
    volumes:
      - ./django_project/minisass/static:/home/web/static
      - ./django_project/minisass/media:/home/web/media
      - certificates:/certificates/
    restart: on-failure
    depends_on:
      - django
      - db
      - vtiles
    logging:
      driver: json-file
      options:
        max-size: 200m
        max-file: '10'
