# -*- coding: utf-8 -*-
from urllib.parse import urlparse, parse_qs

from django.db import models
from django.urls import reverse
from django.utils.translation import get_language, ugettext as _

from mptt.models import MPTTModel, TreeForeignKey
from ckeditor_uploader.fields import RichTextUploadingField
from parler.models import TranslatableModel, TranslatedFields
from parler.managers import TranslationManager


class Menu(MPTTModel, TranslatableModel):
    parent = TreeForeignKey('self', null=True, blank=True, on_delete=models.CASCADE)
    translations = TranslatedFields(
        title=models.CharField(max_length=254),
        slug=models.CharField(max_length=254)
    )
    objects = TranslationManager()

    def __str__(self):
        return self.title

    class MPTTMeta:
        level_attr = 'mptt_level'

    def get_absolute_url(self):
        return reverse('basic:static_page', args=[self.get_current_language(), self.safe_translation_getter('slug')])


class Content(TranslatableModel):
    BASIC = 'basic'
    EVENT = 'event'
    INTERESTING = 'interesting'
    TYPES = (
        (BASIC, 'Basic content'),
        (EVENT, 'Event content'),
        (INTERESTING, 'Interesting content'),
    )
    content_type = models.CharField(choices=TYPES, max_length=60, default=BASIC)
    translations = TranslatedFields(
        title=models.CharField(max_length=254),
        body=RichTextUploadingField(),
        slug=models.SlugField(null=True)
    )
    image = models.ImageField(null=True, blank=True, upload_to='contents/%Y/%m/%d/')
    created_at = models.DateTimeField(auto_now=True, editable=True)
    date = models.DateTimeField(null=True, blank=True)

    class Meta:
        verbose_name = 'Content'
        verbose_name_plural = 'Contents'

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        if self.content_type == self.EVENT:
            return reverse('basic:events_page', args=[self.get_current_language(), self.safe_translation_getter('slug')])
        elif self.content_type == self.INTERESTING:
            return reverse('basic:interesting_detail', args=[self.get_current_language(), self.safe_translation_getter('slug')])
        return reverse('basic:static_page', args=[self.get_current_language(), self.safe_translation_getter('slug')])


class YouTubeVideoAlbum(TranslatableModel):
    PERSONAL = 'personal'
    AUDIO = 'audio'
    VIDEO = 'video'
    COGNITIVE = 'cognitive'

    VIDEO_TYPES = (
        (PERSONAL, 'Personal videos'),
        (AUDIO, 'Audio materials'),
        (VIDEO, 'Video materials'),
        (COGNITIVE, 'Cognitive materials'),
    )
    translations = TranslatedFields(
        title=models.CharField(max_length=254),
        description=RichTextUploadingField(null=True, blank=True)
    )
    video_type = models.CharField(choices=VIDEO_TYPES, max_length=60, default=PERSONAL)
    created_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.safe_translation_getter('title')

    def get_absolute_url(self):
        return reverse('basic:video_album_detail', args=[self.get_current_language(), self.pk])


class YouTubeVideo(TranslatableModel):
    translations = TranslatedFields(
        title=models.CharField(max_length=254),
        url=models.CharField(help_text='https://www.youtube.com/watch?v=jsQgF1693vo', max_length=60, null=True)
    )
    link = models.CharField(help_text='https://www.youtube.com/watch?v=jsQgF1693vo', max_length=60)
    created_at = models.DateTimeField(auto_now=True)
    album = models.ForeignKey(YouTubeVideoAlbum, null=True, blank=True, on_delete=models.DO_NOTHING,
                              related_name='videos')

    def __str__(self):
        return self.safe_translation_getter('title') or 'Video'

    def get_video_id(self):
        """
        Examples:
        - http://youtu.be/SA2iWivDJiE
        - http://www.youtube.com/watch?v=_oPAwA_Udwc&feature=feedu
        - http://www.youtube.com/embed/SA2iWivDJiE
        - http://www.youtube.com/v/SA2iWivDJiE?version=3&amp;hl=en_US
        """
        query = urlparse(self.safe_translation_getter('url'))
        if query.hostname == 'youtu.be':
            return query.path[1:]
        if query.hostname in ('www.youtube.com', 'youtube.com'):
            if query.path == '/watch':
                p = parse_qs(query.query)
                return p['v'][0]
            if query.path[:7] == '/embed/':
                return query.path.split('/')[2]
            if query.path[:3] == '/v/':
                return query.path.split('/')[2]
        return None

    def get_video_image(self):
        return 'https://img.youtube.com/vi/{}/0.jpg'.format(self.get_video_id())


class Library(models.Model):
    title = models.CharField(max_length=254)
    description = models.TextField(null=True, blank=True)
    image = models.ImageField(upload_to='library/images/', null=True, blank=True)
    created_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('basic:library_books', args=[get_language(), self.pk])


class Book(models.Model):
    title = models.CharField(max_length=254)
    file = models.FileField(upload_to='library/files/',)
    library = models.ForeignKey(Library, null=True, on_delete=models.CASCADE, related_name='books')

    def __str__(self):
        return self.title


class Contact(models.Model):
    name = models.CharField(max_length=60, verbose_name=_('Name'))
    email = models.EmailField(verbose_name=_('Email'))
    topic = models.CharField(max_length=254, verbose_name=_('Topic'))
    text = models.TextField(verbose_name=_('Message'))
    created_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name


class Review(models.Model):
    author = models.CharField(max_length=254)
    comment = RichTextUploadingField(null=True, blank=True)
    file = models.FileField(null=True, blank=True)
    created_at = models.DateTimeField(auto_now=True)
    photo = models.ImageField(null=True, blank=True)
    is_top = models.BooleanField(default=False)

    def __str__(self):
        return self.author


class SiteInformation(models.Model):
    site_name = models.CharField(max_length=254, default='Саморазвитие и Самопознание')
    site_logo = models.ImageField(upload_to='site/', default='logo.webp')

    def __str__(self):
        return self.site_name
