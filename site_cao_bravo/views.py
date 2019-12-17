# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render, get_object_or_404
from django.views.generic import TemplateView
from .forms import ContactForm
from .models import Post

# Create your views here.

class HomeView(TemplateView):
    template_name = "site_cao_bravo/home.html"

    def get(self, request):
        list_posts = Post.objects.order_by('-data_publicacao')
        form = ContactForm()
        return render(request, self.template_name, {"form": form, "list_posts": list_posts})

def location(request):
    return render(request, "site_cao_bravo/location.html", {})


def history(request):
    return render(request, "site_cao_bravo/history.html", {})

def blog(request):
    list_posts = Post.objects.order_by('-data_publicacao')
    return render(request, "site_cao_bravo/blog.html", {'list_posts': list_posts})

def post(request, post_id):
    post = get_object_or_404(Post, pk=post_id)
    return render(request, "site_cao_bravo/blog_info.html", {'post': post})

class FranchiseView(TemplateView):
    template_name = "site_cao_bravo/franchise.html"

    def get(self, request):
        form = ContactForm()
        return render(request, self.template_name, {"form": form})

class EventsView(TemplateView):
    template_name = "site_cao_bravo/events.html"

    def get(self, request):
        form = ContactForm()
        return render(request, self.template_name, {"form": form})

