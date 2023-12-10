# Generated by Django 4.2.7 on 2023-12-08 23:56

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('minisass_authentication', '0004_alter_lookup_id_alter_userprofile_id'),
    ]

    operations = [
        migrations.AddField(
            model_name='userprofile',
            name='is_password_enforced',
            field=models.BooleanField(default=False, help_text='Flag whether user has been enforced to use strong password'),
        ),
        migrations.AlterField(
            model_name='lookup',
            name='id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='userprofile',
            name='id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='userprofile',
            name='organisation_type',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='minisass_authentication.lookup'),
        ),
    ]
