# Generated by Django 4.2.7 on 2023-12-15 00:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('minisass_authentication', '0007_userprofile_certificate'),
    ]

    operations = [
        migrations.AddField(
            model_name='userprofile',
            name='expert_approval_status',
            field=models.CharField(choices=[('PENDING', 'PENDING'), ('APPROVED', 'APPROVED'), ('REJECTED', 'REJECTED')], default='PENDING'),
        ),
    ]
