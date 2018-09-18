from django.template.loader import render_to_string
from django.utils.timezone import now
from django.utils.translation import get_language, ugettext as _
from django.shortcuts import reverse
from django.contrib.staticfiles.templatetags.staticfiles import static

from .models import Menu, Content, YouTubeVideoAlbum, Library, SiteInformation


def get_page_data(request, *args, **kwargs):

    view_name = request.resolver_match.view_name
    kwargs = request.resolver_match.kwargs
    page_title = _('Home page')
    paths = list()
    paths.append({
        'title': page_title,
        'path': reverse('basic:home', args=[get_language(), ])
    })
    if view_name == 'basic:events':
        page_title = _('Events')
        paths.append({
            'title': page_title,
            'path': reverse(view_name, kwargs=kwargs)
        })
    elif view_name == 'basic:events_page':
        args = [get_language(), kwargs.get('slug')]
        page_title = _('Events')
        paths.append({
            'title': page_title,
            'path': reverse('basic:events', args=[get_language()])
        })
        content = Content.objects.filter(translations__slug=kwargs.get('slug'))
        page_title = content.first().title
        paths.append({
            'title': page_title,
            'path': reverse(view_name, args=args)
        })
    elif view_name == 'basic:interesting':
        args = [get_language(), kwargs.get('slug')]
        page_title = _('Interesting')
        paths.append({
            'title': page_title,
            'path': reverse('basic:interesting', args=[get_language()])
        })

    elif view_name == 'basic:events_page':
        args = [get_language(), kwargs.get('slug')]
        page_title = _('Events')
        paths.append({
            'title': page_title,
            'path': reverse('basic:events', args=[get_language()])
        })
        content = Content.objects.filter(translations__slug=kwargs.get('slug'))
        page_title = content.first().title
        paths.append({
            'title': page_title,
            'path': reverse(view_name, args=args)
        })

    elif view_name == 'basic:video_albums':
        args = [get_language(), ]
        page_title = _("Mushtariy Yuldasheva's video")
        paths.append({
            'title': page_title,
            'path': reverse('basic:video_albums', args=args)
        })

    elif view_name == 'basic:video_album_detail':
        args = [get_language(), ]
        page_title = _("Mushtariy Yuldasheva's video")
        paths.append({
            'title': page_title,
            'path': reverse('basic:video_albums', args=args)
        })
        args = [get_language(), kwargs.get('pk')]
        video = YouTubeVideoAlbum.objects.get(pk=kwargs.get('pk'))
        page_title = video.title
        paths.append({
            'title': page_title,
            'path': reverse(view_name, args=args)
        })

    elif view_name == 'basic:audio_albums':
        args = [get_language(), ]
        page_title = _("Audio materials")
        paths.append({
            'title': page_title,
            'path': reverse(view_name, args=args)
        })

    elif view_name == 'basic:audio_albums':
        args = [get_language(), ]
        page_title = _("Audio materials")
        paths.append({
            'title': page_title,
            'path': reverse(view_name, args=args)
        })

    elif view_name == 'basic:videos_interesting_albums':
        args = [get_language(), ]
        page_title = _("Video materials")
        paths.append({
            'title': page_title,
            'path': reverse(view_name, args=args)
        })

    elif view_name == 'basic:videos_cognitive_albums':
        args = [get_language(), ]
        page_title = _("Video cognitive")
        paths.append({
            'title': page_title,
            'path': reverse(view_name, args=args)
        })

    elif view_name == 'basic:library':
        args = [get_language(), ]
        page_title = _("Library")
        paths.append({
            'title': page_title,
            'path': reverse(view_name, args=args)
        })

    elif view_name == 'basic:library_books':
        args = [get_language(), ]
        page_title = _("Library")
        paths.append({
            'title': page_title,
            'path': reverse('basic:library', args=args)
        })

        args = [get_language(), kwargs.get('pk')]
        library = Library.objects.get(pk=kwargs.get('pk'))
        page_title = library.title
        paths.append({
            'title': page_title,
            'path': reverse(view_name, args=args)
        })

    elif view_name == 'basic:contact':
        page_title = _('Contact')
        paths.append({
            'title': page_title,
            'path': reverse(view_name, kwargs=kwargs)
        })
    elif view_name == 'basic:reviews':
        page_title = _('Reviews')
        paths.append({
            'title': page_title,
            'path': reverse(view_name, kwargs=kwargs)
        })
    elif view_name == 'basic:static_page':
        content = Content.objects.filter(translations__slug=kwargs.get('slug'))
        page_title = content.first().title
        paths.append({
            'title': page_title,
            'path': reverse(view_name, kwargs=kwargs)
        })

    return {'paths': paths, 'page_title': page_title}


def get_breadcrumbs(request, *args, **kwargs):
    page_data = get_page_data(request, *args, **kwargs)
    return render_to_string('parts/breadcrumbs.html', page_data)


def get_header(request):
    context = dict()
    context['menu_items'] = Menu.objects.filter(parent__isnull=True).order_by('tree_id')
    context['request'] = request
    context['site_logo'] = get_site_info(request).get('site_logo')
    return render_to_string('parts/header.html', context=context)


def get_banner(request):
    context = dict()
    return render_to_string('parts/banner.html', context=context)


def get_footer(request):
    context = dict()
    context['now'] = now()
    return render_to_string('parts/footer.html', context=context)


def get_site_info(request):
    try:
        site_info = SiteInformation.objects.first()
        site_name = site_info.site_name
        site_logo = site_info.site_logo.url
    except (SiteInformation.DoesNotExist, AttributeError):
        site_name = ' '
        site_logo = static('images/logo.webp')
    print(site_logo)
    return {
        'site_name': site_name,
        'site_logo': site_logo
    }


def get_default(request, *args, **kwargs):
    context = dict()
    context['header'] = get_header(request)
    context['banner'] = get_banner(request)
    context['footer'] = get_footer(request)
    context['current_lang'] = get_language()
    context['breadcrumbs'] = get_breadcrumbs(request=request, *args, **kwargs)
    context['page_title'] = get_page_data(request, *args, **kwargs).get('page_title')
    context['site_name'] = get_site_info(request).get('site_name')
    context['site_logo'] = get_site_info(request).get('site_logo')
    return context
