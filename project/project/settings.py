import os

import django.conf.locale

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

SECRET_KEY = 'c-$&ez@ko@0x_1mmz9e@@-lxs(zy9q9wt%ev^&8kjkws=a(wx1'

DEBUG = False

ALLOWED_HOSTS = ['*']


THIRD_PARTY_APPS = [
    'mptt',
    'ckeditor',
    'ckeditor_uploader',
    'parler',
    'widget_tweaks'
]

CUSTOM_APPS = [
    'basic'
]

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django.forms',
] + THIRD_PARTY_APPS + CUSTOM_APPS

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'basic.middleware.CustomMiddleware',

]

ROOT_URLCONF = 'project.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates'), ],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'basic.context.get_default',
            ],
        },
    },
]

WSGI_APPLICATION = 'project.wsgi.application'


DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'smp',
        'USER': 'smp',
        'PASSWORD': 'smp',
        'HOST': 'localhost',
        'PORT': '5432'
    }
}


AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


LANGUAGE_CODE = 'ru'

TIME_ZONE = 'Asia/Tashkent'

USE_I18N = True

USE_L10N = True

USE_TZ = True

LANGUAGES = (
    ('ru', 'Ru'),
    ('uz', 'Uz'),
)

EXTRA_LANG_INFO = {
    'uz': {
        'bidi': False,
        'code': 'uz',
        'name': 'Uzbek',
        'name_local': u"O'zbek",
    },
}

django.conf.locale.LANG_INFO.update(EXTRA_LANG_INFO)

LOCALE_PATHS = (
    os.path.join(BASE_DIR, 'locale',),
)

PARLER_LANGUAGES = {
    None: (
        {'code': 'ru',},
        {'code': 'uz',},
    ),
    'default': {
        'fallback': 'uz',             # defaults to PARLER_DEFAULT_LANGUAGE_CODE
        'hide_untranslated': False,   # the default; let .active_translations() return fallbacks too.
    }
}


STATIC_URL = '/assets/'

STATIC_ROOT = os.path.join(BASE_DIR, 'assets')

STATICFILES_DIRS = [
    os.path.join(BASE_DIR, "static"),
]

CKEDITOR_UPLOAD_PATH = "ckeditor/"

CKEDITOR_JQUERY_URL = 'https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js'

CKEDITOR_IMAGE_BACKEND = "pillow"

CKEDITOR_CONFIGS = {
    'default': {
        'toolbar': None,
    },
    'awesome_ckeditor': {
        'toolbar': 'Full',
    },
}

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')


MPTT_ADMIN_LEVEL_INDENT = 20
