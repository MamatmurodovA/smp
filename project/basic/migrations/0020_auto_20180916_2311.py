# Generated by Django 2.1.1 on 2018-09-16 18:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('basic', '0019_auto_20180916_2246'),
    ]

    operations = [
        migrations.AlterField(
            model_name='book',
            name='file',
            field=models.FileField(upload_to='library/files/%s/%s'),
        ),
    ]