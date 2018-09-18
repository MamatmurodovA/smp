from django.views import generic
from django.shortcuts import reverse
from django.utils.translation import get_language, ugettext as _
from django.contrib.messages.views import messages

from parler.views import TranslatableSlugMixin, LanguageChoiceMixin as TranslatableSingleObjectMixin


from .models import (
    Content,
    YouTubeVideoAlbum,
    YouTubeVideo,
    Library,
    Book,
    Contact,
    Review
)


class HomeView(generic.TemplateView):
    template_name = 'pages/home.html'


class EventsView(generic.ListView):
    template_name = 'pages/events.html'
    paginate_by = 12

    def get_queryset(self):
        return Content.objects.filter(content_type=Content.EVENT)


class EventsPageView(TranslatableSlugMixin, generic.DetailView):
    template_name = 'pages/events_page.html'
    model = Content

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['items'] = Content.objects.filter(content_type=Content.EVENT)[0:10]
        return context


class StaticPageView(TranslatableSlugMixin, generic.DetailView):
    template_name = 'pages/static_page.html'
    model = Content


class YouTubeVideoAlbumsView(generic.ListView):
    model = YouTubeVideoAlbum
    template_name = 'pages/videos.html'

    def get_queryset(self):
        return self.model.objects.filter(video_type=YouTubeVideoAlbum.PERSONAL)


class YouTubeVideoAlbumDetailView(TranslatableSingleObjectMixin, generic.DetailView):
    template_name = 'pages/video_detail.html'
    model = YouTubeVideoAlbum


class YouTubeAudioAlbumDetailView(TranslatableSingleObjectMixin, generic.DetailView):
    template_name = 'pages/video_detail.html'
    model = YouTubeVideoAlbum


class InterestingView(generic.ListView):
    template_name = 'pages/interesting.html'

    def get_queryset(self):
        return Content.objects.filter(content_type=Content.INTERESTING)


class InterestingDetailView(StaticPageView):
    pass


class LibraryView(generic.ListView):
    model = Library
    template_name = 'pages/library.html'


class LibraryBooksView(generic.DetailView):
    model = Library
    template_name = 'pages/library_books.html'


class ContactView(generic.CreateView):
    model = Contact
    template_name = 'pages/contact.html'
    fields = '__all__'

    def get_success_url(self):
        return reverse('basic:contact', args=[get_language()])

    def form_valid(self, form):
        msg = _('Thanks, Your message successfully sent. Our staff will contact to you at soon.')
        messages.add_message(request=self.request, level=messages.SUCCESS, message=msg)
        return super().form_valid(form)


class ReviewListView(generic.ListView):
    model = Review
    template_name = 'pages/review_list.html'
    paginate_by = 10
    ordering = ['-is_top', ]


class YouTubeAudioAlbumsView(YouTubeVideoAlbumsView):

    def get_queryset(self):
        return self.model.objects.filter(video_type=self.model.AUDIO)


class YouTubeVideoInterestingAlbumsView(YouTubeVideoAlbumsView):

    def get_queryset(self):
        return self.model.objects.filter(video_type=self.model.VIDEO)


class YouTubeVideoCognitiveAlbumsView(YouTubeVideoAlbumsView):

    def get_queryset(self):
        return self.model.objects.filter(video_type=self.model.COGNITIVE)
