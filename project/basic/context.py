from django.template.loader import render_to_string
from django.utils.timezone import now
from django.utils.translation import get_language, ugettext as _
from django.shortcuts import reverse

from .models import Menu


def get_page_data(request, *args, **kwargs):

    view_name = request.resolver_match.view_name
    kwargs = request.resolver_match.kwargs
    page_title = _('Home page')
    paths = list()
    paths.append({
        'title': page_title,
        'path': reverse('basic:home', kwargs=kwargs)
    })
    if view_name == 'basic:events':
        page_title = _('Events')
        paths.append({
            'title': page_title,
            'path': reverse(view_name, kwargs=kwargs)
        })

    elif view_name == 'products:product_list':
        page_title = _('Product list')
        paths.append({
            'title': page_title,
            'path': reverse(view_name,),
        })
    elif view_name == 'products:product_create':
        page_title = _('Product list')
        paths.append({
            'title': page_title,
            'path': reverse('products:product_list',),
        })
        page_title = _('Product create')
        paths.append({
            'title': page_title,
            'path': reverse(view_name,),
        })
    elif view_name == 'products:product_detail':
        args = [kwargs.get('slug')]
        page_title = _('Product list')
        paths.append({
            'title': page_title,
            'path': reverse('products:product_list',),
        })
        page_title = _('Product detail info')
        paths.append({
            'title': page_title,
            'path': reverse(view_name, args=args),
        })
    return {'paths': paths, 'page_title': page_title}


def get_breadcrumbs(request, *args, **kwargs):
    page_data = get_page_data(request, *args, **kwargs)
    return render_to_string('parts/breadcrumbs.html', page_data)


def get_header(request):
    context = dict()
    context['menu_items'] = Menu.objects.filter(parent__isnull=True).order_by('tree_id')
    context['request'] = request
    return render_to_string('parts/header.html', context=context)


def get_banner(request):
    context = dict()
    return render_to_string('parts/banner.html', context=context)


def get_footer(request):
    context = dict()
    context['now'] = now()
    return render_to_string('parts/footer.html', context=context)


def get_default(request):
    context = dict()
    context['header'] = get_header(request)
    context['banner'] = get_banner(request)
    context['footer'] = get_footer(request)
    context['current_lang'] = get_language()
    return context
