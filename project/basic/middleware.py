from django.utils.deprecation import MiddlewareMixin
from django.utils import translation


class CustomMiddleware(MiddlewareMixin):
    def process_view(self, request, view_func, view_args, view_kwargs):
        if view_kwargs.get('lang'):
            translation.activate(view_kwargs.get('lang'))
        return None
