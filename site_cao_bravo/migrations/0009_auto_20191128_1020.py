# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2019-11-28 13:20
from __future__ import unicode_literals

import ckeditor.fields
import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('site_cao_bravo', '0008_auto_20191128_0937'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='post',
            name='descricao',
        ),
        migrations.AddField(
            model_name='post',
            name='texto',
            field=ckeditor.fields.RichTextField(null=True),
        ),
        migrations.AlterField(
            model_name='post',
            name='data_publicacao',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2019, 11, 28, 13, 20, 25, 523000, tzinfo=utc)),
        ),
    ]
