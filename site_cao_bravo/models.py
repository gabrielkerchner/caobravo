# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from ckeditor.fields import RichTextField
import django

# Create your models here
class Post(models.Model):
    imagem = models.ImageField(upload_to = 'static\images', null=True, blank=True)
    titulo = models.CharField(max_length=256)
    texto = RichTextField(null=True)
    data_publicacao = models.DateTimeField(default=django.utils.timezone.now(), blank=True)

    def __str__(self):
        return self.titulo
