# Generated by Django 2.1.1 on 2018-09-17 14:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('basic', '0022_auto_20180917_1717'),
    ]

    operations = [
        migrations.CreateModel(
            name='Contact',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=60)),
                ('email', models.EmailField(max_length=254)),
                ('topic', models.CharField(max_length=254)),
                ('text', models.TextField()),
                ('created_at', models.DateTimeField(auto_now=True)),
            ],
        ),
    ]
