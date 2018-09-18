from django.urls import path

from .views import (
    HomeView,
    StaticPageView,
    EventsView,
    EventsPageView,
    YouTubeVideoAlbumsView,
    YouTubeVideoAlbumDetailView,
    InterestingView,
    InterestingDetailView,
    LibraryView,
    LibraryBooksView,
    ContactView,
    ReviewListView,
    YouTubeAudioAlbumsView,
    YouTubeVideoInterestingAlbumsView,
    YouTubeVideoCognitiveAlbumsView
)

app_name = 'basic'
urlpatterns = [
    path('', HomeView.as_view(), name='home'),
    path('events/', EventsView.as_view(), name='events'),
    path('events/<slug:slug>/', EventsPageView.as_view(), name='events_page'),
    path('interesting/', InterestingView.as_view(), name='interesting'),
    path('interesting/<slug:slug>/', InterestingDetailView.as_view(), name='interesting_detail'),
    path('videos/', YouTubeVideoAlbumsView.as_view(), name='video_albums'),
    path('videos/<int:pk>/', YouTubeVideoAlbumDetailView.as_view(), name='video_album_detail'),
    path('audios/', YouTubeAudioAlbumsView.as_view(), name='audio_albums'),
    path('videos-interesting/', YouTubeVideoInterestingAlbumsView.as_view(), name='videos_interesting_albums'),
    path('videos-cognitive/', YouTubeVideoCognitiveAlbumsView.as_view(), name='videos_cognitive_albums'),
    path('library/', LibraryView.as_view(), name='library'),
    path('library/<int:pk>/', LibraryBooksView.as_view(), name='library_books'),
    path('contact/', ContactView.as_view(), name='contact'),
    path('reviews/', ReviewListView.as_view(), name='reviews'),
    path('<slug:slug>/', StaticPageView.as_view(), name='static_page')
]
