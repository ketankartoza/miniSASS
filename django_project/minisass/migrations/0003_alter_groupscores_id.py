# Generated by Django 4.2.7 on 2023-12-05 19:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('minisass', '0002_groupscores'),
    ]

    operations = [
        migrations.AlterField(
            model_name='groupscores',
            name='id',
            field=models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
    ]
