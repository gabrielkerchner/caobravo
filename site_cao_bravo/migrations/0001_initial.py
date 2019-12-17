# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2019-11-21 13:36
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Contact',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=130)),
                ('email', models.EmailField(blank=True, max_length=254)),
                ('subject', models.CharField(blank=True, max_length=30)),
                ('message', models.TextField(blank=True)),
            ],
        ),
    ]
