from django.contrib import admin

from mptt.admin import DraggableMPTTAdmin
from parler.admin import TranslatableAdmin, TranslatableStackedInline

from .models import (
    Menu,
    Content,
    YouTubeVideo,
    YouTubeVideoAlbum,
    Book,
    Library,
    Contact,
    Review
)


class MenuParlerAdmin(TranslatableAdmin, DraggableMPTTAdmin):

    def get_prepopulated_fields(self, request, obj=None):
        return {'slug': ('title',), }

    mptt_level_indent = 20


class ContentAdmin(TranslatableAdmin):
    list_display = ['title', 'content_type', ]
    list_filter = ['content_type', ]
    list_per_page = 20

    def get_prepopulated_fields(self, request, obj=None):
        return {'slug': ('title',), }


class YouTubeVideoAdmin(TranslatableAdmin):
    list_display = ['title', ]
    list_filter = ['created_at']


class YouTubeVideoInline(TranslatableStackedInline):
    model = YouTubeVideo
    fields = ['title', 'url']


class YouTubeVideoAlbumAdmin(TranslatableAdmin):
    list_display = ['title', ]
    list_filter = ['created_at', 'video_type', ]
    inlines = [YouTubeVideoInline, ]


class BookInline(admin.StackedInline):
    model = Book


class LibraryAdmin(admin.ModelAdmin):
    inlines = [BookInline, ]


class ContactAdmin(admin.ModelAdmin):
    list_filter = ['created_at']
    list_display = ['name', 'email', 'created_at']


admin.site.register(Menu, MenuParlerAdmin)
admin.site.register(Content, ContentAdmin)
admin.site.register(YouTubeVideo, YouTubeVideoAdmin)
admin.site.register(YouTubeVideoAlbum, YouTubeVideoAlbumAdmin)
admin.site.register(Library, LibraryAdmin)
admin.site.register(Contact, ContactAdmin)
admin.site.register(Review)
