# Generated by Django 2.1.1 on 2018-09-18 02:31

import ckeditor_uploader.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('basic', '0024_auto_20180918_0617'),
    ]

    operations = [
        migrations.AlterField(
            model_name='review',
            name='comment',
            field=ckeditor_uploader.fields.RichTextUploadingField(blank=True, null=True),
        ),
    ]
