# -*- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals
from django.conf.urls import url
from .index import IndexView


urlpatterns = [
    url(r'^$', IndexView.as_view(), name='api-index'),
]
