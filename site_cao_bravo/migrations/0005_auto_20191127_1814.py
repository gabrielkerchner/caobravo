# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2019-11-27 21:14
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('site_cao_bravo', '0004_auto_20191127_1813'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='data_publicacao',
            field=models.DateTimeField(blank=True, default=django.utils.timezone.now),
        ),
    ]
