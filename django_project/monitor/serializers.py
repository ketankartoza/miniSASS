from rest_framework import serializers

from minisass_authentication.models import UserProfile
from minisass_authentication.serializers import LookupSerializer
from monitor.models import (
    Observations,
    ObservationPestImage,
    Sites,
    SiteImage,
    Assessment
)

class AssessmentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Assessment
        fields = '__all__'


class SiteImageSerializer(serializers.ModelSerializer):
    """Serializer of site images."""

    class Meta:
        model = SiteImage
        exclude = ('site',)


class SitesSerializer(serializers.ModelSerializer):
    """Serializer of site."""

    images = serializers.SerializerMethodField()

    def get_images(self, obj: Sites):
        """Return images of site."""
        return SiteImageSerializer(
            obj.siteimage_set.all(), many=True
        ).data

    class Meta:
        model = Sites
        fields = '__all__'


class ObservationPestImageSerializer(serializers.ModelSerializer):
    """Serializer for Observation Pert image."""

    pest_id = serializers.IntegerField(source='pest.id')
    pest_name = serializers.CharField(source='pest.name')

    class Meta:
        model = ObservationPestImage
        exclude = ('observation', 'pest')


class ObservationsSerializer(serializers.ModelSerializer):
    """Serializer of observation."""

    site = SitesSerializer()
    sitename = serializers.CharField(source='site.site_name')
    rivername = serializers.CharField(source='site.river_name')
    sitedescription = serializers.CharField(source='site.description')
    rivercategory = serializers.CharField(source='site.river_cat')
    longitude = serializers.FloatField(source='site.the_geom.x')
    latitude = serializers.FloatField(source='site.the_geom.y')
    collectorsname = serializers.SerializerMethodField()
    organisationtype = serializers.SerializerMethodField()
    images = serializers.SerializerMethodField()

    class Meta:
        model = Observations
        fields = '__all__'

    def get_collectorsname(self, obj):
        """Return collector name."""
        try:
            user_profile = UserProfile.objects.get(user=obj.user)
        except UserProfile.DoesNotExist:
            user_profile = None

        return (
            f"{user_profile.user.first_name} {user_profile.user.last_name}"
            if user_profile and user_profile.user.first_name and user_profile.user.last_name
            else user_profile.user.username if user_profile else ""
        )

    def get_organisationtype(self, obj):
        """Return organisation type."""
        try:
            user_profile = UserProfile.objects.get(user=obj.user)
        except UserProfile.DoesNotExist:
            user_profile = None

        if user_profile:
            organisation_type = user_profile.organisation_type
            serialized_organisation_type = LookupSerializer(
                organisation_type).data
            return serialized_organisation_type
        else:
            return None

    def get_images(self, obj: Observations):
        """Return images of site."""
        return ObservationPestImageSerializer(
            obj.observationpestimage_set.all(), many=True
        ).data
     


class SitesWithObservationsSerializer(serializers.ModelSerializer):
    observations = ObservationsSerializer(many=True, read_only=True)
    sitename = serializers.CharField(source='site_name')
    rivername = serializers.CharField(source='river_name')
    sitedescription = serializers.CharField(source='description')
    rivercategory = serializers.CharField(source='river_cat')
    longitude = serializers.FloatField(source='the_geom.x')
    latitude = serializers.FloatField(source='the_geom.y')

    class Meta:
        model = Sites
        fields = '__all__'

    def to_representation(self, instance):
        data = super().to_representation(instance)
        # Combine the site information to the observations
        combined_data = {
            'site': {
                'sitename': data['sitename'],
                'rivername': data['rivername'],
                'rivercategory': data['rivercategory'],
                'sitedescription': data['sitedescription'],
            },
            'observations': [],
        }

        if 'observations' not in data:
            data['observations'] = []

        for observation_data in data['observations']:
            user_profile = UserProfile.objects.filter(user=observation_data['user']).first()
            collectors_name = (
                f"{user_profile.user.first_name} {user_profile.user.last_name}"
                if user_profile and user_profile.user.first_name and user_profile.user.last_name
                else user_profile.user.username if user_profile else ""
            )

            observation_info = {
                'collectorsname': collectors_name,
                'organisationtype': LookupSerializer(user_profile.organisation_type).data if user_profile else None,
                'latitude': data['latitude'],
                'longitude': data['longitude'],
                'obs_date': observation_data['obs_date'],
                'observationImages': [],
            }
            combined_data['observations'].append(observation_info)

        return combined_data
