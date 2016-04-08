# -*- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals
from django.views.generic import TemplateView
from django.utils.translation import ugettext as _


class IndexView(TemplateView):
    template_name = "index.html"

    def get(self, request, *args, **kwargs):
        context = {
            "title": _("TOPページ"),
            "text": _("ハローワールド"),
        }
        return self.render_to_response(context)
