"""evoi URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""

app_name = 'site_cao_bravo'

from django.contrib import admin
from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.HomeView.as_view(), name="home"),
    url(r'^localizacao/$', views.location, name="location"),
    url(r'^historia/$', views.history, name="history"),
    url(r'^blog/$', views.blog, name="blog"),
    url(r'^blog/(?P<post_id>[0-9]+)$', views.post, name="post"),
    url(r'^franquia/$', views.FranchiseView.as_view(), name="franchise"),
    url(r'^eventos/$', views.EventsView.as_view(), name="events"),
    
    
]