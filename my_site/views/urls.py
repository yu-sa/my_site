# -*- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals
from django.conf.urls import url, include
from .index import IndexView


urlpatterns = [
    url(r'^$', IndexView.as_view(), name='api-index'),
    url(r'^i18n/', include('django.conf.urls.i18n')),
]
