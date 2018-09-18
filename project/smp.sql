--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.9
-- Dumped by pg_dump version 9.6.9

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO smp;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO smp;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO smp;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO smp;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO smp;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO smp;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO smp;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO smp;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO smp;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO smp;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO smp;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO smp;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: basic_youtubevideoalbum; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.basic_youtubevideoalbum (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    video_type character varying(60) NOT NULL
);


ALTER TABLE public.basic_youtubevideoalbum OWNER TO smp;

--
-- Name: basic_album_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.basic_album_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basic_album_id_seq OWNER TO smp;

--
-- Name: basic_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.basic_album_id_seq OWNED BY public.basic_youtubevideoalbum.id;


--
-- Name: basic_youtubevideoalbum_translation; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.basic_youtubevideoalbum_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    title character varying(254) NOT NULL,
    description text,
    master_id integer
);


ALTER TABLE public.basic_youtubevideoalbum_translation OWNER TO smp;

--
-- Name: basic_album_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.basic_album_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basic_album_translation_id_seq OWNER TO smp;

--
-- Name: basic_album_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.basic_album_translation_id_seq OWNED BY public.basic_youtubevideoalbum_translation.id;


--
-- Name: basic_book; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.basic_book (
    id integer NOT NULL,
    title character varying(254) NOT NULL,
    file character varying(100) NOT NULL,
    library_id integer
);


ALTER TABLE public.basic_book OWNER TO smp;

--
-- Name: basic_book_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.basic_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basic_book_id_seq OWNER TO smp;

--
-- Name: basic_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.basic_book_id_seq OWNED BY public.basic_book.id;


--
-- Name: basic_contact; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.basic_contact (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    email character varying(254) NOT NULL,
    topic character varying(254) NOT NULL,
    text text NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.basic_contact OWNER TO smp;

--
-- Name: basic_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.basic_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basic_contact_id_seq OWNER TO smp;

--
-- Name: basic_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.basic_contact_id_seq OWNED BY public.basic_contact.id;


--
-- Name: basic_content; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.basic_content (
    created_at timestamp with time zone NOT NULL,
    id integer NOT NULL,
    content_type character varying(60) NOT NULL,
    date timestamp with time zone,
    image character varying(100)
);


ALTER TABLE public.basic_content OWNER TO smp;

--
-- Name: basic_content_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.basic_content_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basic_content_id_seq OWNER TO smp;

--
-- Name: basic_content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.basic_content_id_seq OWNED BY public.basic_content.id;


--
-- Name: basic_content_translation; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.basic_content_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    title character varying(254) NOT NULL,
    body text NOT NULL,
    master_id integer,
    slug character varying(50)
);


ALTER TABLE public.basic_content_translation OWNER TO smp;

--
-- Name: basic_content_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.basic_content_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basic_content_translation_id_seq OWNER TO smp;

--
-- Name: basic_content_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.basic_content_translation_id_seq OWNED BY public.basic_content_translation.id;


--
-- Name: basic_library; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.basic_library (
    id integer NOT NULL,
    title character varying(254) NOT NULL,
    description text,
    image character varying(100),
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.basic_library OWNER TO smp;

--
-- Name: basic_library_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.basic_library_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basic_library_id_seq OWNER TO smp;

--
-- Name: basic_library_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.basic_library_id_seq OWNED BY public.basic_library.id;


--
-- Name: basic_menu; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.basic_menu (
    id integer NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    mptt_level integer NOT NULL,
    parent_id integer,
    CONSTRAINT basic_menu_lft_check CHECK ((lft >= 0)),
    CONSTRAINT basic_menu_mptt_level_569d0ae6_check CHECK ((mptt_level >= 0)),
    CONSTRAINT basic_menu_rght_check CHECK ((rght >= 0)),
    CONSTRAINT basic_menu_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.basic_menu OWNER TO smp;

--
-- Name: basic_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.basic_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basic_menu_id_seq OWNER TO smp;

--
-- Name: basic_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.basic_menu_id_seq OWNED BY public.basic_menu.id;


--
-- Name: basic_menu_translation; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.basic_menu_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    title character varying(254) NOT NULL,
    slug character varying(254) NOT NULL,
    master_id integer
);


ALTER TABLE public.basic_menu_translation OWNER TO smp;

--
-- Name: basic_menu_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.basic_menu_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basic_menu_translation_id_seq OWNER TO smp;

--
-- Name: basic_menu_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.basic_menu_translation_id_seq OWNED BY public.basic_menu_translation.id;


--
-- Name: basic_review; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.basic_review (
    id integer NOT NULL,
    author character varying(254) NOT NULL,
    comment text,
    file character varying(100),
    created_at timestamp with time zone NOT NULL,
    photo character varying(100),
    is_top boolean NOT NULL
);


ALTER TABLE public.basic_review OWNER TO smp;

--
-- Name: basic_review_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.basic_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basic_review_id_seq OWNER TO smp;

--
-- Name: basic_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.basic_review_id_seq OWNED BY public.basic_review.id;


--
-- Name: basic_youtubevideo; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.basic_youtubevideo (
    id integer NOT NULL,
    link character varying(60) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    album_id integer
);


ALTER TABLE public.basic_youtubevideo OWNER TO smp;

--
-- Name: basic_youtubevideo_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.basic_youtubevideo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basic_youtubevideo_id_seq OWNER TO smp;

--
-- Name: basic_youtubevideo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.basic_youtubevideo_id_seq OWNED BY public.basic_youtubevideo.id;


--
-- Name: basic_youtubevideo_translation; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.basic_youtubevideo_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    title character varying(254) NOT NULL,
    master_id integer,
    url character varying(60)
);


ALTER TABLE public.basic_youtubevideo_translation OWNER TO smp;

--
-- Name: basic_youtubevideo_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.basic_youtubevideo_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basic_youtubevideo_translation_id_seq OWNER TO smp;

--
-- Name: basic_youtubevideo_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.basic_youtubevideo_translation_id_seq OWNED BY public.basic_youtubevideo_translation.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO smp;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO smp;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO smp;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO smp;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO smp;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: smp
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO smp;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smp
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: smp
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO smp;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: basic_book id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_book ALTER COLUMN id SET DEFAULT nextval('public.basic_book_id_seq'::regclass);


--
-- Name: basic_contact id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_contact ALTER COLUMN id SET DEFAULT nextval('public.basic_contact_id_seq'::regclass);


--
-- Name: basic_content id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_content ALTER COLUMN id SET DEFAULT nextval('public.basic_content_id_seq'::regclass);


--
-- Name: basic_content_translation id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_content_translation ALTER COLUMN id SET DEFAULT nextval('public.basic_content_translation_id_seq'::regclass);


--
-- Name: basic_library id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_library ALTER COLUMN id SET DEFAULT nextval('public.basic_library_id_seq'::regclass);


--
-- Name: basic_menu id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_menu ALTER COLUMN id SET DEFAULT nextval('public.basic_menu_id_seq'::regclass);


--
-- Name: basic_menu_translation id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_menu_translation ALTER COLUMN id SET DEFAULT nextval('public.basic_menu_translation_id_seq'::regclass);


--
-- Name: basic_review id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_review ALTER COLUMN id SET DEFAULT nextval('public.basic_review_id_seq'::regclass);


--
-- Name: basic_youtubevideo id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_youtubevideo ALTER COLUMN id SET DEFAULT nextval('public.basic_youtubevideo_id_seq'::regclass);


--
-- Name: basic_youtubevideo_translation id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_youtubevideo_translation ALTER COLUMN id SET DEFAULT nextval('public.basic_youtubevideo_translation_id_seq'::regclass);


--
-- Name: basic_youtubevideoalbum id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_youtubevideoalbum ALTER COLUMN id SET DEFAULT nextval('public.basic_album_id_seq'::regclass);


--
-- Name: basic_youtubevideoalbum_translation id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_youtubevideoalbum_translation ALTER COLUMN id SET DEFAULT nextval('public.basic_album_translation_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add menu	7	add_menu
26	Can change menu	7	change_menu
27	Can delete menu	7	delete_menu
28	Can view menu	7	view_menu
29	Can add content	8	add_content
30	Can change content	8	change_content
31	Can delete content	8	delete_content
32	Can view content	8	view_content
33	Can add category	9	add_category
34	Can change category	9	change_category
35	Can delete category	9	delete_category
36	Can view category	9	view_category
37	Can add album	12	add_album
38	Can change album	12	change_album
39	Can delete album	12	delete_album
40	Can view album	12	view_album
41	Can add you tube video	14	add_youtubevideo
42	Can change you tube video	14	change_youtubevideo
43	Can delete you tube video	14	delete_youtubevideo
44	Can view you tube video	14	view_youtubevideo
45	Can add you tube video album	12	add_youtubevideoalbum
46	Can change you tube video album	12	change_youtubevideoalbum
47	Can delete you tube video album	12	delete_youtubevideoalbum
48	Can view you tube video album	12	view_youtubevideoalbum
49	Can add library	16	add_library
50	Can change library	16	change_library
51	Can delete library	16	delete_library
52	Can view library	16	view_library
53	Can add book	17	add_book
54	Can change book	17	change_book
55	Can delete book	17	delete_book
56	Can view book	17	view_book
57	Can add contact	18	add_contact
58	Can change contact	18	change_contact
59	Can delete contact	18	delete_contact
60	Can view contact	18	view_contact
61	Can add review	19	add_review
62	Can change review	19	change_review
63	Can delete review	19	delete_review
64	Can view review	19	view_review
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$ahtkz9kEKRBF$VIWqV5mG+GU4cr3wfeVGBt85kVENnIyi1EQTD1sQxxc=	2018-09-16 20:37:12.457496+05	t	admin			azam.mamatmurodov@gmail.com	t	t	2018-09-14 01:48:26.308321+05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: basic_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.basic_album_id_seq', 21, true);


--
-- Name: basic_album_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.basic_album_translation_id_seq', 22, true);


--
-- Data for Name: basic_book; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.basic_book (id, title, file, library_id) FROM stdin;
1	Путы материнской любви	library/files/c7735e_afdf526fb54f404a8d3d19260098f98c.pdf	1
2	Живые мысли	library/files/c7735e_c2183f8d92f5407e8035807d981451c1.pdf	1
3	Пространство Любви	library/files/c7735e_3358c217dd4e4660b87c053513aa7f4d.pdf	1
4	Материнская Любовь	library/files/c7735e_b27eb53ec9ac4708930deb4f6bd6fc67_1.pdf	1
5	Брак умер да здравствует семья	library/files/c7735e_f6e9f2b4e3084018b00786736d9d12c5_1.pdf	1
6	Некрасов А. Эгрегоры	library/files/c7735e_f9f4ce33e6634356b9c896533fdc79a9_1.pdf	1
7	Некрасов А. Счастье Жить. (Кто счастлив, тот прав!)	library/files/c7735e_f48f39a918ff431cb5bd3c5bcf8437da.pdf	1
8	Некрасов А. Учимся любить	library/files/c7735e_4e061064718e4815b3b56b7b81d5fdcc.pdf	1
9	Некрасов А. 1000 и один способ  быть самим собой	library/files/c7735e_dffe22b3b4064ec594bdee377a356731.pdf	1
10	Некрасов А. Любовный многоугольник	library/files/c7735e_1a26ccf6e4434efbb0021779c614ddb2.pdf	1
11	Некрасов А. Род. Семья. Человек	library/files/c7735e_072682523c44475aa656eea42539032c.pdf	1
12	Некрасов А. Поиск половинок	library/files/c7735e_a4df3e10ecf5436088fde687f9519835.pdf	1
18	Анастасия (Звенящие кедры России - 1)	library/files/c7735e_dbd98d47a21b46488310ac2726199e33_1_XtweuMh.pdf	5
19	Звенящие кедры России (Звенящие кедры России - 2)	library/files/1537121736/1537121736/avs.doc	5
20	Пространство Любви (Звенящие кедры России - 3)	library/files/1537121779/1537121779/c7735e_b7e4eb365ecb417bbbe2e45b458a5390.pdf	5
21	творение (Звенящие кедры России - 4)	library/files/1537121779/1537121779/c7735e_ec77d36edf5a4d45a400f78845aaa10e.pdf	5
22	Кто же мы (Звенящие кедры России - 5)	library/files/1537121828/1537121828/kto_mi_5.doc	5
23	Родовая книга (Звенящие кедры России - 6)	library/files/1537121855/1537121855/kto_mi_6.doc	5
24	Энергия жизни (Звенящие кедры России - 7)	library/files/1537121874/1537121874/c7735e_a8facf3c074346ad8e7a213900322175.pdf	5
25	Возлюби болезнь свою	library/files/Vozlyubi_bolezn_svoyu.docx	6
26	Сила Намерения	library/files/Sila_Namereniya.doc	6
27	Таинственная сила слова	library/files/Valerii_Senelnikov_-_Tainstvennaya_sila_slova.0A.doc	6
28	Формула Жизни. Как обрести Личную Силу	library/files/Formula_Jizni._Kak_obresti_Lichnuyu_Silu0A.doc	6
29	Путь к богатству или где зарыты сокровища	library/files/Put_k_bogatstvu_ili_gde_zart_sokrovi0A.doc	6
30	Прививка от стресса или психоэнергетическое айкидо	library/files/Privivka_ot_stressa_ili_psixoenergeticheskoe_aikido0A.doc	6
31	Практический курс доктора Синельникова	library/files/Prakticheskii_kurs_doktora_Sinelnikova0A.doc	6
32	Учебник Хозяина жизни.	library/files/Uchebnik_Xozyaina_jizni.doc	6
33	Большая инциклопедиа сущности	library/files/c7735e_204f9e82d00b4776883091cbe6ab46fa.pdf	7
34	Деньги и изобилие	library/files/c7735e_0192e92cfe24488e9385f0941c0e633c.pdf	7
35	Кто ты	library/files/c7735e_8254455387504cfea94a61a0a7c9a19e.pdf	7
36	Любовь Любовь Любовь	library/files/c7735e_ef2b5f13a7d04f1381bfbd5041e784ff.pdf	7
37	Ответвенность Обязательство чувство вины	library/files/c7735e_85de3b6fd7344c65ae109ceb73546a00.pdf	7
38	Слушай свое тело снова и снова	library/files/c7735e_22327b051700462184fc99e27b7073e1.pdf	7
39	Страхи и верование	library/files/c7735e_b91d7ab5fde34418abc915d78414aa95.pdf	7
40	Твое тело говорит люби себя	library/files/c7735e_9c38bac4d92749b69e7f0f3ad3d5b9e5.pdf	7
41	Чувственность и Сексуальность	library/files/c7735e_8933087808434284a9bf2a5482dfe699.pdf	7
42	Интимные отношения	library/files/c7735e_d6feae74347d4a058262f234723fb019.pdf	7
\.


--
-- Name: basic_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.basic_book_id_seq', 42, true);


--
-- Data for Name: basic_contact; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.basic_contact (id, name, email, topic, text, created_at) FROM stdin;
1	A'zam	azam.mamatmurodov@gmail.com	Test	Test topic	2018-09-17 23:09:49.41691+05
2	asasas	asas@asd.com	12asas	zsasas	2018-09-17 23:12:53.386928+05
3	asas	asas@vc.com	12asa	asasasas	2018-09-17 23:13:26.706764+05
4	asmnalsnmla	asmnalsnmla@asmnalsnmla.com	asas	Sasas	2018-09-17 23:14:30.555009+05
5	A'zam	azam@gmail.com	test	tesrter	2018-09-17 23:17:29.011806+05
\.


--
-- Name: basic_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.basic_contact_id_seq', 5, true);


--
-- Data for Name: basic_content; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.basic_content (created_at, id, content_type, date, image) FROM stdin;
2018-09-15 12:40:59.166678+05	2	basic	\N	\N
2018-09-15 12:46:15.020277+05	3	basic	\N	\N
2018-09-15 12:48:47.908524+05	4	basic	\N	\N
2018-09-15 13:05:17.295194+05	5	basic	\N	\N
2018-09-15 14:28:42.664357+05	6	basic	\N	\N
2018-09-15 15:00:24.245319+05	7	event	\N	\N
2018-09-15 15:01:00.421104+05	8	event	\N	\N
2018-09-15 15:01:34.05315+05	9	event	\N	\N
2018-09-15 15:02:10.368913+05	10	event	\N	\N
2018-09-15 15:02:38.482516+05	11	event	\N	\N
2018-09-15 15:03:08.782891+05	12	event	\N	\N
2018-09-15 15:03:32.91832+05	13	event	\N	\N
2018-09-15 15:04:05.292781+05	14	event	\N	\N
2018-09-15 15:04:40.180255+05	15	event	\N	\N
2018-09-15 15:05:12.65682+05	16	event	\N	\N
2018-09-15 15:05:41.946438+05	17	basic	\N	\N
2018-09-15 15:06:03.071536+05	18	event	\N	\N
2018-09-15 15:06:41.123813+05	19	event	\N	\N
2018-09-15 15:07:10.144178+05	20	event	\N	\N
2018-09-15 15:07:32.604146+05	21	event	\N	\N
2018-09-15 15:07:55.49579+05	22	event	\N	\N
2018-09-15 15:08:24.689893+05	23	event	\N	\N
2018-09-15 15:08:51.705879+05	24	event	\N	\N
2018-09-15 15:09:18.002016+05	25	event	\N	\N
2018-09-15 15:09:52.226662+05	26	event	\N	\N
2018-09-15 15:10:15.816235+05	27	event	\N	\N
2018-09-15 15:10:34.614011+05	28	event	\N	\N
2018-09-15 15:10:51.309204+05	29	event	\N	\N
2018-09-15 15:11:33.322782+05	30	event	\N	\N
2018-09-15 15:12:04.475576+05	31	event	\N	\N
2018-09-15 15:12:29.529183+05	32	event	\N	\N
2018-09-15 15:12:48.397872+05	33	event	\N	\N
2018-09-15 15:13:13.035795+05	34	event	\N	\N
2018-09-15 15:13:43.225767+05	35	event	\N	\N
2018-09-15 15:14:01.702784+05	36	event	\N	\N
2018-09-15 15:14:19.831652+05	37	event	\N	\N
2018-09-15 15:14:46.5428+05	38	event	\N	\N
2018-09-15 15:15:09.10442+05	39	event	\N	\N
2018-09-15 15:15:30.777399+05	40	event	\N	\N
2018-09-15 15:15:55.322077+05	41	event	\N	\N
2018-09-15 15:16:12.575962+05	42	event	\N	\N
2018-09-15 15:16:32.453869+05	43	event	\N	\N
2018-09-15 15:18:09.459003+05	44	event	\N	\N
2018-09-15 15:18:38.648945+05	45	event	\N	\N
2018-09-15 15:18:58.445387+05	46	event	\N	\N
2018-09-15 15:19:17.847968+05	47	event	\N	\N
2018-09-15 15:19:42.905848+05	48	event	\N	\N
2018-09-15 15:20:06.411828+05	49	event	\N	\N
2018-09-15 15:20:28.733694+05	50	event	\N	\N
2018-09-15 15:20:49.055708+05	51	event	\N	\N
2018-09-15 15:23:01.431332+05	52	event	\N	\N
2018-09-15 15:24:37.30578+05	53	event	\N	\N
2018-09-15 16:23:02.394985+05	1	basic	\N	\N
2018-09-16 21:34:04.01234+05	54	interesting	2018-09-16 21:31:55+05	contents/2018/09/16/c7735e_8913ace8003a465da20c5ba90df5e7bf.webp
2018-09-16 21:35:06.816759+05	55	interesting	2018-09-16 21:34:34+05	contents/2018/09/16/c7735e_ddb0bc3b18e1425685dfc30c59e7c9ca.webp
2018-09-16 21:36:40.236134+05	56	interesting	2018-09-16 21:35:26+05	contents/2018/09/16/c7735e_36b4f8c74aee47498e1a619dbf6fe486_mv2.webp
2018-09-16 22:31:32.193278+05	57	basic	2018-09-16 22:07:18+05	
2018-09-18 08:53:49.781197+05	58	basic	2018-09-18 08:33:35+05	
2018-09-18 08:58:14.378009+05	59	basic	\N	
\.


--
-- Name: basic_content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.basic_content_id_seq', 59, true);


--
-- Data for Name: basic_content_translation; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.basic_content_translation (id, language_code, title, body, master_id, slug) FROM stdin;
2	ru	Оснаватели	<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>	2	osnavateli
3	ru	О методе обучения	<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>	3	o-metode-obucheniya
4	ru	Индивидуальные консультации	<h6><span style="font-size:14px">Проконсультироваться по поводу получения и выбора консультации можно, написав письмо на электронный адрес&nbsp;</span><object height="0"><span style="font-size:14px"><a href="mailto:flagman8383@mail.ru">flagman8383@mail.ru</a></span></object><span style="font-size:14px">&nbsp;или позвонив по телефону +998 91 776 0202</span></h6>\r\n\r\n<h6><span style="font-size:14px">Мы помогаем вам разобраться в себе, в ситуации, определиться в своих желаниях, предпочтениях, найти себя. Мы стремимся стать для вас понимающим, чутким и профессиональным собеседником, который помогает вам найти ресурсы для достижения желаемого. Не всегда возможна или удобна очная работа с психологом. В этом случае незаменимо психологическое&nbsp; консультирование через интернет.</span></h6>\r\n\r\n<h6><span style="font-size:14px">Преимущества психологической интернет консультации:</span></h6>\r\n\r\n<ul>\r\n\t<li>\r\n\t<h6><span style="font-size:14px">Конфиденциальность общения:&nbsp;вы можете быть уверены в том, что никто не узнает о наших разговорах.</span></h6>\r\n\t</li>\r\n\t<li>\r\n\t<h6><span style="font-size:14px">Экономия времени и денег:&nbsp;вам не придётся тратить время на дорогу. Вы сможете пройти консультацию у себя дома, а не простаивать в &laquo;пробках&raquo;.</span></h6>\r\n\t</li>\r\n\t<li>\r\n\t<h6><span style="font-size:14px">Удобство коммуникации:&nbsp;вы сами выбираете какой способ общения для вас предпочтителен.</span></h6>\r\n\t</li>\r\n\t<li>\r\n\t<h6><span style="font-size:14px">Снятие &laquo;внутренних барьеров&raquo;:&nbsp;иногда бывает, что лично к психологу обратиться затруднительно по разным обстоятельствам, но обратиться в режиме онлайн всегда проще.</span></h6>\r\n\t</li>\r\n</ul>\r\n\r\n<h6><span style="font-size:14px">Индивидуальная консультация предоставляемая через интернет, то есть по программе скайп:</span></h6>\r\n\r\n<h6><span style="font-size:14px">Длительность: от 1-2 часа</span></h6>\r\n\r\n<h6><span style="font-size:14px">Стоимость:</span></h6>\r\n\r\n<h6><span style="font-size:14px">Индивидуальная консультация предоставляемая в оффисе:</span></h6>\r\n\r\n<h6><span style="font-size:14px">Длительность: от 1-2 часа</span></h6>\r\n\r\n<h6><span style="font-size:14px">Стоимость:</span></h6>	4	individualnaya-konsultaciya
5	ru	Правила и ограничения Ретрита	<p style="text-align:center"><span style="font-size:18px">Внимательно изучите принятые Ограничения.</span></p>\r\n\r\n<p style="text-align:justify">На время Ретрита запрещаются:</p>\r\n\r\n<p style="text-align:justify">1. Все виды общения с другими участниками и посторонними людьми &ndash; речь, жесты, мимика, объятия, касания, мысли, написание записок и т.д.</p>\r\n\r\n<p style="text-align:justify">2. Пристальное разглядывание других участников.</p>\r\n\r\n<p style="text-align:justify">3. Хождения в гости к другим участникам.</p>\r\n\r\n<p style="text-align:justify">4. Утешение участников, которые испытывают яркие переживания негативного характера.&nbsp;</p>\r\n\r\n<p style="text-align:justify">5. Употребление пищи и напитков кроме тех, которые выдаются в столовой.</p>\r\n\r\n<p style="text-align:justify">6. Употребление пищи вне времени, определенным расписанием Ретрита.</p>\r\n\r\n<p style="text-align:justify">7. Вынос еды из столовой.</p>\r\n\r\n<p style="text-align:justify">8. Курение &nbsp;сигарет.</p>\r\n\r\n<p style="text-align:justify">9. Написание текстов (ведение дневников, практика с использованием письма), рисование, сочинение музыки, вязание, вышивание и т.д.</p>\r\n\r\n<p style="text-align:justify">10. Использование всех электронных устройств (кроме часов): компьютеры, навигаторы, устройства связи, устройства фото и видео фиксации, игровые и все прочие устройства.</p>\r\n\r\n<p style="text-align:justify">11. Использование будильников.</p>\r\n\r\n<p style="text-align:justify">12. Чтение любого текста. Исключение &ndash; чтение расписания и правил Ретрит-молчания.</p>\r\n\r\n<p style="text-align:justify">13. Самостоятельные занятия спортом и все виды физической нагрузки: бег, подтягивания, отжимания, фитнес, йога, гимнастика, спортивная ходьба и т.д.</p>\r\n\r\n<p style="text-align:justify">14. Применение сторонних практик: йога, молитва, ци-гун, ребефинг, введение себя в транс, ныряние в проруби, баня, холодный душ, обливания и пр.</p>\r\n\r\n<p style="text-align:justify">15. Использование других видов и техник практик, отличных от тех, что дает Мастер. Не следует использовать на Ретрите свои методические наработки в области освоения практик &ndash; этим вы будете мешать и себе, и другим заниматься по нашей программе.</p>\r\n\r\n<p style="text-align:justify">16. Использование косметики (мэйкап), парфюма (духи, одеколон), лаков (для волос или для ногтей), жидкостей для снятия лака, спреев и аэрозолей для укладки волос (разрешен мусс для волос).</p>\r\n\r\n<p style="text-align:justify">17. Использование предметов гигиены и ухода, если они обладают сильным запахом. Например, сильно пахнущие кремы (кроме необходимых для медицинских целей), тоники для лица, дезодоранты и пр. Позаботьтесь о приобретении предметов гигиены со слабым запахом.</p>\r\n\r\n<p style="text-align:justify">18. Исполнение профессиональных и родительских обязанностей.</p>\r\n\r\n<p style="text-align:center"><span style="font-size:18px">Все эти Ограничения &ndash; ВАЖНЫ. И у нас действительно принято их соблюдать.</span></p>\r\n\r\n<p style="text-align:justify">Например, в условиях Ретрита сильно пахнущие вещества могут спровоцировать приступ психического заболевания даже у здоровых людей.</p>\r\n\r\n<p style="text-align:justify">Прислушайтесь к себе &ndash; вы должны принять Ограничения и согласиться внутри себя с выполнением каждого пункта уже на этапе ознакомления. Поработайте над этим вопросом отдельно, внимательно и без суеты.</p>\r\n\r\n<p style="text-align:justify">Существенным фактором успешного освоения курса является ваше внутреннее уважение к Ретриту, его участникам и лично к Ведущему. Сама суть практики передается не через упражнения и техники, а через взаимное уважение и приятие &ndash; именно это является ключом к успеху.</p>\r\n\r\n<p style="text-align:justify">Правила:</p>\r\n\r\n<p style="text-align:justify">1. Требуется благоговейное уважение к Правилам Ретрита &ndash; следует неукоснительно соблюдать Ограничения, распорядок, режим питания, упражнения.&nbsp;</p>\r\n\r\n<p style="text-align:justify">2. Прерывать Ретрит добровольно можно только по согласованию с Администратором.</p>\r\n\r\n<p style="text-align:justify">3. Если по медицинским показаниям вам непозволительно выполнять какие-либо пункты Правил или Ограничений (требуется особая диета, регулярный прием медикаментов, вредны ранние подъемы и т.д.), то сообщите об этом Администратору, мы постараемся найти способ пойти вам навстречу.</p>\r\n\r\n<p style="text-align:justify">4. В день заезда вечером проводится инструктаж. Поэтому следует приехать на базу до 19.30.</p>\r\n\r\n<p style="text-align:justify">5. С собой следует взять подстилку или коврик для практик на полу &nbsp;(если имеется, то &nbsp;коврик для йоги), а также покрывало, плед или шаль (теплую накидку). Иногда в практиках телу становится неожиданно холодно или жарко, требуется его чем- то накрыть или наоборот освободить, не теряя при этом концентрации внимания.</p>\r\n\r\n<p style="text-align:justify">6. Необходимо будет потреблять чистую сырую воду на уровне полутора литров в сутки или более. Воду можно пить даже во время практик. С нашей стороны мы обеспечим воду, но вам понадобится индивидуальная емкость (бутылочка).</p>\r\n\r\n<p style="text-align:justify">7.&nbsp; В случае если у вас больные ноги (травмы коленей), можно будет устроиться на обычных стульях в последних рядах по согласованию с Администратором.</p>\r\n\r\n<p style="text-align:justify">8. Если во время Ретрита у вас появятся безотлагательные просьбы или вам покажется, что вашему здоровью что-то угрожает, обратитесь к Администратору (с запиской или устно шепотом). Не следует обращаться с вопросами (письменно, устно, жестами, мимикой) к другим участникам Ретрита.</p>\r\n\r\n<p style="text-align:justify">9. Когда вы чувствуете, что психика не справляется, следует самостоятельно снизить нагрузку &ndash; в зале для практик пересесть в дальние ряды, увеличить потребление сырой воды, стараться использовать свободное время для прогулок на свежем воздухе, в крайнем случае можно принять холодный душ (если другие меры не будут эффективны).</p>\r\n\r\n<p style="text-align:justify">10. В случае тошноты или предобморочного состояния во время практики следует выйти из зала для практик до стабилизации самочувствия, потом можно вернуться и сесть в дальних рядах. На следующей практике также будет лучше пересесть в дальние ряды.</p>\r\n\r\n<p style="text-align:justify">11. Перемещаться на территории Ретрита лучше с опущенными вниз глазами, чтобы случайно не встретиться взглядом с другими участниками. Такое поведение соответствует этике Ретрита. Вам может казаться, что это невежливо с точки зрения социального воспитания, но социальные шаблоны лучше оставить за дверьми Ретрита.</p>\r\n\r\n<p style="text-align:justify">12. В своих действиях необходимо заботиться о сохранении состояния уединения других участников, уважать их личное пространство и их переживания, какими бы они ни были с вашей точки зрения.<br />\r\n&nbsp;</p>\r\n\r\n<p style="text-align:justify">Питание во время Ретрита &nbsp;сдержанное, по вегетарианской диете. Из рациона исключается только мясо животных (птицы, рыбы и т.д.). Допускается присутствие яиц, молочных продуктов, продуктов пчеловодства, грибы. Такая диета наилучшим образом способствует достижению цели, поставленной в рамках курса.</p>	5	pravila-i-ogranicheniya-retrita
22	ru	Сатсанг-практикум (семинар на основе вопросов-ответов и практикум) с Муштарий Юлдашевой в Самарканде	<p><strong><em><u>31мая-1 июня</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало сатсанга-практикума 31 мая в 14-00. Продолжительность семинара 5 часов, в течение которых &nbsp;мы будем заниматься буквально и тщательно &nbsp;практикой и поиском истины.<br />\r\n&nbsp;С нетерпением жду вас и очень хочу поделиться с вами своей любовью!&nbsp;</p>	22	satsang-praktikum-seminar-na-osnove-voprosov-otvet
7	ru	Базовый 7-дневный курс "Путь к себе” (на русском языке)	<p><strong><em><u>23-24-26-27-28-30 Апреля и 1 Мая</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Мы уже давно не проводили этот семинар, но было очень много просьб со стороны наших участников и их родных и близких, которые, увидев результаты друг-друга, тоже захотели пройти этот курс. Хотим обратить Ваше внимание на то, что Этот семинар-тренинг ГЛУБИННО ОТЛИЧАЕТСЯ ОТ ПРЕДЫДУЩИХ СЕМИНАРОВ! В этот раз мы проведем этот семинар в абсолютно НОВОМ ФОРМАТЕ, с абсолютно НОВЫМИ ПРАКТИКАМИ И НОВЫМИ ЗНАНИЯМИ - база остаётся той же, но предоставление будет другим!<br />\r\nПриглашаем Всех, кто в поисках себя, кто занимается саморазвитием и всех тех, кто хочет развиваться духовно.</p>\r\n\r\n<p style="text-align:justify">Начало семинара-тренинга 23 Апреля в 14-00, продолжительность 7 дней каждый день по 4 часа с перерывом на кофебрейк.</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор:&nbsp;Шахноза Бегматова<br />\r\nТелефон для справок: +998 99 8046855<br />\r\n<br />\r\nПодробности на сайте:&nbsp;http://www.samopoznanie-uz.com/&nbsp;</p>\r\n\r\n<p style="text-align:justify">Facebook: Центр личностного роста &quot;Саморазвитие и Самопознание&quot;<br />\r\nАдрес: г. Ташкент, Чиланзарский р-он, улица Новза (Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.</p>	7	priglashaem-vseh-nashih-lyubimyh-muzhchin-i-zhensh
6	ru	Выездные программы	<div class="hundred_percent_width">\r\n<p style="text-align:center"><span style="font-size:18px">Впервые в Узбекистане!!! &nbsp;РЕТРИТ-ТРЕНИНГ НА острове БАЛИ!</span></p>\r\n</div>\r\n\r\n<p style="text-align:center"><img src="https://static.wixstatic.com/media/c7735e_f5c6c99c02974223a1fa0229bc565fde~mv2_d_1280_1280_s_2.jpg/v1/fill/w_401,h_384,al_c,q_80,usm_0.66_1.00_0.01/c7735e_f5c6c99c02974223a1fa0229bc565fde~mv2_d_1280_1280_s_2.webp" /></p>\r\n\r\n<p style="text-align:justify">Центр личностного роста &quot;Саморазвитие и Самопознание&quot; представляет Вам &nbsp;новый проект Муштарий Юлдашевой - Ретрит-тренинг &nbsp;&quot;ВЕРНИСЬ ДРУГИМ!&quot;<br />\r\nВы можете совместить отдых и работу с собой, пройти путь просветления, обрести внутреннюю радость &nbsp;вместе с МАСТЕРОМ в Мировом центре исцеления на острове Бали. По данным &nbsp;исследований, Бали - это основной центр мирового очищения энергии всей Земли, где сконцентрирована мощная сила и расположено много священных источников дарующих оздоровление и омоложение организма. Женская и мужская энергия Земли пересекаются в двух местах планеты: на озере Титикака (вторая чакра планеты) и на острове Бали. В этом тренинге на Бали Вы пройдете путь очищения и гармонизации своего организма, станете уравновешенными, сможете легко адаптироваться к изменениям жизни, научитесь легко принимать решения, приобретете устойчивость к &quot;негативным&quot; воздействиям, повысите свой энергетический потенциал и раскроете сексуальность и чувственность.<br />\r\n&nbsp; Бали &ndash; это идеальное место для практик &nbsp;в окружении тропических джунглей в атмосфере самобытного балийского духа под руководством продвинутого мастера. Гармоничное сочетание интенсивной практики, отдыха на лоне природы и впечатлений от диковин острова подарит Вам незабываемое удовольствие от познания души, укрепления тела и расширения сознания.<br />\r\nНазвание &nbsp;ретрита-тренинга &quot;ВЕРНИСЬ ДРУГИМ&quot;, говорит само за себя , так как после прохождения этого семинара &nbsp;Вы уже не будете прежними!!!<br />\r\n&nbsp;Даты проведения тура: 07- 20 декабря 2017 г. &nbsp;Семинар -тренинг будет проходить в специализированном &nbsp;ретритном центре &quot;Bali Mountain Retreat&quot;. Продолжительность тура: 14 дней, 13 ночей из них 6 дней интенсивного ретрита и 6 дней семинара-тренинга. И в качестве приятного бонуса мы предлагаем Вам на обратном пути домой прогуляться 2 дня по Куала-Лумпур в поисках гастрономических, эстетических или шопоголических приключений!<br />\r\nВнимание! Внимание! Внимание!<br />\r\nМы продумали и решили за Вас все вопросы по организации этого тура. Вам не придеться беспокоиться о питании, проживании и трансферах. Замечательные блюда 3 раза в день, море экзотических фруктов, комфортные 4* номера &nbsp;с видом на волшебную природу острова. Просто расслабтесь , &nbsp;получайте удовольствие и &nbsp;ВЕРНИТЕСЬ ДРУГИМИ!&nbsp;<br />\r\nВЫ ПЕРЕЙДЕТЕ В НОВЫЙ 2018 ГОД ОБНОВЛЕННЫМИ, С НОВЫМИ МЫСЛЯМИ, С &nbsp;НОВЫМ Я!&nbsp;<br />\r\n&nbsp;Программа ретрита-тренинга составлена именно таким образом, чтобы вы приехали на ретрит, отключились от мирской суеты, вошли и растворились в себе, растворились с тем, что есть, в тишине, а потом открыто принимали информацию тренинга. Поэтому мы 6 дней будем делать практики, которые приведут нас к состоянию успокоения ума и возвращения к себе, в глубь себя, растворения в себе. &nbsp;И после этого мы будем открыты для принятия информации 6 дневного &nbsp;семинара-тренинга так глубоко, что результат не заставит себя долго ждать. Потому что когда ум тих и мы полностью отключены от людской суеты, от матричных мыслей, мы глубоко погружаемся в эту информацию &nbsp;и она начинает работать на всю мощь.</p>\r\n\r\n<p style="text-align:justify">Если Вы хотите насладиться прекрасным горным пейзажем острова Бали, чистотой воздуха и самое главное готовы к новым открытиям, которые Вам подарит наш ретрит-тренинг, тогда это предложение для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.</p>\r\n\r\n<div class="hundred_percent_width">\r\n<p style="text-align:center"><span style="font-size:18px">8-дневный ретрит Випассана с МУШТАРИЙ ЮЛДАШЕВОЙ</span></p>\r\n</div>\r\n\r\n<p style="text-align:center"><img src="https://static.wixstatic.com/media/c7735e_d9c5f370958a41dc970ddfd73bbfbb22~mv2_d_1280_1280_s_2.jpg/v1/fill/w_416,h_416,al_c,q_80,usm_0.66_1.00_0.01/c7735e_d9c5f370958a41dc970ddfd73bbfbb22~mv2_d_1280_1280_s_2.webp" /></p>\r\n\r\n<p style="text-align:justify">Приглашаем наших дорогих мужчин и женщин на 10-дневный ретрит Випассана с МУШТАРИЙ ЮЛДАШЕВОЙ.<br />\r\n&nbsp;Мы все время куда-то спешим, пропуская, не проживая &nbsp;текущий момент жизни. Постоянно стремимся к чему-то, не замечая того, что у нас уже есть. Мы живем или прошлым или будущим. Иногда хочется просто остановиться, заглянуть к себе в душу и понять что-то очень важное для себя. &nbsp;Но беспокойство ума, шум наших бесконечных мыслей мешает нам сделать это. И тогда мы стремимся к ТИШИНЕ, которая позволит нам услышать нашу Душу.<br />\r\n&nbsp; Мы предлагаем Вам познать себя истинного, сделать миллион открытий себя, приняв участие в РЕТРИТЕ ВИПАССАНА МУШТАРИЙ ЮЛДАШЕВОЙ, который будет проходить с 13 октября по 21 октября на территории живописного Чаткальского биосферного заповедника в туристической базе &quot;Янгиабад&quot; &nbsp;в 120 км. от Ташкента на высоте 1500 м. над уровнем моря.<br />\r\n&nbsp;Этот ретрит предназначен для тех, кто давно находится в поиске тишины. Но тишина не находится во вне, она внутри. И искать ее следует у себя внутри. Этот ретрит &nbsp;для тех, кто хочет соединиться, слиться с тишиной, быть в тишине. Кто хочет соединить ум, тело , дух и душу.<br />\r\n&nbsp;Чтобы принять участие в мероприятии, вам потребуется &nbsp;ознакомиться и согласиться с Правилами и Ограничениями, принятыми на наших Ретритах.<br />\r\nНажмите на активную кнопку и пройдите по ссылке для ознакомления с правилами и ограничениями.&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-size:18px">ВЫ МОЖЕТЕ ПРИЕХАТЬ НА &nbsp;ЭТОТ РЕТРИТ НА СТОЛЬКО ДНЕЙ, НА СКОЛЬКО ВАМ БУДЕТ УДОБНО ПО ВАШЕЙ ВОЗМОЖНОСТИ, НО МЫ СО СВОЕЙ СТОРОНЫ СОВЕТУЕМ МАКСИМАЛЬНО ДОЛЬШЕ ИЛИ ЛУЧШЕ ДО <span style="color:null">КОНЦА</span> ПРОЙТИ ЭТОТ РЕТРИТ!</span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:start"><span style="color:null"><span style="font-size:15px">Ретрит-сатсанг проводится на русском и узбекском языках.&nbsp;<br />\r\n&nbsp;&nbsp;<br />\r\nВ результате ретрита Випассана Вы получите:<br />\r\n- лучшую возможность для очищения сознания от загрязнений и пробуждения &nbsp;полезных качеств ума.<br />\r\n-спокойствие ума<br />\r\n-гармонизацию взаимодействия ума, тела, духа и души<br />\r\n-возможность отключения от социальной матрицы<br />\r\n- возможность самостоятельно открыть для себя несколько, на первый взгляд, простых, но глубоких истин<br />\r\n-ум станет очень ясным, качество проведения жизни повысится, высвободится очень много энергии.</span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:start"><span style="color:null"><span style="font-size:15px">Программа ретрита:</span></span></p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:100%">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:center"><strong><span style="font-size:15px">13 октября день прибытия</span></strong></td>\r\n\t\t\t<td style="text-align:center"><strong><span style="color:null"><span style="font-size:15px">14-19&nbsp;октября дни ретрита</span></span></strong></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><span style="font-size:15px">17.00 прибытие на турбазу, размещение в номерах<br />\r\n\t\t\t18.00 &ndash; 19.00 &ndash;ужин&nbsp;<br />\r\n\t\t\t19.30 сатсанг, практики.</span></td>\r\n\t\t\t<td><span style="color:null"><span style="font-size:15px">6.00 &ndash; пробуждение Практики<br />\r\n\t\t\t9.00 &ndash; 9.30 &ndash; завтрак&nbsp;Практики<br />\r\n\t\t\t13.00 &ndash; 13.30 &ndash; обед Практики&nbsp;<br />\r\n\t\t\t18.00 &ndash; 18.30 &ndash;ужин&nbsp;</span><span style="font-size:15px">Практики</span></span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:center"><strong><span style="color:null">&nbsp;20 октября день сатсанга</span></strong></td>\r\n\t\t\t<td style="text-align:center"><strong><span style="color:null"><span style="font-size:15px">21 октября день отъезда</span></span></strong></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t\t<td><span style="color:null"><span style="font-size:15px">7.00 - пробуждение Сатсанг. Практики<br />\r\n\t\t\t12.00 отъезд</span></span></td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:start">&nbsp;</p>\r\n\r\n<div class="hundred_percent_width">\r\n<p style="margin-left:0px; margin-right:0px; text-align:center"><span style="font-size:18px">7 дневный ретрит Випассана&nbsp;&nbsp;с МУШТАРИЙ ЮЛДАШЕВОЙ</span></p>\r\n</div>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_566a55ed382340419b1233857991ee87~mv2.jpg/v1/fill/w_362,h_503,al_c,q_80,usm_0.66_1.00_0.01/c7735e_566a55ed382340419b1233857991ee87~mv2.webp" /></td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_c603e923b6a04637aa15d3b1db10ff1c~mv2_d_4128_2322_s_2.jpg/v1/fill/w_580,h_441,al_c,q_80,usm_0.66_1.00_0.01/c7735e_c603e923b6a04637aa15d3b1db10ff1c~mv2_d_4128_2322_s_2.webp" /></td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:start"><span style="font-size:14px">Приглашаем наших дорогих мужчин и женщин на 7-дневный ретрит Випассана с МУШТАРИЙ ЮЛДАШЕВОЙ.</span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px">&nbsp;Мы все время куда-то спешим, пропуская, не проживая &nbsp;текущий момент жизни. Постоянно стремимся к чему-то, не замечая того, что у нас уже есть. Мы живем или прошлым или будущим. Иногда хочется просто остановиться, заглянуть к себе в душу и понять что-то очень важное для себя. &nbsp;Но беспокойство ума, шум наших бесконечных мыслей мешает нам сделать это. И тогда мы стремимся к ТИШИНЕ, которая позволит нам услышать нашу Душу.<br />\r\n&nbsp; Мы предлагаем Вам познать себя истинного, сделать миллион открытий себя, приняв участие в РЕТРИТЕ ВИПАССАНА МУШТАРИЙ ЮЛДАШЕВОЙ, который будет проходить с 17 мая по 23 мая на территории живописного Чаткальского биосферного заповедника в туристической базе &quot;Янгиабад&quot; &nbsp;в 120 км. от Ташкента на высоте 1500 м. над уровнем моря.<br />\r\n&nbsp;Этот ретрит предназначен для тех, кто давно находится в поиске тишины. Но тишина не находится во вне, она внутри. И искать ее следует у себя внутри. Этот ретрит &nbsp;для тех, кто хочет соединиться, слиться с тишиной, быть в тишине. Кто хочет соединить ум, тело , дух и душу.<br />\r\n&nbsp;Чтобы принять участие в мероприятии, вам потребуется &nbsp;ознакомиться и согласиться с Правилами и Ограничениями, принятыми на наших Ретритах.<br />\r\nНажмите на активную кнопку и пройдите по ссылке для ознакомления с правилами и ограничениями.&nbsp;</span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:center"><a class="btn" href="/ru/pravila-i-ogranicheniya-retrita/"><span style="font-size:16px">правила и ограничения </span></a></p>\r\n\r\n<p>Важно! Участие в Ретрите в состоянии любой степени психического расстройства и депрессии противопоказано!</p>\r\n\r\n<p>Ретрит-сатсанг проводится на русском и узбекском языках.&nbsp;<br />\r\nВ результате ретрита Випассана Вы получите:<br />\r\n- лучшую возможность для очищения сознания от загрязнений и пробуждения &nbsp;полезных качеств ума.<br />\r\n-спокойствие ума<br />\r\n-гармонизацию взаимодействия ума, тела, духа и души<br />\r\n-возможность отключения от социальной матрицы<br />\r\n- возможность самостоятельно открыть для себя несколько, на первый взгляд, простых, но глубоких истин<br />\r\n-ум станет очень ясным, качество проведения жизни повысится, высвободится очень много энергии.</p>\r\n\r\n<p>Программа ретрита:</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:100%">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:center"><strong>17 мая день прибытия</strong></td>\r\n\t\t\t<td style="text-align:center"><strong>18-22 мая дни ретрита</strong></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>17.00 прибытие на турбазу, размещение в номерах<br />\r\n\t\t\t18.00 &ndash; 19.00 &ndash;ужин&nbsp;<br />\r\n\t\t\t19.30 сатсанг, практики.</td>\r\n\t\t\t<td>6.00 &ndash; пробуждение Практики<br />\r\n\t\t\t9.00 &ndash; 9.30 &ndash; завтрак&nbsp;Практики<br />\r\n\t\t\t13.00 &ndash; 13.30 &ndash; обед Практики&nbsp;<br />\r\n\t\t\t18.00 &ndash; 18.30 &ndash;ужин&nbsp;Практики</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:center"><strong>23 мая</strong></td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>7.00 - пробуждение Сатсанг. Практики<br />\r\n\t\t\t10.00 отъезд</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;<br />\r\nОзнакомтесь с фото-отчетом и отзывами участников первого ретрита на нашем сайте.<br />\r\n&nbsp;<br />\r\nЕсли Вы хотите насладиться прекрасным горным пейзажем, чистотой воздуха и самое главное готовы к новым открытиям, которые Вам подарит наш семинар-тренинг, тогда это предложение для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nБудем Искренне рады встрече и общению с Вами!&nbsp;<br />\r\nС потоком любви и света Муштарий!</p>\r\n\r\n<div style="width:100%">\r\n<p style="text-align:center"><span style="font-size:18px">5 дневный РЕТРИТ-САТСАНГ МУШТАРИЙ ЮЛДАШЕВОЙ</span></p>\r\n\r\n<p style="text-align:center"><br />\r\n<img src="https://static.wixstatic.com/media/c7735e_f4e60a1241b34a14932bf732e87344f1~mv2.png/v1/fill/w_473,h_423,al_c,q_80,usm_0.66_1.00_0.01/c7735e_f4e60a1241b34a14932bf732e87344f1~mv2.webp" style="width:100%" /></p>\r\n</div>\r\n\r\n<p style="text-align:justify">Мы все время куда-то спешим, пропуская, не проживая &nbsp;текущий момент жизни. Постоянно стремимся к чему-то, не замечая того, что у нас уже есть. Мы живем или прошлым или будущим. Иногда хочется просто остановиться, заглянуть к себе в душу и понять что-то очень важное для себя. &nbsp;Но беспокойство ума, шум наших бесконечных мыслей мешает нам сделать это. И тогда мы стремимся к ТИШИНЕ, которая позволит нам услышать нашу Душу.<br />\r\n&nbsp; Мы предлагаем Вам познать себя истинного, сделать миллион открытий себя, приняв участие в РЕТРИТЕ МУШТАРИЙ ЮЛДАШЕВОЙ под названием &nbsp;&quot;КТО Я&quot;, который будет проходить в момент пробуждения природы с 27 февраля по 4 марта на территории живописного Чаткальского биосферного заповедника в туристической базе &quot;Янгиабад&quot; &nbsp;в 120 км. от Ташкента на высоте 1500 м. над уровнем моря.<br />\r\n&nbsp;Этот ретрит предназначен для тех, кто давно находится в поиске тишины. Но тишина не находится во вне, она внутри. И искать ее следует у себя внутри. Этот ретрит &nbsp;для тех, кто хочет соединиться, слиться с тишиной, быть в тишине. Кто хочет соединить ум, тело , дух и душу.<br />\r\n&nbsp;Чтобы принять участие в мероприятии, вам потребуется &nbsp;ознакомиться и согласиться с Правилами и Ограничениями, принятыми на наших Ретритах. Нажмите на активную кнопку и пройдите по ссылке для ознакомления с правилами и ограничениями.</p>\r\n\r\n<p style="text-align:center"><a class="btn" href="/ru/pravila-i-ogranicheniya-retrita/"><span style="font-size:16px">правила и ограничения</span></a></p>\r\n\r\n<p>Программа ретрита:</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:100%">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>*27 февраля день прибытия</td>\r\n\t\t\t<td>*28 февраля, 1марта, 2 марта дни ретрита</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>17.00 прибытие на турбазу, размещение в номерах<br />\r\n\t\t\t18.00 &ndash; 19.00 &ndash;ужин&nbsp;<br />\r\n\t\t\t19.30 сатсанг</td>\r\n\t\t\t<td>7.00- 7.30 &ndash; подъем (1 марта подъем в 6.30, 2 марта подъем в 5.00)<br />\r\n\t\t\tПрактики<br />\r\n\t\t\t9.00 &ndash; 10.00 &ndash; завтрак&nbsp;Практики<br />\r\n\t\t\t13.00 &ndash; 14.00 &ndash; обед Практики&nbsp;<br />\r\n\t\t\t18.00 &ndash; 19.00 &ndash;ужин&nbsp; Практики</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>*3 марта день сатсанга</td>\r\n\t\t\t<td>*4 марта день выезда.</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>8.00- 8.30 &ndash; подъем&nbsp;<br />\r\n\t\t\t9.00 &ndash; 10.00 &ndash; завтрак&nbsp;Сатсанг&nbsp;<br />\r\n\t\t\t13.00 &ndash; 14.00 &ndash; обед Сатсанг<br />\r\n\t\t\t18.00 &ndash; 19.00 &ndash;ужин Сатсанг</td>\r\n\t\t\t<td>8.00 &ndash; 9.00 &ndash; подъем&nbsp;<br />\r\n\t\t\t9.00 &ndash; 10.00 &ndash; завтрак<br />\r\n\t\t\t10.00 &ndash; 10.30&ndash; отъезд.&nbsp;</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p><br />\r\n&nbsp;Если Вы хотите насладиться прекрасным горным пейзажем, чистотой воздуха и самое главное готовы к новым открытиям, которые Вам подарит наш семинар-тренинг, тогда это предложение для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nАдминистратор-организатор: Лола</p>\r\n\r\n<p>Телефон для справок: +998 90 946 16 36; +998 97 347 20 65.<br />\r\n<span style="font-size:18px">Выездной семинар-тренинг &quot;Уроки совершенства для современной женщины&quot;</span></p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" class="images_table_hundred_percent" style="width:100%">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:50%"><img src="https://static.wixstatic.com/media/c7735e_2af53e37e97e481da5c2e506ff6b5891.jpg/v1/fill/w_890,h_296,al_c,q_80,usm_0.66_1.00_0.01/c7735e_2af53e37e97e481da5c2e506ff6b5891.jpg" /></td>\r\n\t\t\t<td style="width:50%"><img src="https://static.wixstatic.com/media/c7735e_aaa1ff0da6eb4623bd0f8f0cd59d98f8.jpg/v1/fill/w_827,h_303,al_c,q_80,usm_0.66_1.00_0.01/c7735e_aaa1ff0da6eb4623bd0f8f0cd59d98f8.jpg" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:50%"><img src="https://static.wixstatic.com/media/c7735e_d5a43b786dce4b3ea806e968113b70f7.jpg/v1/fill/w_827,h_478,al_c,q_85,usm_0.66_1.00_0.01/c7735e_d5a43b786dce4b3ea806e968113b70f7.jpg" /></td>\r\n\t\t\t<td style="width:50%"><img src="https://static.wixstatic.com/media/c7735e_d73eef300bf64a18827eab15aede2366.jpg/v1/fill/w_827,h_478,al_c,q_85,usm_0.66_1.00_0.01/c7735e_d73eef300bf64a18827eab15aede2366.jpg" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:50%"><img src="https://static.wixstatic.com/media/c7735e_71b76e6aafe54a03a6a71e9513d35d82.jpg/v1/fill/w_827,h_478,al_c,q_85,usm_0.66_1.00_0.01/c7735e_71b76e6aafe54a03a6a71e9513d35d82.jpg" /></td>\r\n\t\t\t<td style="width:50%"><img src="https://static.wixstatic.com/media/c7735e_56e2da5ad95643c2adc124409db10fff.jpg/v1/fill/w_827,h_478,al_c,q_85,usm_0.66_1.00_0.01/c7735e_56e2da5ad95643c2adc124409db10fff.jpg" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:50%"><img src="https://static.wixstatic.com/media/c7735e_45d148cfb9d449528a95f1a3c6cae424.jpg/v1/fill/w_827,h_478,al_c,q_85,usm_0.66_1.00_0.01/c7735e_45d148cfb9d449528a95f1a3c6cae424.jpg" /></td>\r\n\t\t\t<td style="width:50%"><img src="https://static.wixstatic.com/media/c7735e_a90f8554bd2e4925b0620bd208a5f20f.jpg/v1/fill/w_827,h_478,al_c,q_85,usm_0.66_1.00_0.01/c7735e_a90f8554bd2e4925b0620bd208a5f20f.jpg" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan="2" style="text-align:center; width:50%"><img src="https://static.wixstatic.com/media/c7735e_24609441ba654473bbd961309c1826b3.jpg/v1/fill/w_827,h_478,al_c,q_85,usm_0.66_1.00_0.01/c7735e_24609441ba654473bbd961309c1826b3.jpg" /></td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify">Дорогие Друзья! Муштарий Юлдашева приглашает вас на уникальный выездной семинар-тренинг &quot;Уроки совершенства для современной женщины&quot;, который &nbsp;проводится в самый разгар пробуждения природы на берегу Чарвакского водохранилища &nbsp;в одном из лучших загородных отелей Ташкентской области &nbsp;AVENUE PARK HOTEL. Яркое синее небо, изумрудная садовая зелень, искрящийся под солнцем Чарвак.Хотите попасть в такое волшебное место, где состояние парения держится всегда! Место, где сами вибрации, энергетика помогают это делать.<br />\r\n&nbsp;Мы живем в уникальное время,время когда Земля переходит в новую фазу своего развития. &nbsp;И очень важную роль в осуществлении &nbsp;этих изменений будет играть Женщина! Этот семинар позволяет Женщине более продуктивно вписываться в жизнь и более уверенно заявлять о себе, как о личности. Также эти знания помогают современной женщине посмотреть на окружающий мир по другому, для того, чтобы вернуть себе свою индивидуальность, красоту и сексуальность.</p>\r\n\r\n<p style="text-align:justify"><br />\r\n&nbsp;На тренинге &quot;Уроки совершенства для современной женщины&quot; , &nbsp;будут рассмотрены следующие вопросы:&nbsp;</p>\r\n\r\n<ul>\r\n\t<li style="text-align:justify">различия между мужскими и женскими принципами мышления</li>\r\n\t<li style="text-align:justify">для чего живет Женщина? Для себя ли любимой?</li>\r\n\t<li style="text-align:justify">инстинкт самовыживания. Свобода воли</li>\r\n\t<li style="text-align:justify">о любви к себе. О личной самореализации</li>\r\n\t<li style="text-align:justify">о ложных целях, которые навязывают нам</li>\r\n\t<li style="text-align:justify">о взаимоотношениях Мужчины и Женщины на различных этапах индивидуального развития</li>\r\n\t<li style="text-align:justify">почему Женщина &quot;за 30&quot; все чаще и чаще задается вопросом: А где нормальные и достойные &nbsp;мужчины?</li>\r\n\t<li style="text-align:justify">наслаждение в работе- одна из важных составляющих жизни человека</li>\r\n\t<li style="text-align:justify">о позиции лидера</li>\r\n\t<li style="text-align:justify">о женских комплексах и страх избавления от них</li>\r\n\t<li style="text-align:justify">о борьбе мужчины со своей матерью</li>\r\n\t<li style="text-align:justify">как Женщине воздействовать на Мужчину</li>\r\n\t<li style="text-align:justify">как Женщине заинтересовать собой Мужчину</li>\r\n\t<li style="text-align:justify">о принципах сохранения Семьи</li>\r\n</ul>\r\n\r\n<p style="text-align:justify">&nbsp; Миссия и задача тренинга &quot;Уроки совершенства для современной женщины&quot; &nbsp;помочь &nbsp;участницам осознавая природу своей женственности, оценить важность и величие своих возможностей. Раскрывая этот потенциал пройти посвящение перехода в мир чистой любви и безупречной красоты, магический женский мир.</p>\r\n\r\n<p style="text-align:justify">&nbsp;И это не одноразовый эффект, методика на всю жизнь! Глубокий, релаксационный, экологичный, системный, и, что самое важное, результативный тренинг для всех, кто хочет, желает, надеется, а может и мечтает найти, наладить, улучшить отношения!&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;<br />\r\n&nbsp;В стоимость выездного семинара-тренинга включено:</p>\r\n\r\n<ul>\r\n\t<li style="text-align:justify">проживание в отеле AVENUE PARK HOTEL 5 дней/4ночей (1день вечером-прибытие в отель,размещение &nbsp; в номерах; 2,3,4 день-занятия; 5день после завтрака-выезд из отеля)</li>\r\n\t<li style="text-align:justify">размещение в двухместных номерах (УДОБСТВА-спальня с двумя раздвижными мягкими кроватями; &nbsp; душевая кабинка с массажным душем; телефон; ТВ - спутниковое вещание; балкон/терраса; &nbsp; гарнитурная мебель; холодильник; фен; шампунь, мыло (пополняется 1 раз при заезде) набор &nbsp; полотенец (пополняется 1 раз при заезде).</li>\r\n\t<li style="text-align:justify">полный пансион ( завтрак-шведский стол, обед и ужин-комплексное меню)</li>\r\n\t<li style="text-align:justify">три дня занятий( два раза в день по 2,5 часа каждое занятие)</li>\r\n</ul>\r\n\r\n<p style="text-align:justify">Распорядок дня:</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:100%">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:center"><strong>Завтрак</strong></td>\r\n\t\t\t<td style="text-align:center"><strong>Обед</strong></td>\r\n\t\t\t<td style="text-align:center"><strong>Ужин</strong></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<ul>\r\n\t\t\t\t<li>Утренние занятия &ndash; 2,5 часа</li>\r\n\t\t\t\t<li>Свободное время</li>\r\n\t\t\t</ul>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<ul>\r\n\t\t\t\t<li>Свободное время</li>\r\n\t\t\t\t<li>Вечерние занятия &ndash; 2,5 часа</li>\r\n\t\t\t</ul>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<ul>\r\n\t\t\t\t<li>Свободное время&nbsp;</li>\r\n\t\t\t</ul>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p style="text-align:justify">&nbsp;&nbsp;<br />\r\nК Вашим услугам &nbsp;за дополнительную плату в гостиничном комплексе Avenue Park имеется Wellness-Spa.<br />\r\nПосетителям предлагаются русская баня и финская сауна, турецкий хамам, джакузи, зимний &nbsp;бассейн, массажный кабинет</p>\r\n\r\n<p style="text-align:justify">Почему мы организовываем именно выездной семинар-тренинг? Только выездной семинар может обеспечить Вам полное отключение от городской, карьерной &nbsp;и домашней матриц и, находясь &nbsp;в полном расслаблении на лоне природы, в этой очищающей энергетике, с группой и мастером , Вы &nbsp;принимаете и впитываете в себя информацию как губка, что способствует &nbsp;максимальной результативности &nbsp;тренинга.</p>\r\n\r\n<p style="text-align:justify">&nbsp;Если Вы хотите насладиться прекрасным горным пейзажем, чистотой воздуха и самое главное готовы к новым открытиям, которые Вам подарит наш семинар-тренинг, тогда это предложение для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36</p>	6	vyezdnye-programmy
8	ru	Встреча "Перезагрузка" с Муштарий Юлдашевой	<p style="text-align:justify"><strong><em><u>14 марта в 15.00</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало встречи 14 марта в 15-00, продолжительность встречи 4 часа с перерывами на кофебрейк.</p>\r\n\r\n<p style="text-align:justify">Если Вы решили, что эта встреча для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.</p>\r\n\r\n<p style="text-align:justify">Как обычно Мы рекомендуем захватить с собой блокнот, ручку и хорошее настроение))))))))))))))))))))))))<br />\r\n&nbsp;</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор:&nbsp;Шахноза Бегматова<br />\r\nТелефон для справок: +998 90 946 16 36; +998 99 8046855</p>\r\n\r\n<p style="text-align:justify"><br />\r\nПодробности на сайте:&nbsp;http://www.samopoznanie-uz.com/&nbsp;или на нашей странице в Facebook Центр личностного роста &quot;Саморазвитие и Самопознание&quot;<br />\r\n&nbsp;</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, Чиланзарский р-он, улица Новза (Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.<br />\r\n&nbsp;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!&nbsp;<br />\r\nС потоком любви и света Муштарий!</p>	8	vstrecha-perezagruzka-s-mushtarij-yuldashevoj
9	ru	ПРОФКУРС 2 МОДУЛЬ	<p><strong><em><u>5 ЯНВАРЯ В 13.00</u></em></strong></p>\r\n\r\n<p>Продолжительность второго модуля -1 месяц, это 8 занятий по 5 часов. Начало второго модуля 5 января в 13.00.<br />\r\nДля всех участников обязательно наличие скайпа и постоянного доступа в интернет.</p>\r\n\r\n<p>Если Вы готовы к новым открытиям, которые Вам подарит этот &nbsp;курс и готовы подняться на новый уровень профессионализма, тогда это предложение для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.&nbsp;<br />\r\nАдминистратор-организатор: Лола&nbsp;</p>\r\n\r\n<p>Телефон для справок: +998 90 946 16 36; +998 97 347 20 65.&nbsp;</p>\r\n\r\n<p>Адрес: г. Ташкент, Чиланзарский р-он, улица Новза(Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.&nbsp;</p>\r\n\r\n<p>&nbsp;Подробности на сайте: http://www.samopoznanie-uz.com/ или на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;&nbsp;<br />\r\nБудем Искренне рады встрече и общению с Вами!&nbsp;<br />\r\nС потоком любви и света Муштарий!</p>	9	profkurs-2-modul
10	ru	ДЕНЬ ОТКРЫТЫХ ДВЕРЕЙ!	<p><strong><em><u>23 декабря на русском. 24 декабря на узбекском. в 14.00</u></em></strong></p>\r\n\r\n<p style="text-align:justify">ПРИНЯТЬ УЧАСТИЕ В ЭТОМ СЕМИНАРЕ МОЖНО ТОЛЬКО ПО ПРЕДВАРИТЕЛЬНОЙ ЗАПИСИ, ТАК КАК КОЛИЧЕСТВО МЕСТ ОГРАНИЧЕНО.<br />\r\nЕсли Вы решили, что эта встреча для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора.&nbsp;<br />\r\nРекомендуем захватить с собой блокнот, ручку, Ваши самые любимые вкусняшки для перекусов и &nbsp;конечно же хорошее настроение))))))))))))))))))))))))<br />\r\nАдминистратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36; +998 97 347 20 65.<br />\r\nПодробности на сайте: http://www.samopoznanie-uz.com/ или на нашей странице в facebook Центр личностного роста &quot;Саморазвитие и Самопознание&quot;<br />\r\nАдрес: г. Ташкент, Чиланзарский р-он, улица Новза (Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.<br />\r\nБудем Искренне рады встрече и общению с Вами!&nbsp;<br />\r\nС потоком любви и света Муштарий!</p>	10	den-otkrytyh-dverej
11	ru	Семинар-тренинг "Активный образ жизни"	<p><strong><em><u>21 декабря в 14.00</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Если Вы решили, что эта встреча для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и хорошее настроение))))))))))))))))))))))))<br />\r\nАдминистратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36; +998 97 347 20 65.<br />\r\nПодробности&nbsp;на нашей странице в facebook Центр личностного роста &quot;Саморазвитие и Самопознание&quot;<br />\r\nАдрес: г. Ташкент, Чиланзарский р-он, улица Новза (Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.<br />\r\nБудем Искренне рады встрече и общению с Вами!&nbsp;<br />\r\nС потоком любви и света Муштарий!</p>	11	seminar-trening-aktivnyj-obraz-zhizni
52	ru	Курс#01 - “Путь к Себе”.	<p>28-29-30 Сентября - 1-2 Октября.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Организатор:&nbsp;Лола</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Телефон для справок:+998 90 946 1636</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече&nbsp;и общению&nbsp;с Вами!</p>\r\n\r\n<p style="text-align:justify">С потоком любви и света Муштарий!&nbsp;</p>	52	kurs01-put-k-sebe
12	ru	Семинар-тренинг "Сила мысли"	<p><strong><em><u>15 декабря в 14.00</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало семинара-тренинга 15 декабря в 14-00, продолжительность &nbsp;семинара-тренинга 4 часа с перерывами на кофебрейк.</p>\r\n\r\n<p style="text-align:justify">Если Вы решили, что эта встреча для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и хорошее настроение))))))))))))))))))))))))<br />\r\n&nbsp; &nbsp;Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36; +998 97 347 20 65.<br />\r\nПодробности &nbsp;на&nbsp;странице в facebook Центр личностного роста &quot;Саморазвитие и Самопознание&quot;&nbsp;<br />\r\nБудем Искренне рады встрече и общению с Вами!&nbsp;<br />\r\nС потоком любви и света Муштарий!</p>	12	seminar-trening-sila-mysli
13	ru	РЕТРИТ-ТРЕНИНГ НА острове БАЛИ!	<p><strong><em><u>Даты проведения тура: 07- 20 декабря 2017 г.</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Если Вы хотите насладиться прекрасным горным пейзажем острова Бали, чистотой воздуха и самое главное готовы к новым открытиям, которые Вам подарит наш ретрит-тренинг, тогда это предложение для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nАдминистратор-организатор: Лола</p>\r\n\r\n<p style="text-align:justify">Телефон для справок: +998 90 946 16 36; +998 97 347 20 65.</p>	13	retrit-trening-na-ostrove-bali
14	ru	Новый пятидневный семинар-тренинг "Открой свой поток Изобилия."	<p><strong><em><u>16 ноября в 14.00</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало&nbsp;семинара-тренинга &nbsp;16 ноября в 14-00, продолжительность &nbsp;5 дней каждый день по 4 часа с перерывом на кофебрейк.</p>\r\n\r\n<p style="text-align:justify">Если Вы готовы к новым открытиям, которые Вам подарит наш семинар-тренинг, тогда это предложение для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nАдминистратор-организатор: Лола</p>\r\n\r\n<p style="text-align:justify">Телефон для справок: +998 90 946 16 36; +998 97 347 20 65.</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, Чиланзарский р-он, улица Новза(Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.</p>	14	novyj-pyatidnevnyj-seminar-trening-otkroj-svoj-pot
15	ru	Сатсанг-практикум (семинар на основе вопросов-ответов и практикум) с Муштарий Юлдашевой.	<p><strong><em><u>11ноября в 14-00</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Если Вы решили, что этот семинар-тренинг для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\n&nbsp;Рекомендуем захватить с собой блокнот, ручку и хорошее настроение)))))))))))))))))))))))))<br />\r\nАдминистратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36 ;<br />\r\n+998 97 347 20 65<br />\r\nАдрес: г. Ташкент, Чиланзарский р-он, улица Новза (Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>	15	satsang-praktikum-seminar-na-osnove-voprosov-otvet
16	ru	8-дневный ретрит Випассана с МУШТАРИЙ ЮЛДАШЕВОЙ.	<p><strong><em><u>13-21 октября</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Если Вы хотите насладиться прекрасным горным пейзажем, чистотой воздуха и самое главное готовы к новым открытиям, которые Вам подарит наш семинар-тренинг, тогда это предложение для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nАдминистратор-организатор: Лола</p>\r\n\r\n<p style="text-align:justify">Телефон для справок: +998 90 946 16 36; +998 97 347 20 65.</p>\r\n\r\n<p style="text-align:justify">&nbsp;Подробности на сайте: http://www.samopoznanie-uz.com/ или на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;&nbsp;<br />\r\nБудем Искренне рады встрече и общению с Вами!&nbsp;</p>	16	8-dnevnyj-retrit-vipassana-s-mushtarij-yuldashevoj
32	ru	Встреча с Муштарий на свободную тему!	<p><strong><em><u>16 октября в 13-00</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Дорогие наши слушатели! По вашим многочисленным просьбам мы организовали встречу для всех желающих поделиться своим опытом, результатами и осознаниями. &nbsp;Будут рассмотрены любые темы, предложенные вами, получены ответы на любые интересующие &nbsp;вас вопросы и конечно же будет проведена практическая работа. Встреча будет проходить 16 октября в 13-00 продолжительность-4 часа с перерывами на кофебрейк.<br />\r\n&nbsp;&nbsp;<br />\r\nЕсли Вы решили, что эта встреча именно для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.&nbsp;<br />\r\nАдминистратор-организатор: Лола&nbsp;<br />\r\nТелефон для справок: +998 90 946 16 36&nbsp;<br />\r\nАдрес: г. Ташкент, м. Мирзо Улугбека, Бизнес-центр &quot; Euroasia insurance&quot; 3 этаж, 308 кабинет ( 301кабинет, через него пройдете в 308 кабинет),ориентир- напротив стадиона Бунёдкор&nbsp;</p>\r\n\r\n<p style="text-align:justify">Подробности&nbsp;на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;&nbsp;<br />\r\nБудем Искренне рады встрече и общению с Вами!&nbsp;<br />\r\nС потоком любви и света Муштарий!</p>	32	vstrecha-s-mushtarij-na-svobodnuyu-temu
17	ru	Семинар-тренинг "Открой свой поток Изобилия"	<p><strong><em><u>30сентября-4октября</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало семинара-тренинга &nbsp;30 сентября в 14-00, продолжительность &nbsp;5 дней каждый день по 4 часа с перерывом на кофебрейк.</p>\r\n\r\n<p style="text-align:justify">Если Вы готовы к новым открытиям, которые Вам подарит наш семинар-тренинг, тогда это предложение для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nАдминистратор-организатор: Лола</p>\r\n\r\n<p style="text-align:justify">Телефон для справок: +998 90 946 16 36; +998 97 347 20 65.</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, Чиланзарский р-он, улица Новза(Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.</p>\r\n\r\n<p style="text-align:justify">&nbsp;Подробности на сайте: http://www.samopoznanie-uz.com/ или на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;&nbsp;<br />\r\nБудем Искренне рады встрече и общению с Вами!&nbsp;<br />\r\nС потоком любви и света Муштарий!</p>	17	seminar-trening-otkroj-svoj-potok-izobiliya
18	ru	ВНИМАНИЕ! ВНИМАНИЕ! ВНИМАНИЕ! ПРОФЕССИОНАЛЬНЫЙ КУРС МУШТАРИЙ ЮЛДАШЕВОЙ!	<p><strong><em><u>1 модуль 4 сентября</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Продолжительность первого модуля -1 месяц, это 8 занятий по 5 часов. Начало первого модуля 4 сентября.<br />\r\nДля всех участников обязательно наличие скайпа и постоянного доступа в интернет.</p>\r\n\r\n<p style="text-align:justify">Если Вы готовы к новым открытиям, которые Вам подарит этот &nbsp;курс и готовы подняться на новый уровень профессионализма, тогда это предложение для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.&nbsp;<br />\r\nАдминистратор-организатор: Лола&nbsp;</p>\r\n\r\n<p style="text-align:justify">Телефон для справок: +998 90 946 16 36; +998 97 347 20 65.&nbsp;</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, Чиланзарский р-он, улица Новза(Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;Подробности на сайте: http://www.samopoznanie-uz.com/ или на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;&nbsp;<br />\r\nБудем Искренне рады встрече и общению с Вами!&nbsp;<br />\r\nС потоком любви и света Муштарий!</p>	18	vnimanie-vnimanie-vnimanie-professionalnyj-kurs-mu
19	ru	Семинар-тренинг "Личная жизнь и Семья"	<p><strong><em><u>22-23-24-25-26-27-28 августа в 14.00</u></em></strong></p>\r\n\r\n<p>Начало семинара-тренинга 22 августа в 14-00, продолжительность 7-дневного семинара каждый день по 4 часа с перерывом на кофе брейк.</p>\r\n\r\n<p>Если Вы решили, что этот семинар-тренинг именно для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nАдминистратор-организатор: Лола&nbsp;<br />\r\n&nbsp;Телефон для справок: +998 90 946 16 36; +998 97 347 20 65.&nbsp;<br />\r\n&nbsp;Адрес: г. Ташкент, Чиланзарский р-он, улица Новза(Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.&nbsp;</p>\r\n\r\n<p>Подробности&nbsp;на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;</p>\r\n\r\n<p>Будем Искренне рады встрече и общению с Вами!<br />\r\nС потоком любви и света Муштарий!</p>	19	seminar-trening-lichnaya-zhizn-i-semya
20	ru	Сатсанг-практикум (семинар на основе вопросов-ответов и практикум) с Муштарий Юлдашевой	<p><strong><em><u>22-23 июня в 14-00</u></em></strong></p>\r\n\r\n<p style="text-align:justify"><strong><em><u>&nbsp;</u></em></strong>Начало сатсанга-практикума 22 июня в 14-00. Продолжительность семинара 2 дня по 4 часа, в течение которых &nbsp;мы будем заниматься буквально и тщательно &nbsp;практикой и поиском истины. ПРИГОТОВЬТЕСЬ К ГЛУБОКОЙ ВНУТРЕННЕЙ РАБОТЕ.<br />\r\n&nbsp;С нетерпением жду вас и очень хочу поделиться с вами своей любовью!&nbsp;</p>\r\n\r\n<p style="text-align:justify">Если Вы решили, что этот семинар-тренинг для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и хорошее настроение))))))))))))))))))))))))</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36&nbsp;<br />\r\n+998 97 347 20 65<br />\r\nАдрес: г. Ташкент, Чиланзарский р-он, улица Новза (Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!<br />\r\nС потоком любви и света Муштарий!</p>	20	satsang-praktikum-seminar-na-osnove-voprosov-otvet
21	ru	Семинар-тренинг "Путь к себе"	<p><strong><em><u>10-16 июня в 12.00</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало семинара-тренинга 10 июня в 12-00, продолжительность 7 дней каждый день по 4 часа с перерывом на кофебрейк.<br />\r\n<br />\r\nЕсли Вы готовы к новым открытиям, которые Вам подарит наш семинар-тренинг, тогда это предложение для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nАдминистратор-организатор:&nbsp;Лола<br />\r\n<br />\r\nТелефон для справок: +998 90 946 16 36; +998 97 347 20 65.<br />\r\n<br />\r\nАдрес: г. Ташкент, Чиланзарский р-он, улица Новза(Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.</p>\r\n\r\n<p style="text-align:justify"><br />\r\nБудем Искренне рады встрече и общению с Вами!&nbsp;<br />\r\nС потоком любви и света Муштарий!</p>	21	seminar-trening-put-k-sebe
23	ru	7-дневный ретрит Випассана с МУШТАРИЙ ЮЛДАШЕВОЙ	<p><strong><em><u>17-23 МАЯ</u></em></strong></p>\r\n\r\n<p style="text-align:justify">&nbsp;Мы предлагаем Вам познать себя истинного, сделать миллион открытий себя, приняв участие в РЕТРИТЕ ВИПАССАНА МУШТАРИЙ ЮЛДАШЕВОЙ, который будет проходить с 17 мая по 23 мая на территории живописного Чаткальского биосферного заповедника в туристической базе &quot;Янгиабад&quot; &nbsp;в 120 км. от Ташкента на высоте 1500 м. над уровнем моря.</p>\r\n\r\n<p style="text-align:justify">Если Вы хотите насладиться прекрасным горным пейзажем, чистотой воздуха и самое главное готовы к новым открытиям, которые Вам подарит наш семинар-тренинг, тогда это предложение для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nАдминистратор-организатор: Лола</p>\r\n\r\n<p style="text-align:justify">Телефон для справок: +998 90 946 16 36; +998 97 347 20 65.</p>	23	7-dnevnyj-retrit-vipassana-s-mushtarij-yuldashevoj
24	ru	Сатсанг-практикум (семинар на основе вопросов-ответов и практикум) с Муштарий Юлдашевой	<p><strong><em><u>Начало семинара-практикума 21 апреля в 13-00, продолжительность 2 дня каждый день по 5 часов с перерывом на кофебрейк.</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Если Вы готовы к новым открытиям, которые Вам подарит наш семинар-тренинг, тогда это предложение для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.&nbsp;</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола&nbsp;<br />\r\n&nbsp;Телефон для справок: +998 90 946 16 36; +998 97 347 20 65.&nbsp;<br />\r\n&nbsp;Адрес: г. Ташкент, Чиланзарский р-он, улица Новза(Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.&nbsp;<br />\r\nБудем Искренне рады встрече и общению с Вами!</p>	24	satsang-praktikum-seminar-na-osnove-voprosov-otvet
25	ru	Мастер-класс от Муштарий Юлдашевой	<p><strong><em><u>9 апреля в 15.00</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало встречи 9 апреля в 15-00, продолжительность встречи 4 часа с перерывом на кофебрейк.&nbsp;</p>\r\n\r\n<p style="text-align:justify">Если Вы решили, что эта встреча для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и хорошее настроение)))))))))))))))))))))))))</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36&nbsp;<br />\r\n+998 97 347 20 65<br />\r\nАдрес: г. Ташкент, Чиланзарский р-он, улица Новза (Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!<br />\r\nС потоком любви и света Муштарий!</p>	25	master-klass-ot-mushtarij-yuldashevoj
26	ru	Сатсанг-практикум (семинар на основе вопросов-ответов и практикум) с Муштарий Юлдашевой	<p><strong><em><u>7 апреля В 14.00</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало сатсанга-практикума 7 апреля в 14-00. Продолжительность семинара 5 часов, в течение которых мы будем заниматься буквально и тщательно практикой и поиском истины.<br />\r\nС нетерпением жду вас и очень хочу поделиться с вами своей любовью!&nbsp;</p>\r\n\r\n<p style="text-align:justify">Если Вы решили, что эта встреча для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и хорошее настроение)))))))))))))))))))))))))</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36&nbsp;<br />\r\n+998 97 347 20 65<br />\r\nАдрес: г. Ташкент, Чиланзарский р-он, улица Новза (Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!<br />\r\nС потоком любви и света Муштарий!</p>	26	satsang-praktikum-seminar-na-osnove-voprosov-otvet
41	ru	Новый мастер-класс от Муштарий Юлдашевой.	<p><strong><em><u>15 июня</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Никакой теории, только практика</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Начало встречи 15 июня &nbsp;в 15-00, продолжительность встречи &nbsp;4 часа с перерывом на кофебрейк.&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; Если Вы решили, что эта встреча для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и хорошее настроение)))))))))))))))))))))))))</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, м. Мирзо Улугбека, Бизнес-центр &quot; Euroasia insurance&quot; (вход в здание под вывеской &quot;STATUS&quot;), 3 этаж, 308 кабинет( 301кабинет, через него пройдете в 308 кабинет),ориентир- напротив стадиона Бунёдкор</p>\r\n\r\n<p style="text-align:justify">Подробности на сайте: http://www.samopoznanie-uz.com/ или на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!<br />\r\nС потоком любви и света Муштарий!&nbsp;</p>	41	novyj-master-klass-ot-mushtarij-yuldashevoj
27	ru	РЕТРИТ-САТСАНГ МУШТАРИЙ ЮЛДАШЕВОЙ	<p><strong><em><u>27-28 ФЕВРАЛЯ 1-2-3-4 МАРТА</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Почему мы организовываем именно выездной ретрит? Только выездной семинар может обеспечить Вам полное отключение от городской, карьерной &nbsp;и домашней матриц и, находясь &nbsp;в полном расслаблении на лоне природы, в этой очищающей энергетике, с группой и мастером , Вы &nbsp;принимаете и впитываете в себя информацию как губка, что способствует &nbsp;максимальной результативности &nbsp;тренинга.<br />\r\n&nbsp;<br />\r\n&nbsp;Если Вы хотите насладиться прекрасным горным пейзажем, чистотой воздуха и самое главное готовы к новым открытиям, которые Вам подарит наш семинар-тренинг, тогда это предложение для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nАдминистратор-организатор: Лола</p>\r\n\r\n<p style="text-align:justify">Телефон для справок: +998 90 946 16 36; +998 97 347 20 65.</p>	27	retrit-satsang-mushtarij-yuldashevoj
28	ru	Встреча на тему "Что такое Любовь- чувство или состояние Души?"	<p><strong><em><u>12 февраля в 14.00</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало встречи 12 февраля в 14-00. Продолжительность &nbsp;5 часов с перерывом на кофе брейк.<br />\r\nВстреча проводится на русском и узбекском языках.<br />\r\n&nbsp;ВСТРЕЧА &nbsp;АБСОЛЮТНО БЕСПЛАТНАЯ.</p>\r\n\r\n<p style="text-align:justify">&nbsp;ПРЕДВАРИТЕЛЬНАЯ ЗАПИСЬ НА ВСТРЕЧУ &nbsp;ОБЯЗАТЕЛЬНА!!!</p>\r\n\r\n<p style="text-align:justify">&nbsp;Если Вы решили, что эта встреча для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и хорошее настроение)))))))))))))))))))))))))</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36; +998 97 347 20 65</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, Чиланзарский р-он, улица Новза(Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.</p>	28	vstrecha-na-temu-chto-takoe-lyubov-chuvstvo-ili-so
29	ru	ПРАКТИКУМ МУШТАРИЙ ЮЛДАШЕВОЙ	<p><strong><em><u>11 февраля в 14.00</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Продолжительность семинара 5 часов, в течение которых &nbsp;мы будем заниматься буквально и тщательно только практикой.</p>\r\n\r\n<p style="text-align:justify">&nbsp;Если Вы решили, что эта встреча для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и хорошее настроение)))))))))))))))))))))))))</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36; +998 97 347 20 65</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, Чиланзарский р-он, улица Новза(Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.</p>	29	praktikum-mushtarij-yuldashevoj
30	ru	Сатсанг с Муштарий Юлдашевой.	<p><strong><em><u>19-20 января в 14-00</u></em></strong></p>\r\n\r\n<p style="text-align:justify"><strong><em><u>&nbsp;</u></em></strong>Если Вы решили, что эта встреча для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и хорошее настроение))))))))))))))))))))))))</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, Чиланзарский р-он, улица Новза (Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.</p>\r\n\r\n<p style="text-align:justify">Подробности на сайте: http://www.samopoznanie-uz.com/ или на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!<br />\r\nС потоком любви и света Муштарий!</p>	30	satsang-s-mushtarij-yuldashevoj
31	ru	Семинар-практикум	<p><strong><em><u>24-25 декабря в 15-00</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало семинара-практикума 24 декабря в 15-00.<br />\r\n&nbsp; Если Вы решили, что эта встреча для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и хорошее настроение)))))))))))))))))))))))))</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, Чиланзарский р-он, улица Новза(Комила Ярматова), 14 дом, здание Бизнес-центра, 4 этаж, кабинет 4-11, ориентир - кафе Анхор.</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!</p>	31	seminar-praktikum
33	ru	Семинар – тренинг “Путь к Себе”	<p><strong><em><u>28-29-30 сентября-1-2-3-4 октября в 11-00</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало семинара 28 сентября в 11-00.<br />\r\nПродолжительность 7-дневного семинара каждый день по 4 часа с перерывом на кофебрейк.<br />\r\n&nbsp;Для записи на семинар-тренинг, просим Вас пройти регистрацию у нашего Администратора.&nbsp;<br />\r\nАдминистратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, м. Мирзо Улугбека, Бизнес-центр &quot; Euroasia insurance&quot; (вход в здание под вывеской &quot;STATUS&quot;), 3 этаж, 308 кабинет( 301кабинет, через него пройдете в 308 кабинет),ориентир- напротив стадиона Бунёдкор</p>\r\n\r\n<p style="text-align:justify">Подробности&nbsp;на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!<br />\r\nС потоком любви и света Муштарий! &nbsp;</p>	33	seminar-trening-put-k-sebe
34	ru	Мастер-класс от Муштарий Юлдашевой.	<p><strong><em><u>24 СЕНТЯБРЯ</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало встречи 24 сентября в 15-00, продолжительность встречи &nbsp;4 часа с перерывом на кофебрейк.&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; Если Вы решили, что эта встреча для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и хорошее настроение)))))))))))))))))))))))))</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, м. Мирзо Улугбека, Бизнес-центр &quot; Euroasia insurance&quot; (вход в здание под вывеской &quot;STATUS&quot;), 3 этаж, 308 кабинет( 301кабинет, через него пройдете в 308 кабинет),ориентир- напротив стадиона Бунёдкор</p>\r\n\r\n<p style="text-align:justify">Подробности на сайте: http://www.samopoznanie-uz.com/ или на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!</p>	34	master-klass-ot-mushtarij-yuldashevoj
35	ru	Семинар-тренинг "Искусство вдохновлять Мужчину"!!!	<p><strong><em><u>6-7 августа</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало семинара-тренинга 6 августа&nbsp;&nbsp;в 15-00, продолжительность &nbsp;семинара - два дня(6 и 7 августа) каждый день по 4 часа с перерывом на кофе брейк.&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Если Вы решили, что этот семинар-тренинг именно для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.&nbsp;<br />\r\nАдминистратор-организатор: Лола&nbsp;<br />\r\nТелефон для справок: +998 90 946 16 36&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, м. Мирзо Улугбека, Бизнес-центр &quot; Euroasia insurance&quot; (вход в здание под вывеской &quot;STATUS&quot;), 3 этаж, 308 кабинет( 301кабинет, через него пройдете в 308 кабинет),ориентир- напротив стадиона Бунёдкор&nbsp;</p>\r\n\r\n<p style="text-align:justify">Подробности на сайте: http://www.samopoznanie-uz.com/ или на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!&nbsp;<br />\r\nС потоком любви и света Муштарий!</p>	35	seminar-trening-iskusstvo-vdohnovlyat-muzhchinu
36	ru	Семинар-тренинг "ОТКРОВЕННЫЙ И ДУШЕВНЫЙ РАЗГОВОР С МУЖЧИНАМИ"	<p><strong><em><u>30-31 ИЮЛЯ</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало семинара-тренинга 30 июля в 15-00, продолжительность семинара - два дня(30 и 31 июля) каждый день по 4 часа с перерывом на кофе брейк.</p>\r\n\r\n<p style="text-align:justify">Если Вы решили, что этот семинар-тренинг именно для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, м. Мирзо Улугбека, Бизнес-центр &quot; Euroasia insurance&quot; (вход в здание под вывеской &quot;STATUS&quot;), 3 этаж, 308 кабинет( 301кабинет, через него пройдете в 308 кабинет),ориентир- напротив стадиона Бунёдкор</p>\r\n\r\n<p style="text-align:justify">Подробности на сайте: http://www.samopoznanie-uz.com/ или на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!<br />\r\nС потоком любви и света Муштарий!</p>	36	seminar-trening-otkrovennyj-i-dushevnyj-razgovor-s
37	ru	Семинар-тренинг "Искусство вдохновлять Мужчину"!!!	<p><strong><em><u>23-24 ИЮЛЯ</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало семинара-тренинга 23 июля в 15-00, продолжительность &nbsp;семинара - два дня(23 и 24 июля) каждый день по 4 часа с перерывом на кофе брейк.&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Если Вы решили, что этот семинар-тренинг именно для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.&nbsp;<br />\r\nАдминистратор-организатор: Лола&nbsp;<br />\r\nТелефон для справок: +998 90 946 16 36&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, м. Мирзо Улугбека, Бизнес-центр &quot; Euroasia insurance&quot; (вход в здание под вывеской &quot;STATUS&quot;), 3 этаж, 308 кабинет( 301кабинет, через него пройдете в 308 кабинет),ориентир- напротив стадиона Бунёдкор&nbsp;</p>\r\n\r\n<p style="text-align:justify">Подробности на сайте: http://www.samopoznanie-uz.com/ или на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!&nbsp;<br />\r\nС потоком любви и света Муштарий!</p>	37	seminar-trening-iskusstvo-vdohnovlyat-muzhchinu
38	ru	Встреча "ОТКРОВЕННЫЙ РАЗГОВОР ПО ДУШАМ"	<p><strong><em><u>3 июля</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало встречи 3 июля в 15-00, продолжительность встречи &nbsp;4 часа с перерывом на кофебрейк.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;Если Вы решили, что эта встреча именно для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и хорошее настроение)))))))))))))))))))))))))</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, м. Мирзо Улугбека, Бизнес-центр &quot; Euroasia insurance&quot; (вход в здание под вывеской &quot;STATUS&quot;), 3 этаж, 308 кабинет( 301кабинет, через него пройдете в 308 кабинет),ориентир- напротив стадиона Бунёдкор</p>\r\n\r\n<p style="text-align:justify">Подробности&nbsp;на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!<br />\r\nС потоком любви и света Муштарий!</p>	38	vstrecha-otkrovennyj-razgovor-po-dusham
39	ru	Однодневный семинар-тренинг «Для чего мы болеем»	<p><strong><em><u>2 июля</u></em></strong></p>\r\n\r\n<p style="text-align:justify">&nbsp;Начало встречи 2&nbsp;июля &nbsp;в 15-00, продолжительность встречи &nbsp;4 часа с перерывом на кофебрейк.&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; Если Вы решили, что эта встреча для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и хорошее настроение)))))))))))))))))))))))))</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, м. Мирзо Улугбека, Бизнес-центр &quot; Euroasia insurance&quot; (вход в здание под вывеской &quot;STATUS&quot;), 3 этаж, 308 кабинет( 301кабинет, через него пройдете в 308 кабинет),ориентир- напротив стадиона Бунёдкор</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Подробности&nbsp;на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!<br />\r\nС потоком любви и света Муштарий!&nbsp;</p>	39	odnodnevnyj-seminar-trening-dlya-chego-my-boleem
40	ru	Семинар-тренинг "От Эго к Сердцу"	<p><strong><em><u>24-25-26 июня</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Продолжительность 3-дневного семинара каждый день по 4 часа с перерывом на кофебрейк.<br />\r\n&nbsp;Для записи на семинар-тренинг, просим Вас пройти регистрацию у нашего Администратора.&nbsp;<br />\r\nАдминистратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, м. Мирзо Улугбека, Бизнес-центр &quot; Euroasia insurance&quot; (вход в здание под вывеской &quot;STATUS&quot;), 3 этаж, 308 кабинет( 301кабинет, через него пройдете в 308 кабинет),ориентир- напротив стадиона Бунёдкор</p>\r\n\r\n<p style="text-align:justify">Подробности на сайте: http://www.samopoznanie-uz.com/ или на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!<br />\r\nС потоком любви и света Муштарий! &nbsp;&nbsp;</p>	40	seminar-trening-ot-ego-k-serdcu
42	ru	Семинар-тренинг "Уроки совершенства для современной женщины"	<p><strong><em><u>27-28-29-30-31 мая</u></em></strong></p>\r\n\r\n<p style="text-align:justify"><strong><em><u>&nbsp;</u></em></strong>Начало семинара-тренинга 27 мая&nbsp; в 16-00, продолжительность 5-дневного семинара каждый день по 4 часа с перерывом на кофе брейк.<br />\r\n<br />\r\nЕсли Вы решили, что этот семинар-тренинг именно для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\n<br />\r\nАдминистратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36<br />\r\n<br />\r\nАдрес: г. Ташкент, м. Мирзо Улугбека, Бизнес-центр &quot; Euroasia insurance&quot; (вход в здание под вывеской &quot;STATUS&quot;), 3 этаж, 308 кабинет( 301кабинет, через него пройдете в 308 кабинет),ориентир- напротив стадиона Бунёдкор<br />\r\n<br />\r\nПодробности на сайте: http://www.samopoznanie-uz.com/ или на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;<br />\r\n<br />\r\nБудем Искренне рады встрече и общению с Вами!<br />\r\nС потоком любви и света Муштарий!</p>	42	seminar-trening-uroki-sovershenstva-dlya-sovremenn
43	ru	7-дневный семинар – тренинг «Личная жизнь и Семья.»	<p><strong><em><u>29-30 апреля-1-2-3-4-5 мая</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало семинара-тренинга 29 апреля&nbsp; в 16-00, продолжительность 7-дневного семинара каждый день по 4 часа с перерывом на кофе брейк.<br />\r\n<br />\r\nЕсли Вы решили, что этот семинар-тренинг именно для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\n<br />\r\nАдминистратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36<br />\r\n<br />\r\nАдрес: г. Ташкент, м. Мирзо Улугбека, Бизнес-центр &quot; Euroasia insurance&quot; (вход в здание под вывеской &quot;STATUS&quot;), 3 этаж, 308 кабинет( 301кабинет, через него пройдете в 308 кабинет),ориентир- напротив стадиона Бунёдкор<br />\r\n<br />\r\nПодробности на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;<br />\r\n<br />\r\nБудем Искренне рады встрече и общению с Вами!<br />\r\nС потоком любви и света Муштарий!</p>	43	7-dnevnyj-seminar-trening-lichnaya-zhizn-i-semya
44	ru	Выездной семинар-тренинг "Уроки совершенства для современной женщины"	<p><strong><em><u>16-17-18-19-20 апреля</u></em></strong></p>\r\n\r\n<p style="text-align:justify"><strong><em><u>&nbsp;</u></em></strong>Если Вы хотите насладиться прекрасным горным пейзажем, чистотой воздуха и самое главное готовы к новым открытиям, которые Вам подарит наш семинар-тренинг, тогда это предложение для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36</p>	44	vyezdnoj-seminar-trening-uroki-sovershenstva-dlya
45	ru	Однодневный семинар-тренинг "Включи свой поток Изобилия!!!"	<p><strong><em><u>8 апреля</u></em></strong></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;&nbsp;Начало встречи 8 апреля в 16-00, продолжительность встречи &nbsp;4 часа с перерывом на кофебрейк.</p>\r\n\r\n<p style="text-align:justify">&nbsp;Если Вы решили, что эта встреча именно для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и хорошее настроение)))))))))))))))))))))))))</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, м. Мирзо Улугбека, Бизнес-центр &quot; Euroasia insurance&quot; (вход в здание под вывеской &quot;STATUS&quot;), 3 этаж, 308 кабинет( 301кабинет, через него пройдете в 308 кабинет),ориентир- напротив стадиона Бунёдкор</p>	45	odnodnevnyj-seminar-trening-vklyuchi-svoj-potok-iz
51	ru	Курс#01-"Путь к Себе".	<p><strong><em><u>23-24-25-26-27 октября</u></em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Телефон для справок:&nbsp;+998 90 946 16&nbsp;36&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!</p>\r\n\r\n<p style="text-align:justify">С&nbsp; потоком любви и света Муштарий!</p>	51	kurs01-put-k-sebe
53	ru	Курс#02 - “Жизнь и Семья. И то что между Жизнью и Семьей”	<p><strong><em><u>(Семинар будет проходить на узбекском языке)</u></em></strong></p>\r\n\r\n<p>16-17-18-19-20 Сентября.</p>\r\n\r\n<p>Организатор:&nbsp;Лола</p>\r\n\r\n<p>Телефон&nbsp;для&nbsp;справок:&nbsp;+99890&nbsp;946&nbsp;16 36</p>\r\n\r\n<p>Будем Искренне рады встрече&nbsp;и общению&nbsp;с Вами!</p>\r\n\r\n<p>С потоком любви и света Муштарий!&nbsp;</p>	53	kurs02-zhizn-i-semya-i-to-chto-mezhdu-zhiznyu-i-se
46	ru	Мастер-класс от Муштарий Юлдашевой.	<p><strong><em><u>6 марта</u></em></strong></p>\r\n\r\n<p style="text-align:justify">&nbsp;Начало встречи 6 марта в 14-00, продолжительность встречи &nbsp;4 часа с перерывом на кофебрейк.&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; Если Вы решили, что эта встреча для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и хорошее настроение)))))))))))))))))))))))))</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, м. Мирзо Улугбека, Бизнес-центр &quot; Euroasia insurance&quot; (вход в здание под вывеской &quot;STATUS&quot;), 3 этаж, 308 кабинет( 301кабинет, через него пройдете в 308 кабинет),ориентир- напротив стадиона Бунёдкор</p>\r\n\r\n<p style="text-align:justify">Подробности на сайте: http://www.samopoznanie-uz.com/ или на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!<br />\r\nС потоком любви и света Муштарий!</p>	46	master-klass-ot-mushtarij-yuldashevoj
47	ru	Встреча по теме "Что такое Любовь- чувство или состояние Души?"	<p><strong><em><u>13 февраля</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Начало встречи 13 февраля в 14-00. Продолжительность &nbsp;4 часа с перерывом на кофе брейк.<br />\r\nВстреча проводится на русском и узбекском языках.</p>\r\n\r\n<p style="text-align:justify">Если Вы решили, что эта встреча для Вас, просто позвоните и пройдите регистрацию у нашего администратора-организатора. Хотим напомнить вам, что количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и хорошее настроение)))))))))))))))))))))))))</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор: Лола<br />\r\nТелефон для справок: +998 90 946 16 36</p>\r\n\r\n<p style="text-align:justify">Адрес: г. Ташкент, м. Мирзо Улугбека, Бизнес-центр &quot; Euroasia insurance&quot; (вход в здание под вывеской &quot;STATUS&quot;), 3 этаж, 308 кабинет( 301кабинет, через него пройдете в 308 кабинет),ориентир- напротив стадиона Бунёдкор</p>\r\n\r\n<p style="text-align:justify">Подробности на сайте: http://www.samopoznanie-uz.com/ или на нашей странице в facebook &quot;Саморазвитие и Самопознание&quot;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!<br />\r\nС потоком любви и света Муштарий!</p>	47	vstrecha-po-teme-chto-takoe-lyubov-chuvstvo-ili-so
48	ru	БЛАГОТВОРИТЕЛЬНЫЙ ДЕНЬ ОТКРЫТЫХ ДВЕРЕЙ	<p><strong><em><u>23 декабря</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Доброго времени суток ВСЕМ!!! Муштарий приглашает Вас на БЛАГОТВОРИТЕЛЬНЫЙ ДЕНЬ ОТКРЫТЫХ ДВЕРЕЙ, который состоится в один из предновогодних дней 23 декабря в 16:00 и пройдет в теплой, приятной обстановке в кругу наших друзей и единомышленников.<br />\r\n<br />\r\nВстреча проводится на русском и узбекском языках<br />\r\n<br />\r\nСовсем скоро позади останется 2015 год со всеми своими &quot;проблемами, недочётами, неурядицами, кризисом&quot; и прочим другим, что, как принято говорить, не мешало бы оставить в уходящем году.<br />\r\nНО!<br />\r\nОставлять в прошлом году ничего не стоит, так как все незавершенное перенесется в новый год!<br />\r\nПоэтому мы предлагаем заложить решение всего накопившегося уже в этом году!<br />\r\n<br />\r\nКак это сделать, Вы можете узнать на нашей встрече абсолютно бесплатно.<br />\r\n<br />\r\nЭто уникальная возможность:<br />\r\n*Осознать всю глубину и охватить весь спектр причин волнующих Вас проблем, происходящих событий &mdash; психологических, социальных, родовых, кармических, физических и т.д.;<br />\r\n*Найти пути решения вопросов;<br />\r\n*Рассмотреть свои потенциальные возможности для дальнейшего роста, развития, движения к счастью;<br />\r\n*Изучить практику трансформации боли от обиды;<br />\r\n*Ознакомиться с практикой &quot;Манифестация желаемого&quot; (техника исполнения желаний)<br />\r\n*Обменяться опытом, поделиться результатами;<br />\r\nИ самое важное, каждый участник может получить личные рекомендации от Муштарий!</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Чтобы попасть на семинар-тренинг просим Вас пройти регистрацию у нашего администратора-организатора. Количество мест ограничено.<br />\r\nРекомендуем захватить с собой блокнот, ручку и Ваши любимые вкусняшки для перекусов.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!<br />\r\nС потоком любви и света Муштарий!</p>	48	blagotvoritelnyj-den-otkrytyh-dverej
49	ru	Курс#01-"Путь к Себе".	<p><strong><em><u>6-7-8-9-10 ноября</u></em></strong></p>\r\n\r\n<p style="text-align:justify">Чтобы попасть на семинар-тренинг просим Вас пройти регистрацию у нашего администратора-организатора. Количество мест ограничено.</p>\r\n\r\n<p style="text-align:justify">Администратор-организатор:&nbsp;Лола</p>\r\n\r\n<p style="text-align:justify">Телефон для справок: +998 90 946 16 36</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Будем Искренне рады встрече и общению с Вами!</p>\r\n\r\n<p style="text-align:justify">С потоком любви и света Муштарий!</p>	49	kurs01-put-k-sebe
50	ru	Муштарий приглашает всех на тематическую встречу "Родителям о Детях" !!!	<p><strong><em><u>31 октября в 13:30</u></em></strong></p>\r\n\r\n<p style="text-align:justify">По многочисленным просьбам, мы приглашаем Вас на встречу наших семинаристов, наших друзей, всех тех, кто занимается саморазвитием и находится в поисках себя на чашку чая и теплую встречу с Муштарий Юлдашевой.</p>\r\n\r\n<p style="text-align:justify">Откройте для себя секреты теплых и искренних взаимоотношений с &quot;самыми важными&quot; людьми в жизни-- с Детьми!</p>\r\n\r\n<p style="text-align:justify">Если Вы задаетесь вопросом:</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p style="text-align:justify">В чем моя родительская поддержка?</p>\r\n\t</li>\r\n\t<li>\r\n\t<p style="text-align:justify">&nbsp;Что я могу сделать для своего ребенка?</p>\r\n\t</li>\r\n\t<li>\r\n\t<p style="text-align:justify">&nbsp;Как я могу максимально вложиться в него?</p>\r\n\t</li>\r\n\t<li>\r\n\t<p style="text-align:justify">&nbsp;Какова его настоящая потребность во мне?</p>\r\n\t</li>\r\n\t<li>\r\n\t<p style="text-align:justify">&nbsp;Как я могу проявиться, как родитель, наилучшим образом для своего ребенка?</p>\r\n\t</li>\r\n</ul>\r\n\r\n<p style="text-align:justify">&nbsp;и особенно, если Вы уже столкнулись с какими-то сложностями или просто хотите наладить отношения с детьми, то эта встреча для Вас.</p>\r\n\r\n<p style="text-align:justify">На встрече будут рассмотрены следующие темы:</p>\r\n\r\n<p style="text-align:justify">-рождение ребенка</p>\r\n\r\n<p style="text-align:justify">-три основные задачи прихода ребенка в семью</p>\r\n\r\n<p style="text-align:justify">-воспитание ребенка для реализации им программы жизни</p>\r\n\r\n<p style="text-align:justify">-пять стадий жизни ребенка</p>\r\n\r\n<p style="text-align:justify">-дети и развод родителей</p>\r\n\r\n<p style="text-align:justify">-родители в процессе развода</p>\r\n\r\n<p style="text-align:justify">-дети и компьютерные игры.</p>\r\n\r\n<p style="text-align:justify">Если Вы давно уже ищете ответ на вопрос, что такое чувственные и гармоничные отношения с детьми и возможно ли их создать, то мы сердечно приглашаем Вас на нашу встречу &quot;Родители и Дети&quot;.</p>	50	mushtarij-priglashaet-vseh-na-tematicheskuyu-vstre
1	ru	Об авторе	<h2 style="text-align:center"><span style="font-size:18px">Парапсихолог-Консультант, работает через раскрытие души человека</span></h2>\r\n\r\n<ul>\r\n\t<li>\r\n\t<h2 style="text-align:justify"><span style="font-size:14px">окончила школу В.В. Синельникова; консультирует по методу О.Г. Торсунова, А.А. Некрасова;</span></h2>\r\n\t</li>\r\n\t<li>\r\n\t<h2 style="text-align:justify"><span style="font-size:14px">практик технологии образного творения (прошла обучение ТОТ по методу Г. Болгова и Е. Железцовой);</span></h2>\r\n\t</li>\r\n\t<li>\r\n\t<h2 style="text-align:justify"><span style="font-size:14px">мастер 6-го уровня по методу ThetaHealing; прошла обучение в филиалах школы Вианны Стайбл (Viana Stibal);</span></h2>\r\n\t</li>\r\n\t<li>\r\n\t<h2 style="text-align:justify"><span style="font-size:14px">училась в школе Ричарда Бартлетт и Мелиссы Джой по технике мгновенная трансформация - курс MATRIX ENERGETICS (&quot;Пространственное ясновидение&quot;);</span></h2>\r\n\t</li>\r\n\t<li>\r\n\t<h2 style="text-align:justify"><span style="font-size:14px">нумеролог 2-го уровня (Нумерология личности, Семейная жизнь, Работа, Мужчина и Женщина, а также Профессиональная Ориентация);</span></h2>\r\n\t</li>\r\n\t<li>\r\n\t<h2 style="text-align:justify"><span style="font-size:14px">Мастер &quot;РЕЙКИ&quot; (метод целительства);</span></h2>\r\n\t</li>\r\n\t<li>\r\n\t<h2 style="text-align:justify"><span style="font-size:14px">Терапевт Божественного Выравнивания Тела/Позвоночника (Целительство техники &quot;Нама Ба Хала&quot;);</span></h2>\r\n\t</li>\r\n\t<li>\r\n\t<h2 style="text-align:justify"><span style="font-size:14px">получила инициацию исцеления через сердце - это система БЕЛВАСПАТА, автором которой является Альмин.</span></h2>\r\n\t</li>\r\n\t<li>\r\n\t<h2 style="text-align:justify"><span style="font-size:14px">окончила школу тренеров по проведению семинаров, также продолжает обучение у духовных деятелей.</span></h2>\r\n\t</li>\r\n\t<li>\r\n\t<h2 style="text-align:justify"><span style="font-size:14px">В данный момент занимается индивидуальным коучингом;</span></h2>\r\n\t</li>\r\n</ul>	1	ob-avtore
54	ru	Причины нарушения потока Изобилия	<p>Поток изобилия &mdash; это энергия, положенная вам по праву рождения, энергия всего, энергия удовлетворения всех ваших нужд: на питание, на одежду, жильё,обучение, на путешествия, на досуг.</p>\r\n\r\n<p>Энергия изобилия &mdash; это и ваше жильё, и неожиданно найденная вещь, и ваша зарплата, работа, предметы, которые вас окружают. Энергия изобилия даётся вам в виде пищи, в виде развлечений, увлечений.</p>\r\n\r\n<p>Всё, что вам приходит &mdash; это энергия, которая даёт всё нужное для жизни вокруг вас. Это не только деньги.</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p>Когда вы начинаете за что‐то сильно цепляться, очень сильно к чему‐то привязываетесь &mdash; например, к той же бумажке, которую вы&nbsp;стараетесь не разменивать &mdash; вы тем самым пресекаете поток в некоторых местах.&nbsp;Если вы видите, что какая‐то вещь вам точно не нужна &ndash; лучше отдайте её кому‐то, кто в ней нуждается или просто выбросьте. Если вы продолжаете за неё держаться и хранить её ‐ эта вещь пресекает приход потока изобилия в вашу жизнь. &nbsp;Если у вас лежит 3 пары поношенной обуви &mdash; то вы не можете купить новую, потому что вы держитесь за старую, в надежде её починить, но не чините уже долгое время, не пользуетесь ей. Опять же идёт прерывание потока. Возможно надо что‐то выбросить, для того чтобы к вам пришло новое.&nbsp;Когда вы двигаете предметы и денежные потоки в пространстве &mdash; вы инициируете свой поток и подталкивает его к развитию.&nbsp;Когда вы очень сильно переживаете о том, что вам не хватает денег или нет жилья, например, то вы сразу перекрываете поток, потому что вы всё время говорите пространству, что у вас этого нет.&nbsp;Вы как будто делаете в каком‐то месте потока затычку &mdash; чтобы у вас этого и не было.&nbsp;А нужно сказать себе: у меня пока ещё нет собственного жилья &mdash; но оно у меня скоро появится! Таким образом вы ищете способ, как это жильё получить, и представляете себе, что эта квартира у вас уже есть, тем самым инициируя появление этой квартиры в своём пространстве.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Страх принятия потока.&nbsp;Иногда люди просто боятся принять изобилие в свою жизнь.&nbsp;Каждый поток даётся человеку таким, каким человек способен его освоить. То, как вы пользуетесь вашим потоком, зависит только от вас. Вы можете искать то событие, которое подходит именно вам, использовать его гармонично для себя и окружающего мира.&nbsp;Постарайтесь наполнить свою жизнь счастливыми вещами и событиями. Постарайтесь не отказывать себе в том, что вам хочется и необходимо.&nbsp;Учитесь как копить деньги, так и их тратить.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Упрямство и изобилие.&nbsp;Иногда человек, решив действовать по выбранному сценарию, уже не видит изменяющихся обстоятельств... Даже если они совсем на виду. А часто надо быстро действовать и подстраиваться под эти обстоятельства.&nbsp;Но человек, один раз всё просчитав, становится неповоротлив, и упускает шанс, так как упирается только в одно решение проблемы и перестаёт оглядываться по сторонам.&nbsp;Так поступают черепахи &mdash; они не могут отползти назад или обойти препятствие, если они натыкаются на него. Они могут даже умереть‐это свойство этого животного.&nbsp;Очень многие люди поступают так же &mdash; упираются только в одно мнение и не могут изменить своё решение, даже если видят, что их дело пробуксовывает.&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Стыд признаться в том, что ты чего‐то не знаешь.&nbsp;Иногда человек, начиная какое‐то новое дело, стыдится признаться в том, что он не знает деталей и простых вещей... И ни за что не спросит у других, как правильно сделать.&nbsp;Он лучше предпочтёт отказаться от нового дела, чтобы не упасть в чьих‐то глазах из‐за своего незнания ситуации, чтобы не попасть впросак. Ему кажется, что другие осудят его или будут над ним смеяться.&nbsp;Но вы должны понять, что лучше взяться за дело, и в процессе разузнать все детали и тонкости, спросить у тех, кто знает.&nbsp;Проще один раз спросить и быть в курсе, чем каждый раз замыкаться и отказываться от целого дела... Только из‐за того, что тебя мучает ложное чувство стыда.&nbsp;Никогда не стесняйтесь спрашивать, даже если человек знающий‐младше вас или стоит ниже вас на социальной лестнице. Потому что спросив &mdash; вы получите информацию, а не спросив‐останетесь не у дел. Человек не обязан знать всё!</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Нежелание и страх что‐то предпринять.&nbsp;Надо уметь пользоваться своим потоком. Нельзя сидеть и ждать, когда что‐то упадёт с неба.&nbsp;Вы можете сидеть на берегу моря и ждать золотую рыбку... А можете сами включаться в действие. Надо постоянно искать свою нишу. И не ждать, пока поток пробьётся к вам сам. У бога нет рук, кроме ваших.&nbsp;Ничего не предпринимая, вы закрываете свой поток изобилия.&nbsp;Но это не значит, что надо хвататься за первое, что вам подвернётся. Надо быть избирательными. И главный критерий &mdash; надо делать то, что вам действительно нравится!</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Неумение тратить и копить деньги.&nbsp;Когда денег собирается много, некоторые люди боятся их тратить. Они хотят сохранить их, держатся за них, с трудом расстаются с ними, с трудом тратят.&nbsp;Люди не понимают, как движутся деньги.... Они не пускают их в оборот. Это неправильная позиция. Эти бумажки ‐ это не есть сам поток изобилия... Это только обозначение потока, необходимое людям.&nbsp;На самом деле, поток всегда идет сквозь человека. И, держась за него, останавливая его, вы его прерываете... Не понимая того, что вовремя отпущенные деньги принесут вам большие деньги.&nbsp;Помните фразу: &quot;Больше ушло &mdash; больше придет&quot;.&nbsp;Когда вы тратите на нужную вещь большую сумму, которая пробивает брешь в бюджете, то вместо того, чтобы жалеть об этом, просто скажите эту фразу ‐ и брешь тут же заполнится.&nbsp;Не жалейте о пущенных в оборот деньгах &mdash; они вернутся, если только вы не будете ставить заслонок у себя в душе.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Желание раздать всем намного больше, забыв о себе.&nbsp;У каждого человека есть свой поток изобилия. И каждый вправе распоряжаться им так, как он считает нужным. Поэтому не переживайте за неимущих‐ они сами когда‐то отказались от своего потока изобилия и сами выбрали для себя такой урок. Вы не имеете права влиять на такой их выбор. Вы можете влиять только на свой выбор. Не мешайте другим проходить их уроки!</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Ложные представления о богатстве и бедности.&nbsp;У людей веками сложились свои шаблоны и стереотипы мышления о богатстве и бедности. Например: Богатым быть плохо, а бедным &mdash; хорошо. Богатым быть стыдно, потому что только вор, обманщик или грабитель может быть богат. Богатым быть опасно‐можно потерять даже жизнь из‐за богатства.&nbsp;Это неверные представления людей. Они часто предпочитают не выделяться среди своего окружения своим благополучием, боятся, чтобы им не завидовали и не осуждали их. Люди боятся потерять круг своего общения из‐за того, что они более успешны и удачливы, чем их друзья. Люди забывают, что истинные друзья будут только рады вашим успехам. И стоит ли держаться за тех друзей, которые начнут вставлять тебе палки в колёса или завидовать и злиться?Избавляйтесь от этих шаблонов, чтобы не попадать в такую ловушку сознания &mdash; когда человек стесняется рассказывать о своём успехе, старается замалчивать свои достижения перед друзьями, чтобы не вызвать у них раздражения или зависти.&nbsp;Старайтесь избавиться от своей наивности ‐она мешает вам верно взглянуть на сам поток изобилия &mdash; Вам кажется, что вы не достойны его, или не заслужили. Это мешает вам верно понять этот источник энергии ‐его предназначение, его нужность.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Попытка достичь совершенства.&nbsp;Упёртое желание достичь абсолютного совершенства так же перекрывает ваш поток изобилия. Вы должны понять, что понятие совершенства у каждого своё.&nbsp;Попытки всё время отказаться от хорошего, чтобы достичь ещё лучшего‐только всё портят. К своим работам, конечно, нужно относиться с разумной долей критики, но и не доводить эту критику до абсурда.&nbsp;Поймите, что идеал недостижим! Время идёт &mdash; меняются представления об идеалах. Пока вы делаете что‐то идеальное, требования за это время могут измениться... а вы подгоняете себя под шаблон &laquo;идеала&quot;. Из‐за этого потом в вашей душе возникает диссонанс, который вас же и разрушает... И мешает развиваться дальше. Каждое дело надо делать уже с новой точки зрения. Тогда вы будете максимально гармоничны с миром и собой!</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Неумение принимать подарки судьбы.&nbsp;Для каждого человека существует свой, положенный только ему поток изобилия. И только он сам решает, принять его или нет.&nbsp;Иногда люди боятся: а вдруг они не имеют на это права? Если бы человеку не было положено право на его принятие &mdash; он бы к нему и не пришёл.&nbsp;Поток является частью самого человека &mdash; как его рука, нога, или кровь, например. Как его тонкие тела, его сердце, воля. И поток готов служить именно вам.&nbsp;У других людей есть свои потоки изобилия. И они служат именно им.&nbsp;Не надо стесняться подарков судьбы. Они всегда приходят к человеку только заслуженно.... Незаслуженных подарков просто не бывает. Надо помнить это и быть благодарным миру за них. Мир таким образом показывает вам, как он любит вас и заботится о вас. Точно так же, как и вы‐любите его и заботитесь о нём. Будьте друзьями с окружающим вас миром! а в отношениях настоящих друзей нет места стеснению и непринятию подарков. Просто расслабьтесь и примите его.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Неумение решать проблемы по мере их поступления.&nbsp;Если перед вами поставлена сложная задача &mdash; не торопитесь решать её сразу. Сначала разбейте её на более мелкие части и решайте всё последовательно &mdash; дело за делом.&nbsp;Не пытайтесь держать в голове всё сразу, а составьте список всех составляющих, чтобы ничего не упустить впоследствии. Старайтесь избежать шаблона мышления &mdash; что &laquo;все большие дела делаются только с большими трудностями&raquo;. Разбив их на промежуточные фазы, легко приступайте к их реализации.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Неумение правильно отдавать долги.&nbsp;Никогда не распределяйте заранее ещё не полученные деньги!&nbsp;Распределённый заранее поток не полученных ещё средств, как правило, перекрывается. Особенно, если вы планируете этими не полученными средствами раздать какие‐то долги. Вы перенаправляете поток энергии изобилия тому, кому вы должны. Он получает этот поток откуда‐то из другого места, а до вас этот поток так и не доходит.&nbsp;Получается, что вы ему &laquo;отдаёте&raquo; энергию своего потока, оставаясь всё равно при этом должными ему.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Отказ принять мелкие крохи, упрямое нежелание видеть очевидные вещи.&nbsp;Люди не любят &laquo;поднимать мелкие монеты&raquo;,они не считают, что должны уделять внимание мелочам или выполнять небольшую работу. Они хотят сразу и много: только крупного дохода, только крупную рыбу, а всё остальное не принимают в расчёт.&nbsp;Даже если мелкой рыбы очень много... Они почему‐то решают для себя, что много мелкой рыбы не бывает...&nbsp;Но ведь бывает по‐всякому. Это упрямство человеческое, нежелание видеть &laquo;лес за деревьями&raquo;... Это однобокое отношение к потоку изобилия. Он, в действительности, более широк, и обладает большими возможностями, чем мы можем себе представить.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Вышибание из потока малейшей неопрятностью или не состыковкой.&nbsp;Часто из‐за этого люди теряют весь положительный настрой, который был вначале. И, соответственно, получают меньше, чем хотели и заслуживали получить.&nbsp;Они не до конца верят в себя, и даже маленькая неприятность вышибает их из колеи. И они начинают слишком злиться на то, что мир не помогает им.&nbsp;Но, возможно, ваш подвернувшийся каблук призывает вас оглянуться и посмотреть &mdash; а туда ли вы идёте?&nbsp;Люди просто не видят всей картины и не желают учитывать очевидные вещи. Учитесь глубже видеть ситуации и проникать в них. Учитесь яснее их понимать, чтобы легче в них разбираться.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Недоверие миру и самому себе.&nbsp;Некоторые люди, приняв одно решение‐тут же заменяют его другим. Очень часто они сомневаются и в своих решениях, и в событиях, которые с ними происходят.&nbsp;Иногда им кажется, что они‐ к добру или к худу‐ всегда ошибаются в прогнозах этих событий...&nbsp;Это также влияет на движение потока изобилия.&nbsp;Что же является детонатором этой потери доверия? Недоверие миру и самому себе, видение конечного результата в негативном проявлении.&nbsp;Все смертны‐все там будем, так зачем же суетиться... Как бы я ни старался, каким бы святым я не был‐и святой и грешник оказываются рано или поздно в гробу... Ничто не спасает от этого... Все человеческие усилия‐тщетны...&nbsp;У таких людей отсутствует понимание, что после смерти человек возрождается вновь. Они считают, что жизнь конечна и верят в то, что человек уходит навсегда... Они не могут оценить весь путь, пройденный их душой. Только их сердце может подсказать им веру и надежду, которые покажут им любовь и доверие. Сердце, которое освободится наконец от страха конечного бытия. Сердце, которое обретёт мысли и чувства, глаза и уши. А глаза и уши у сердца ‐ ваши, и мысли его ‐ ваши, и душа его ‐ ваша. Освободитесь и перестаньте таскать за собой свои страхи! Даже если вы привыкли это делать.&nbsp;</p>\r\n\t</li>\r\n</ul>	54	prichiny-narusheniya-potoka-izobiliya
55	ru	Молитва "О Любви к Себе"..	<p style="text-align:justify">О Творец Всемогущий, отец мой, молю Тебя помочь мне принять себя такой, какая я есть.<br />\r\n<br />\r\nПомоги мне принять мой разум, все мои чувства и желания с моей неповторимой сутью. Помоги мне принять мое тело, таким, какое оно есть, во всей его красоте и совершенстве. Пусть моя любовь к самой себе будет так сильна, что я никогда больше не отвергну себя, не стану лишать себя счастья, внутренней свободы и любви.<br />\r\n<br />\r\nПомоги мне любить себя и принимать себя без осуждения, ибо когда я сужу себя, то признаю себя виноватой и я вынуждена наказывать и корить себя, а это сбивает меня с пути любви.<br />\r\n<br />\r\nУкрепи же мою волю и стремление прощать себя. Очисти ум мой от эмоционального яда и самоосуждения, чтобы я могла жить в полном покое и любви. Пусть каждый поступок, каждая моя реакция, каждая мысль и чувство будут отныне основаны на любви.<br />\r\n<br />\r\nОтец, помоги мне укреплять любовь к себе, пусть преобразиться вся моя жизнь, пусть страхи и трагедии - сменятся любовью и радостью.<br />\r\n<br />\r\nДа будет сила моей любви к себе так велика, что свободна я стану от чужого мнения, и буду жить и поступать по искреннему велению сердца моего.<br />\r\n<br />\r\nПомоги мне полностью довериться тебе. На всякий миг моей жизни наставь и поддержи меня.<br />\r\nПусть моя вера и любовь к себе позволят мне смело брать на себя ответственность, не пугаться трудностей и решать их, если они возникнут.<br />\r\n<br />\r\nПомоги мне твердо верить, что все что ниспослано тобою - на благо мне, и что всегда найдется решение и люди, которые помогут на пути моем.<br />\r\n<br />\r\nПусть всё чего мне хочется достичь, свершается силой любви самым приятным и эффективным для меня способом.<br />\r\nПусть на лице моем сияет улыбка, придающая мне внутреннюю и внешнюю красоту.<br />\r\n<br />\r\nПомоги мне ощутить такую сильную любовь к себе, чтобы я неизменно радовалась общению с собой.<br />\r\nПусть моя любовь к себе станет той силой, которая изменит мою жизнь. И когда в душе моей проснётся эта новая сила, пусть преобразятся все мои близкие отношения, начиная с отношений с самой собой.<br />\r\n<br />\r\nДав мне силу любить себя, позволь всем моим отношениям строиться на любви и уважении. Помоги мне избавиться от нужды говорить другим, как им думать и какими им быть.<br />\r\n<br />\r\nПомоги мне принимать других такими, какие они есть, без оценок и осуждения, ибо, отвергая их, я отвергаю саму себя, а отрицая себя, отрицаю Тебя.<br />\r\n<br />\r\nПомоги мне полюбить себя так крепко, чтобы я могла простить любого, кто причинил мне боль.<br />\r\nДай мне мудрости любить свою семью и друзей без всяких условий, стать радостной и любящей.<br />\r\n<br />\r\nПомоги мне найти новые пути общения, чтобы не было больше войны за контроль и власть, не было победителей и побеждённых. Я буду трудиться, направляя своё усилие на любовь, радость и гармонию.<br />\r\nПомоги мне встретить родную душу.<br />\r\n<br />\r\nМужчину самого лучшего и близкого для меня.<br />\r\n<br />\r\nПусть мои романтические отношения будут самыми прекрасными и гармоничными для меня. Помоги мне испытывать радость всякий раз, когда я буду отдавать себя любимому человеку. Помоги построить семью на любви, согласии, гармонии и стать счастливой, наполненной любовью женой и матерью. Даруй мне мудрость, внутренние силы и любовь в сердце, чтобы исполнить свое женское предназначение и найти в этом свое счастье.<br />\r\n<br />\r\nПомоги мне, Боже, возлюбить все, что сотворено Тобой, вне всяких условий, ибо когда я отрицаю Твое творение, я отрицаю Тебя.<br />\r\n<br />\r\nПомоги мне радоваться этой жизни и Миру, изучать, наполняться светлыми желаниями и стремлениями, стать уверенной и смелой, по настоящему живой и любить себя безусловной любовью.<br />\r\nПозволь мне открыть свое сердце навстречу любви, чтобы могла я найти ее везде и всюду, куда бы ни отправилась.<br />\r\n<br />\r\nПомоги мне самой излучать любовь и свет.<br />\r\nПомоги мне распахнуть свое сердце для Мира.<br />\r\nПомоги стать воплощением Женственности, Благодарности, Великодушия, Любви и Гармонии, чтобы я могла радоваться всему сотворённому Тобой-во веки веков! Аминь.</p>	55	molitva-o-lyubvi-k-sebe
56	ru	Живот - место накопления женской энергии	<p>Для многих женщин живот &mdash; это закрытая зона, его утягивают, прячут, избегают прикосновений мужчины к нему, потому что современная культура внушила женщине, что живот должен быть как у мужчины с кубиками, плоский, накачанный, тогда это &laquo;красиво&raquo;.&nbsp;</p>\r\n\r\n<p>Нынче женщины мало знаеют об этой важной зоне в теле женщины и зачастую калечат свое женской здоровье из-за рекламы и стереотипов. Давайте разбираться по порядку о важности этой части женского тела.&nbsp;</p>\r\n\r\n<p>Живот в переводе со многих языков означает Жизнь, и впрямь каждый из нас начинал свою жизнь именно в животе у своей матери. Для женщины живот &mdash; это не просто зона на теле &mdash; это место силы, это источник ее благ и энергии, это место Творения Жизни (только представьте это).&nbsp;</p>\r\n\r\n<p>Именно в животе (область ниже пупка, там, где находится матка и репродуктивные органы) женщина собирает энергию, основная ее сила именно там. Энергетически женщина устроена, как сосуд, ее основная энергия идет от Земли и собирается в животе. Накопившись там, эта энергия снабжает все тело женщины, делая ее по-женски сильной и безумно привлекательной.&nbsp;</p>\r\n\r\n<p>Если в животе энергии достаточно и она течет правильно, то женщина:&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p>женственная, мягкая, гибкая;&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>сексуальная, привлекательная;&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>легко зачинает и вынашивает ребенка;&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>легко рожает (без травм и последующих растяжек);&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>уверенна в своей силе и спокойна;&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>полна жизни, от нее прямо исходит энергия жизни дарованная матушкой &mdash; Землей;&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>она получает наслаждение от близости с людьми и от сексуальной близости;&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>она чувствует связь со стихиями и с природой, получает от нее силу.&nbsp;</p>\r\n\t</li>\r\n</ul>\r\n\r\n<p>Но таких женщин единицы, у 80% женщин присутствует в разной степени паховый блок в теле. Ныне женщин с детства учат втягивать живот, держать его напряженным, утягивать, но что это дает:&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p>Блокировку энергии к высшим центрам;&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Неспособность глубоко расслабиться;&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Зажатое поверхностное дыхание, неспособность продохнуть через все тело;&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Женские болезни;&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Тяжелые месячные и пмс;&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Накопление страхов и тревог;&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Неспособность получать наслаждение;&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Непринятие своей природы;&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Жесткость, костность, отсутствие гибкости;&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Напряженный живот &mdash; напряженная жизнь;&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Выработка мужских качеств.&nbsp;</p>\r\n\t</li>\r\n</ul>\r\n\r\n<h4>Блоки в области живота формируются по нескольким причинам.&nbsp;</h4>\r\n\r\n<p>Главная из них &mdash; это отношения с матерью. Изначально мы были соединены с мамой именно через живот, через пуповину. От мамы мы получали все эмоции, всю информацию о мире. Если маме было страшно всю беременность, если она не готова была к ребенку &mdash; у ребенка, скорее всего, будет непринятие себя, неспособность наслаждаться и радоваться, потому что главный человек в его жизни не позволил ему этого. Именно от мамы рождаются многие страхи, комплексы и блоки, и многие женщины уже от рождения сильно зажаты.&nbsp;</p>\r\n\r\n<p>Но от мамы мы также можем получить и высшее наслаждение и тотальное принятие себя. Она источник жизни и ее живот источник благ. Если мама в беременность была радостна, счастлива, ждала ребеночка, радовалась ему, если она защищала его &mdash; то ребенок рождается уверенным в себе, с принятием своей природы и изначально очень расслабленным. Поэтому, как ни крути, мама тот человек с которого нужно начинать работу над собой. Примите маму &mdash; примите свой живот (свою жизнь и свою природу) &mdash; полюбите себя!&nbsp;</p>\r\n\r\n<p>Причем идеально будет проработать именно внутриутробную жизнь, включить музыку спокойную, представить себя в животе своей мамы, что вы связаны пуповиной, вы одно целое и неразрывное, вы слышите ее сердце и это самая приятная музыка для вашей души. Нужно представлять, как мама радуется Вам, как ждет (даже если реально это было не так). Медитируйте на пуповину, на глубочайшую связь ваших тел, ваших жизней. Примите, что вы одно. Дышите в один такт, существуете вместе. Она любит и защищает Вас. Она питает Вашу жизнь. Мама&hellip;&nbsp;</p>\r\n\r\n<p>Дышите и чувствуйте связь. Возможно, Вам захочется плакать, это хорошо, нужно поплакать &mdash; так уходят страхи, и возрождается близость. Эту медитацию нужно делать до тех пор, пока не придет полное принятие того, что Вы дитя своей матери, что Вы ее кровь и плоть, ее часть. Это не только углубит отношения, но и принесет спокойствие и расслабление.&nbsp;</p>\r\n\r\n<p>Также часто паховый блок формируется от травматичного сексуального опыта, женщина зажимается и больше не хочет подпускать к себе мужчину, даже порой в браке она просто терпит и ждет, когда сексуальная близость закончится. Можно переписать сценарий этой связи. Сначала нужно выписать на бумагу травму, писать о ней до тех пор, пока будут идти слова. А потом все сжечь. И мысленно визуализировать другой образ той близости, более приятный, расслабленный.&nbsp;</p>\r\n\r\n<p>Также хорошо с мужем провести следующую практику:&nbsp;</p>\r\n\r\n<p>Женщина ложится и расслабляется, закрывает глаза, а муж просто гладит ее по животу по часовой стрелке, иногда чуть нажимает, потом снова просто ласково. Гладить нужно именно зону живота, которая ближе к паху. В тантрических сексуальных практиках женщину готовят к близости через массаж живота. Сначала делают дыхательные практики, массаж тела, массаж живота в области паха, а потом происходит близость в которой женщина способна испытывать не только Божественное наслаждение, но и глубокий оргазм.<br />\r\n<br />\r\nОдин мастер работал с фригидной женщиной, которая за 35 лет жизни ни разу не испытывала оргазма и удовольствия от близости. Он научил ее супруга делать массаж живота, и через несколько сеансов такого массажа женщина первый раз ощутила не только глубокую доверительную связь со своим супругом, но и наслаждение от близости и оргазм.&nbsp;</p>\r\n\r\n<p>Стоит предупредить, что в области живота скапливается огромное количество эмоций, как хороших, так и негативных, и чтобы дойти до приятных ощущений, нужно будет выпустить все негативное, что там накопилось.&nbsp;Обычно при первых сеансах массажа живота выходят страхи через слезы, сокращение мыщц. Страхи всегда держат нас в напряжении, не дают нам расслабиться. Поэтому первым этапом Вы выпустите свои страхи, порыдаете, а потом наступит спокойствие, а за ним блаженство. При массаже живота высвобождается много зажатой энергии, и Вы можете почувствовать возбуждение. Это нормально.&nbsp;</p>\r\n\r\n<p>Следующая причина возникновения зажатости в животе &mdash; это сильные страхи и тяжелые эмоциональные состояния: потеря близких людей, конфликтные отношения в семье, серьезные разочарования в жизни, долго сдерживаемая ярость, гнев, стрессы, угроза жизни. Все это накапливается в животе. Их можно прожить через практику писем, холотропное дыхание, вайвейшн.&nbsp;</p>\r\n\r\n<p>Женщине нужно научиться расслаблять живот, принимать его. В расслабленном животе много плюсов:&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p>Легкое вынашивание и роды. Многие женщины получают травмы при родах именно из-за напряжения в животе и бедрах. При родах важно расслабить живот и все внутренние органы, чтобы пути для ребенка раскрылись максимально широко, и чтобы ему было легко проходить. Если женщина до родов качала пресс, но не занималась растяжкой &mdash; есть большой риск травм и растяжек.&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>&nbsp;Правильное течение энергии. Когда живот расслаблен &mdash; энергия свободно поднимается вверх, снабжая все тело женщины, питая все энергетические центры. Именно поэтому во многих традициях женщины носили свободную одежду &mdash; в России сарафан, в Индии &mdash; сари, в Азии широкие юбка-брюки и туники. В такой одежде энергия не только легко поступает в тело, но и усиливается за счет формы купола у стоп.&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Глубокое дыхание. Сейчас большинство женщин дышат на самой поверхности легких, дыхание не глубокое и оно не снабжает тело кислородом в полной мере. Если живот женщины расслаблен, то она может дышать животом сквозь все тело. Такое дыхание успокаивает, умиротворяет, приводит в порядок мысли, омолаживает, приводит в движение энергию в теле, привносит в движения грацию, плавность, текучесть.&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Сексуальность и притягательность. Мягкий живот это очень сексуально для мужчин, потому что женщина это символ мягкости, нежности, податливости. Сильным мужчинам нравятся мягкие женщины, не только по характеру, но и внешне. Ведь внешнее отражает внутреннее. Если Ваш мужчина настаивает на том, что бы у Вас был накачанный живот с кубиками, значит, ему нравятся сильные по-мужски женщины, и что он хочет от Вас, либо лидирующей роли и равной ответственности, либо он слишком подвержен социальному влиянию рекламы. Не нужно на это реагировать. Нужно принимать себя и тогда Вас будут принимать другие.&nbsp;</p>\r\n\t</li>\r\n</ul>\r\n\r\n<p>Мягкий живот &mdash; это не значит быть полной, даже худенькая девочка может иметь расслабленный мягкий живот, он выглядит очень женственно, с изящными изгибами. Это красиво, сексуально, женственно.&nbsp;</p>\r\n\r\n<p>Более расслабленным живот могут сделать восточные танцы живота, это хорошее занятие для женщины, которое поможет почувствовать себя более привлекательной, женственной, чаровницей. Они также помогают снять паховые блоки и зажимы. Заметьте, это танец живота, а не игра мышц&nbsp;</p>\r\n\r\n<h4>Чего с животом делать не стоит?&nbsp;</h4>\r\n\r\n<p>- Неблагоприятно прокалывать живот. Это блокирует энергию на нижних центрах, оставляет обесточенными верхние чакры;&nbsp;</p>\r\n\r\n<p>- Неблагоприятно носить одежду открывающую зону паха. В этой области очень много сексуальной энергии и если женщина ее демонстрирует всем, то она быстро истощается.&nbsp;</p>\r\n\r\n<p>- Неблагоприятно носить утягивающую одежду, она формирует в теле напряжение, и энергия двигается в теле по мужскому типу, формируя мужские качества характера.&nbsp;</p>\r\n\r\n<p>Живот &mdash; это символ Жизни, как Вы будете к нему относиться, как будете его ощущать &mdash; такой и будет Ваша Жизнь!</p>	56	zhivot-mesto-nakopleniya-zhenskoj-energii
58	ru	Рекомендуемые фильмы	<table border="1" cellpadding="1" cellspacing="1" class="images_table_hundred_percent table table-borderless table-striped" style="width:100%">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Школа &laquo;Саммерхилл&raquo;</em></strong></p>\r\n\r\n\t\t\t<p>В основу фильма положена история реально существующей с&nbsp;1921 года и&nbsp;расположенной в&nbsp;городке Лейстон в&nbsp;Саффолке экспериментальной школы &laquo;Саммерхилл&raquo;. Её&nbsp;основатель, Александр Нилл, автор уникальной методики воспитания детей на&nbsp;основе самоуправления. Школа полностью управляется учениками и&nbsp;славится своими достижениями.&nbsp;<br />\r\n\t\t\t<br />\r\n\t\t\tПедагоги и&nbsp;дети живут душа в&nbsp;душу, в&nbsp;школе царит полная гармония и&nbsp;образовательная, и&nbsp;воспитательная. Противники этого школьного эксперимента, называвшие школу не&nbsp;иначе как&nbsp;&laquo;делай-что-хочешь&raquo;, предпринимали неоднократные попытки ее&nbsp;закрыть. Однако учителя вместе со&nbsp;своими учениками (как бывшими, так&nbsp;и настоящими) отстояли право на&nbsp;существование своей школы. Ведь ее&nbsp;заслугой давно стали здоровые и&nbsp;свободные дети, чья&nbsp;жизнь не&nbsp;испорчена страхом и&nbsp;ненавистью.</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_cd2aefae9062404a934c0c1819fa3bcc~mv2.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_cd2aefae9062404a934c0c1819fa3bcc~mv2.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_bc9c552278aa4d47a400da0d540f6148.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_bc9c552278aa4d47a400da0d540f6148.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Прекрасная зеленая.</em></strong></p>\r\n\r\n\t\t\t<p>Мила прибывает на&nbsp;нашу прекрасную зелёную Землю с&nbsp;другой планеты, являющейся прообразом более гармоничной и&nbsp;приближённой к&nbsp;природе жизни. На&nbsp;Земле она&nbsp;знакомится с&nbsp;доктором Максом, его&nbsp;семьёй и&nbsp;другими людьми, на&nbsp;примере которых познаёт всю&nbsp;несуразность нашего современного систематизированного технократического мира. Однако Мила обладает удивительной способностью, она&nbsp;может отключать людей от&nbsp;довлеющей над&nbsp;ними системы, после чего люди становятся теми, кем&nbsp;они являются на&nbsp;самом деле, начинают вести себя искренне, порой абсурдно и&nbsp;несистемно&hellip;</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>ПиКей (2014)</em></strong></p>\r\n\r\n\t\t\t<p>ПиКей, инопланетянин, высаживается на Землю в городе, расположенном в пустыне Раджастан, для изучения человеческой природы и жизни на Земле. Но планета встретила его довольно грубо &mdash; у него украли пульт дистанционного управления, с помощью которого он держал связь с космическим кораблем. Теперь он должен найти пульт, а до тех пор ему придется выживать на Земле по-своему. ПиКей задает вопросы, которые никто не задавал раньше. Его детское любопытство приводит к катастрофическим последствиям. Люди, сформировавшиеся на протяжении многих поколений, вынуждены переоценивать свой мир, глядя на него невинными глазами ПиКея.</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_f7098b83aaf34698a2b245e21cd23a71.jpeg/v1/fill/w_302,h_252,al_c,lg_1,q_80/c7735e_f7098b83aaf34698a2b245e21cd23a71.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_208d20dd46ba48d58541e17984d09fb6~mv2.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_208d20dd46ba48d58541e17984d09fb6~mv2.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Весна, лето, осень, зима... и снова весна</em></strong></p>\r\n\r\n\t\t\t<p>Никому не&nbsp;дано нарушить смену времен года, когда вначале все&nbsp;рождается, затем растет, а&nbsp;потом угасает. Ход&nbsp;жизни неподвластен даже двум монахам, живущим в&nbsp;плавучей хижине на&nbsp;озере, окруженном горами.<br />\r\n\t\t\t<br />\r\n\t\t\tПо мере наступления времени года их&nbsp;души наполняются энергией, что&nbsp;ведет как&nbsp;к чувству одухотворенности, так&nbsp;и к&nbsp;трагедии. Что&nbsp;еще важно, они&nbsp;не могут вырваться из&nbsp;круга жизни, желаний, страданий и&nbsp;страстей, которым подвержены все&nbsp;из нас.<br />\r\n\t\t\t<br />\r\n\t\t\tПод строгим взглядом Старого Монаха Молодой Монах познает потерю невинности, когда игра становится жестокой&hellip;, познает любовь, когда в&nbsp;их замкнутом мире появляется женщина&hellip;, познает преступную власть зависти и&nbsp;одержимости&hellip;, цену искупления, просветление опытом. И&nbsp;хотя одно время года неминуемо сменяет другое, их&nbsp;хижина, подобно колыбели духа, находится между настоящим и&nbsp;будущим&hellip;</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Великан / THE MIGHTY (1998)</em></strong></p>\r\n\r\n\t\t\t<p>Главные герои &ndash; два абсолютно не похожих друг на друга школьника, которых связывает одно &ndash; чувство одиночества. Однако неожиданная встреча навсегда изменит их судьбы&hellip; Фильм уникален, он весь состоит из мудрых цитат... Это можно заметить при втором третьем просмотре...</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_df9221b7b5284081899c5ef53c528e86.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_df9221b7b5284081899c5ef53c528e86.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_2eb66467a7d24881a6236ba800876785.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_2eb66467a7d24881a6236ba800876785.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Интуиция.(2001)</em></strong></p>\r\n\r\n\t\t\t<p>В один загруженный зимний день, посреди нью-йоркской толпы Джонатан встретил Сару. Город объят предновогодней лихорадкой и двое незнакомых понимают что их неодолимо тянет друг к другу. Они решают проверить судьбу: он пишет свой телефон на банкноте, она &ndash; в книге...</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Синяя Птица. (1976)</em></strong></p>\r\n\r\n\t\t\t<p>Однажды маленьких брата и сестру &mdash; Тильтиля и Митиль &mdash; посещает загадочная старушка с рассказом о больной девочке, вылечить которую может только птица с синими перьями. Колдунья обращается к детям с просьбой разыскать и поймать эту птицу, чтобы отдать её больной девочке... &nbsp;Дети собираются вместе с волшебницей и превратившимися предметами в путешествие за Синей Птицей, где их ждёт много опасностей и приключений...&nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_9631080b77f64b7b97bf51dc2c62073b.jpg/v1/fill/w_365,h_304,al_c,lg_1,q_80/c7735e_9631080b77f64b7b97bf51dc2c62073b.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_8892f739174f42718d9ebc990cf586aa.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_8892f739174f42718d9ebc990cf586aa.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Мирный Воин (2006)</em></strong></p>\r\n\r\n\t\t\t<p>Дэн Миллмен &mdash; талантливый гимнаст колледжа, мечтающий о выступлении на Олимпийских играх. У него всё есть: награды, друзья по команде, быстрые мотоциклы, девушки и бесшабашные вечеринки.&nbsp;<br />\r\n\t\t\tМир Дэна переворачивается с ног на голову, когда он встречает загадочного незнакомца по имени Сократ, у которого достаточно возможностей, чтоб открыть новый мир силы и понимания.<br />\r\n\t\t\tФильм снят по реальной истории...</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_bcdf6e12ed2c43788a93ea3165c485f2.jpg/v1/fill/w_365,h_304,al_c,lg_1,q_80/c7735e_bcdf6e12ed2c43788a93ea3165c485f2.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Поллианна. (2003)</em></strong></p>\r\n\r\n\t\t\t<p>Удивительная история девочки-сироты (которую из &quot;чувства долга&quot; взяла к себе суровая тетка), умевшей видеть во всем лучшую сторону и жить необычной &quot;игрой в радость&quot;, которая перевернула жизнь всего городка...</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Шоу Трумана / The Truman Show (1998)</em></strong></p>\r\n\r\n\t\t\t<p>Представьте себе, что вы вдруг начинаете понимать, что все вокруг вас &mdash; декорации, а люди &mdash; актеры, притворяющиеся теми, кем они вам кажутся. Весь ваш мир оказывается большим телесериалом, где вы исполняете главную роль, даже не подозревая об этом. Вся ваша жизнь &mdash; результат работы автора телешоу, которое вот уже тридцать лет смотрит вся планета, начиная с момента вашего рождения.</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_0a5a8dbf94b04bf3ab90fb0447b368dc.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_0a5a8dbf94b04bf3ab90fb0447b368dc.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_4da295a422f74e85917315f724491e4b.jpg/v1/fill/w_365,h_304,al_c,lg_1,q_80/c7735e_4da295a422f74e85917315f724491e4b.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Загадочная история Бенджамина Баттона.(2008)</em></strong></p>\r\n\r\n\t\t\t<p>&quot;Я родился при необычных обстоятельствах&quot;. Фильм Дэвида Финчера является адаптацией небольшого рассказа Фрэнсиса Скотта Фицджеральда (&laquo;The Curious Case of Benjamin Button&raquo;), превращённого сценаристом Эриком Ротом &laquo;в 200-страничный сценарий, описывающий 80 лет жизни этого необычного человека&raquo;. Рождённый восьмидесятилетним, Бенджамин Баттон (Брэд Питт) начинает молодеть. Не властный над временем, он проживает свою жизнь от старости до младенчества. &laquo;Загадочное дело Бенджамина Баттона&raquo; - это история о людях, ведомых временем по жизненному пути в разные стороны, находящих и теряющих любовь, и обретающих мудрость в противостоянии неизбежному..</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Куда приводят мечты.(1998)</em></strong></p>\r\n\r\n\t\t\t<p>Говорят, люди живут в наших мыслях...если ты со мной даже так - я счастлив! Почему я верю, что ты меня слышишь? Почему я думаю, что ты это видишь?.. Наверное, самый живописный и глубокий по смыслу фильм о Рае и Аде. У каждого свой Ад, в нем не обязательно Огонь и Смола. Наш Ад &ndash; это жизнь впустую&hellip; &quot;Люди считают невозможным то, чего прежде не случалось. Но нужно просто закрыть глаза и понять, где хочешь оказаться&quot;...</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_6c0a0c7a880b4949af92fe42f2bfcc42.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_6c0a0c7a880b4949af92fe42f2bfcc42.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_23f0f45b82bf4f14a869e33ad5fedb01~mv2.png/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_23f0f45b82bf4f14a869e33ad5fedb01~mv2.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Призрачная красота</em></strong></p>\r\n\r\n\t\t\t<p>Главный герой работает в рекламном агентстве Нью-Йорка. Не так давно в его личной жизни произошла трагедия, ввергнувшая его в тяжелейшую депрессию. Коллеги пытаются помочь и разрабатывают нетрадиционный план по возвращению друга обратно на твёрдую почву, однако план срабатывает неожиданным образом.</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Валериан и город тысячи планет</em></strong></p>\r\n\r\n\t\t\t<p>2700 год. Валериан и Лорелин &mdash; космические спецагенты, которые по долгу службы впутались в подозрительное дело и стали невольными участниками то ли межгалактического заговора, то ли аферы причудливых поселенцев планеты Альфа, прибывших туда из различных миров со всех уголков галактик.</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_eb6cf09e038041aeb079cbba3cde88c8~mv2.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_eb6cf09e038041aeb079cbba3cde88c8~mv2.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_9429067638474dd08cd374e4f19f1482~mv2.jpg/v1/fill/w_365,h_304,al_c,lg_1,q_80/c7735e_9429067638474dd08cd374e4f19f1482~mv2.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Привычка расставаться</em></strong></p>\r\n\r\n\t\t\t<p>История о девушке, которая не может устроить свою личную жизнь. В поисках ответа, почему все её отношения не сложились, она решает встретиться со всеми своими бывшими и спросить у них, что они думают по этому поводу. Найдёт ли она ответ на свой вопрос? Нет. Найдёт ли она свою любовь? Конечно, да!</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Хародим. Harodim (2012)</em></strong></p>\r\n\r\n\t\t\t<p>Лазарус Фелл, бывший боец элитного отряда &quot;Морские котики&quot; оставляет всё: службу,карьеру,семью,чтобы отомстить за своего отца,погибшего 11 сентября 2001 года во Всемирном торговом центре. Через несколько лет напряженных поисков он находит и похищает того,кого все считали воплощением мирового Зла и главным организатором и вдохновителем этого теракта. Однако в то,что он рассказал,Лазарус Фелл поначалу отказывается верить...</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_900ba2159f8c4e0fb1ac73b096a27de6.png/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_900ba2159f8c4e0fb1ac73b096a27de6.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_8c8e688ea0c9475f91aff7c952302c9a.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_8c8e688ea0c9475f91aff7c952302c9a.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Планета Ка-Пэкс.(2001)</em></strong></p>\r\n\r\n\t\t\t<p>В Манхэттенский психиатрический институт привозят странного человека в черных очках. Он зовет себя Протом и утверждает, что его родина &mdash; далекая планета Ка-Пэкс, откуда он мгновенно перенесся на Землю в луче света...&nbsp;</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Посылка. (2009)</em></strong></p>\r\n\r\n\t\t\t<p>Артур и Норма &mdash; молодая семья, которая испытывает финансовые затруднения. Неожиданно супруги становятся счастливыми обладателями коробочки с кнопкой.Им объясняют что, если нажать на кнопку, они немедленно получат 1 млн. долларов. Одна тонкость &mdash; в этот момент где-то умрет совершенно незнакомый им человек&hellip;&nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_67c7398982a34014aaea6be6984d7528.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_67c7398982a34014aaea6be6984d7528.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_af1799ecda2e4927a30c60fd1613d80f.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_af1799ecda2e4927a30c60fd1613d80f.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Дневник памяти. (2004)</em></strong></p>\r\n\r\n\t\t\t<p>Любовь долго терпима и милосердна. Любовь не завидует, любовь не превозносится и не гордится. Любовь не ропщет, не мыслит зла, она не ищет выгоды и не бесчинствует. Любовь все покрывает и ВСЕГДА В ЛЮБОМ СВОЕМ ПРОЯВЛЕНИИ &ndash; БЛАГОСЛАВЕННА&hellip;</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Пробуждение. (Серия из Masters of Science Fiction - 1x02 - The Awakening)</em></strong></p>\r\n\r\n\t\t\t<p>По мотивам рассказа Говарда Фаста &laquo;Генерал убитый ангелом&raquo; (англ. The General Zapped an Angel, 1970).<br />\r\n\t\t\tСобытия о ближайшем будущем, история начинается со странным столкновением между&nbsp;Американским и Иракским солдатом в Ираке около Багдада.&nbsp;Что то странное попало в вертолет и эти два мужчины, обнаруживает, что они могут понять друг друга, несмотря на то говорят на разных языках...</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_6f6fec3a1f084188a2403314e76587df.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_6f6fec3a1f084188a2403314e76587df.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_6b074e9f87ee4316aaca9dbfe1b7e950.png/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_6b074e9f87ee4316aaca9dbfe1b7e950.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Пудра / Powder (1995)</em></strong></p>\r\n\r\n\t\t\t<p>Каждый из нас есть часть всего сущего - глубокая мысль фильма, обрамлённая рассуждениями о необходимости признания инакости каждого в отдельности. Подросток - альбинос с паранормальными способностями после смерти своих &quot;ангелов-хранителей&quot; - бабушки и дедушки, попадает в агрессивную повседневность американской школы-интерната. Здесь нет места идеям добра, искренности и благодеяний, которые мальчик несет в своей&nbsp;необыкновенной сути...</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Гостья / The Host (2013)</em></strong></p>\r\n\r\n\t\t\t<p>Лишенные плотской оболочки пришельцы, захватывают тела людей - вытесняя из человеческих тел разум и замещающие его собственной душою. Большая часть человечества уже заменена. Немногие выжившие люди скрываются в жалкой попытке отсрочить неизбежное&hellip; Теперь Душа пытается захватить тело юной Мелани...</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_ee8e5bbea8c9489c8a7ce67f3063f103.jpg/v1/fill/w_365,h_304,al_c,lg_1,q_80/c7735e_ee8e5bbea8c9489c8a7ce67f3063f103.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_cf5fbfc227a84c1b9309f26c1ecae0b8.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_cf5fbfc227a84c1b9309f26c1ecae0b8.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Interstellar/ Межзвездный (2014)</em></strong></p>\r\n\r\n\t\t\t<p>Недалёкое будущее. Население Земли постепенно вымирает от голода и ухудшающегося климата. Фермер Купер, в прошлом пилот NASA, ведёт хозяйство со своей семьёй в американской глубинке, страдая от неурожая и пыльных бурь. Его дочь Мёрф рассказывает о том, что её комнату посещает полтергейст и сбрасывает книги с полки. Купер, разобравшись, понимает, что аномальные явления не выдумка и даже обнаруживает вместе с дочерью в действиях призрака закономерности...</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Страховщик / Automata. (2014)</em></strong></p>\r\n\r\n\t\t\t<p>Главный герой фильма &mdash; страховой агент&nbsp;Жак Вокан&nbsp;компании по изготовлению роботов , который обнаруживает, что выпущенные роботы сами меняют себя, свое сознание - &nbsp;начинают обретать разум и выходить из под контроля...</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_b0c3e1df9bc74e6ea9201d5326b2897e.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_b0c3e1df9bc74e6ea9201d5326b2897e.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_ea8996ba264448bf89855577ae8a7c08.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_ea8996ba264448bf89855577ae8a7c08.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Вангелия. 2013 год (12 серий)</em></strong></p>\r\n\r\n\t\t\t<p>Сериал &laquo;Вангелия&raquo; вышел на телеэкраны в 2013 году и сразу же стал бестселлером. Эта картина рассказывает о жизни известной на весь мир болгарской провидицы и целительницы, Ванги (Вангелии Гущеровой). Временно отрезок затрагивает годы с 1911 по 2002 (годы жизни Ванги) и еще два года после ее смерти. Режиссером сериала &laquo;Вангелия&raquo; выступил Серей Борчуков, который несколько с иной стороны взглянул на необъяснимый до сих пор дар Ванги.</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Остров. (2005)</em></strong></p>\r\n\r\n\t\t\t<p>2019 год. Линкольн-Шесть-Эхо &mdash; один из немногих уцелевших после глобальной катастрофы, который живёт в специальном изолированном комплексе посреди бескрайних морей и заражённой суши. Здесь за людьми пристально наблюдают, оберегая их здоровье, &mdash; заставляют придерживаться определённых диет и физических упражнений. Также здесь регулярно проводят лотерею, победители которой отправляются на прекрасный Остров &mdash; единственное уцелевшее на Земле место, пригодное для жизни...</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_4681ecfac5704b7aa4ba8bbe16d33a9c.jpg/v1/fill/w_365,h_304,al_c,lg_1,q_80/c7735e_4681ecfac5704b7aa4ba8bbe16d33a9c.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_3e0ea02e14064f36b829878ba69bfa64.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_3e0ea02e14064f36b829878ba69bfa64.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Огнеупорный. (2008)</em></strong></p>\r\n\r\n\t\t\t<p>Заходя в горящий пламенем дом, капитан пожарной команды Калеб Холт действует по-старому, но верному правилу пожарных: &laquo;Никогда не оставляй товарища в беде&raquo;. Приходя же домой, где его ждёт жена, чувства и любовь к которой давно угасли, Калеб живёт по своим собственным правилам и согласно своим собственным интересам. На работе Калеб &nbsp;всегда старается, и спасает других, но как же ему спасти свой брак?</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Ангар 18. (1980)</em></strong></p>\r\n\r\n\t\t\t<p>Космос. Трое астронавтов готовятся запустить спутник с борта шаттла. Один из них находится в открытом космосе и проводит последние подготовительные операции. Неожиданно второй пилот обнаруживает на радаре движущийся зигзагами объект, который в итоге зависает прямо над шаттлом. Они видят его, но предпринять ничего не успевают &mdash; спутник, который должен выйти на более высокую орбиту, включает свои двигатели по команде с Земли и врезается прямо в НЛО...</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_51635d2b7db94936b43345a8e12c8eac.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_51635d2b7db94936b43345a8e12c8eac.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_55a79b224f994fbcbe9f2336f55ec5cd.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_55a79b224f994fbcbe9f2336f55ec5cd.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Дивергент. (2014)</em></strong></p>\r\n\r\n\t\t\t<p>Действие фильма &laquo;Дивергент&raquo; происходит в футуристическом Чикаго, где общество разделено на пять фракций, каждая из которых объединяет в себе представителей какого-то качества. Подростки должны решить, хотят ли они остаться в их фракции или переключиться на другую на всю оставшуюся жизнь. Трис Приор делает выбор, который удивляет всех...</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Особое мнение. (2002)</em></strong></p>\r\n\r\n\t\t\t<p>2054 год. Вашингтон. Джон Андертон &mdash; капитан полиции, командир подразделения профилактики преступлений , благодаря которой число убийств удалось свести до нуля. Три провидца, находящиеся в изоляции, видят преступления, которые будут совершены в ближайшем будущем...</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_0d6cb29020ef4ac6b2547b4d6aedab8e.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_0d6cb29020ef4ac6b2547b4d6aedab8e.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_befa3b27f728475fbc1547af927968d5.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_befa3b27f728475fbc1547af927968d5.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Другая Земля. (2011)</em></strong></p>\r\n\r\n\t\t\t<p>В ночь открытия астрономами в Солнечной системе планеты, идентичной Земле, студентка Рода становится виновницей автокатастрофы: она врезается в автомобиль, в котором находились композитор Джон Берроуз, его жена и сын. Четыре года спустя Рода выходит из тюрьмы. За это время изучение Земли-2 продвинулось далеко вперёд, планируется даже экспедиция на эту планету-близнец...</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Семь Жизней. Seven Pounds (2008)</em></strong></p>\r\n\r\n\t\t\t<p>&laquo;Они не знакомы. У них разные судьбы. Но у них одна тайна&raquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_f5aa40e4ffdc440b9e9d4e600ac4fb46.png/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_f5aa40e4ffdc440b9e9d4e600ac4fb46.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_f1bcdbd65c494735b4c0249db88697bf.jpg/v1/fill/w_303,h_252,al_c,lg_1,q_80/c7735e_f1bcdbd65c494735b4c0249db88697bf.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Просветление Робота. Просветленный Робот - Будда (2012)</em></strong></p>\r\n\r\n\t\t\t<p>Недалекое будущее человечества, в одном из Буддийских монастырей искусственный интеллект и.и a.i &nbsp;- робот андроид &nbsp;достиг Просветления и учит этому людей... &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Матрица 1,2,3</em></strong></p>\r\n\r\n\t\t\t<p>Мир Матрицы &mdash; это иллюзия, существующая только в бесконечном сне обреченного человечества. Холодный мир будущего, в котором люди &mdash; всего лишь батарейки в компьютерных системах.</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_734c0d1e08bb49c9868841b90af60293.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_734c0d1e08bb49c9868841b90af60293.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_e1ef83a5608e4b10a2ae6ad54006590b.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_e1ef83a5608e4b10a2ae6ad54006590b.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Вечное сияние чистого разума. ( 2oo4 )</em></strong></p>\r\n\r\n\t\t\t<p>Джоэль и Клементина решают выбросить друг друга из головы с помощью нового изобретения. Но в памяти Джоэля все еще живы самые нежные моменты их чувства. ЧЕМ МЕНЬШЕ ОН ПОМНИТ...</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Эффект Бабочки (2004)</em></strong></p>\r\n\r\n\t\t\t<p>Борясь с психологическими последствиями подавленных детских воспоминаний, Эван Треборн изобретает механизм путешествия в прошлое. Он получает возможность вернуться в свое детское тело и сделать что-то не так, как он делал в реальном прошлом. Но, возвращаясь в настоящее, он видит, что его исправления ведут к фатальным последствиям в сегодняшнем мире. Ему приходится возвращаться в детство вновь и вновь...</p>\r\n\t\t\t</td>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_5c29f01362064a9ea8f6736b02783c94.jpg/v1/fill/w_365,h_304,al_c,lg_1,q_80/c7735e_5c29f01362064a9ea8f6736b02783c94.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src="https://static.wixstatic.com/media/c7735e_3a59e030b39f473281abdb69ea783d2d.jpg/v1/fill/w_365,h_304,al_c,q_80,usm_0.66_1.00_0.01/c7735e_3a59e030b39f473281abdb69ea783d2d.webp" /></td>\r\n\t\t\t<td>\r\n\t\t\t<p><strong><em>Господин Никто (2009)</em></strong></p>\r\n\r\n\t\t\t<p>Проснувшийся немощным стариком Немо Никто оказывается последним смертным в гротескном будущем. Все люди уже давно бессмертны и с удовольствием наблюдают за телешоу, где главная звезда &mdash; дряхлый и безумный старик Немо, доживающий свои последние дни. Накануне конца к нему приходит журналист, и Немо рассказывает ему свою историю...</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>	58	rekomenduemye-filmy
59	ru	Также рекомендуем	<p><a href="http://psyreal.ru/" id="i8y7smkt_BlankListView_i8y7smjn169_BlankList_i8y7smjm168__0_0_0_0" target="_blank"><strong><em><u>Образовательный портал - www.psyreal.ru</u></em></strong></a></p>\r\n\r\n<p><a href="http://masterkosta.com/" id="i8y7smkt_BlankListView_i8y7smjn169_BlankList_i8y7smjm168__0_0_1_0" target="_blank"><strong><em><u>Портал развития Человека - www.masterkosta.com</u></em></strong></a></p>\r\n\r\n<p><a href="http://www.psihologiya3000.ru/" id="i8y7smkt_BlankListView_i8y7smjn169_BlankList_i8y7smjm168__0_0_2_0" target="_blank"><strong><em><u>&quot;Психология третьего тысячелетия&quot; Олега Гадецкого - www.psihologiya3000.ru</u></em></strong></a></p>\r\n\r\n<p><a href="http://lazarev.ru/" id="i8y7smkt_BlankListView_i8y7smjn169_BlankList_i8y7smjm168__0_0_3_0" target="_blank"><strong><em><u>Сайт Лазарева С.Н. - www.lazarev.ru</u></em></strong></a></p>\r\n\r\n<p><a href="http://anekrasov.ru/" id="i8y7smkt_BlankListView_i8y7smjn169_BlankList_i8y7smjm168__0_0_4_0" target="_blank"><strong><em><u>Сайт Анатолия Некрасова - www.anekrasov.ru</u></em></strong></a></p>\r\n\r\n<p><a href="http://torsunov.ru/ru/index.html" id="i8y7smkt_BlankListView_i8y7smjn169_BlankList_i8y7smjm168__0_0_5_0" target="_blank"><strong><em><u>Сайт Торсунова О.Г. - www.torsunov.ru</u></em></strong></a></p>\r\n\r\n<p><a href="http://www.thetahealing.com.ua"><strong><em><u>Сайт - www.thetahealing.com.ua</u></em></strong></a></p>	59	takzhe-rekomenduem
57	ru	Статьи (скачать бесплатно)	<table border="1" cellpadding="1" cellspacing="1" class="table table-borderless" style="width:100%">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td><a class="pdf_file_icon" href="/media/ckeditor/2018/09/16/c7735e_38665e778f01404aa553e8a6fd89598c.pdf">Позитивное действие медитации и молитв</a></td>\r\n\t\t\t<td><a class="pdf_file_icon" href="/media/ckeditor/2018/09/16/c7735e_1d8c720b54af468f88876af0b2882f26.pdf">Здоровое Питание</a></td>\r\n\t\t\t<td><a class="pdf_file_icon" href="/media/ckeditor/2018/09/16/c7735e_dbaa6eaf4dca43939a825439b6c46df0.pdf">Зачатие по ведам</a></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><a class="pdf_file_icon" href="/media/ckeditor/2018/09/16/c7735e_e50e056ca5f644a7b994df59bb9ef4b2.pdf">О пользе молочных продуктов</a></td>\r\n\t\t\t<td><a class="pdf_file_icon" href="/media/ckeditor/2018/09/16/c7735e_724d612813384b2aa25d9c7fd75f1004.pdf">Нравственница</a></td>\r\n\t\t\t<td><a class="pdf_file_icon" href="/media/ckeditor/2018/09/16/c7735e_c44495cc90b14b28a3f2dc555151a617.pdf">Межрелигиозный диалог. Часть 1</a></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><a class="pdf_file_icon" href="/media/ckeditor/2018/09/16/c7735e_b605b153ee7148acb3a7b5c192881ff3.pdf">Межрелигиозный диалог. Часть 2</a></td>\r\n\t\t\t<td><a class="pdf_file_icon" href="/media/ckeditor/2018/09/16/c7735e_fdc7d846301b47da8abda90847710933.pdf">Как бросить курить</a></td>\r\n\t\t\t<td><a class="pdf_file_icon" href="/media/ckeditor/2018/09/16/c7735e_2005c4592a3f43cfa6804e711856137a.pdf">Инструкция к жизни</a></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t\t<td><a class="pdf_file_icon" href="/media/ckeditor/2018/09/16/c7735e_7d1133b830ff42898575d91f3aa75d78.pdf">Люди действительно живут в матрице</a></td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>	57	stati-skachat-besplatno
\.


--
-- Name: basic_content_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.basic_content_translation_id_seq', 59, true);


--
-- Data for Name: basic_library; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.basic_library (id, title, description, image, created_at) FROM stdin;
1	Некрасова А.		library/images/cat_nekrasov.jpg	2018-09-16 22:57:26.702841+05
5	Владимир Мегре		library/images/Megre250px.jpg	2018-09-16 23:18:34.046093+05
6	Валерий Синельников		library/images/i.webp	2018-09-16 23:24:53.464054+05
7	Лиз Бурбо		library/images/download.jpeg	2018-09-16 23:28:47.831838+05
\.


--
-- Name: basic_library_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.basic_library_id_seq', 7, true);


--
-- Data for Name: basic_menu; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.basic_menu (id, lft, rght, tree_id, mptt_level, parent_id) FROM stdin;
20	1	18	6	0	\N
28	16	17	6	1	20
18	1	2	4	0	\N
19	1	2	5	0	\N
21	2	3	6	1	20
23	6	7	6	1	20
31	1	2	9	0	\N
30	1	2	8	0	\N
24	8	9	6	1	20
25	10	11	6	1	20
26	14	15	6	1	20
27	12	13	6	1	20
11	2	3	1	1	10
12	4	5	1	1	10
10	1	8	1	0	\N
13	6	7	1	1	10
15	2	3	3	1	14
16	4	5	3	1	14
14	1	8	3	0	\N
17	6	7	3	1	14
22	4	5	6	1	20
\.


--
-- Name: basic_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.basic_menu_id_seq', 31, true);


--
-- Data for Name: basic_menu_translation; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.basic_menu_translation (id, language_code, title, slug, master_id) FROM stdin;
1	ru	О нас	o-nas	10
2	ru	Об авторе	ob-avtore	11
3	ru	Оснаватели	osnavateli	12
4	ru	О методе обучения	o-metode-obucheniya	13
5	ru	Обучение	obuchenie	14
6	ru	Индивидуальная консультация	individualnaya-konsultaciya	15
7	ru	Выездные программы	vyezdnye-programmy	16
8	ru	Правила и ограничения Ретрита	pravila-i-ogranicheniya-retrita	17
11	ru	Рекомендуем	rekomenduem	20
13	ru	Статьи (скачать бесплатно)	stati-skachat-besplatno	22
19	ru	Также рекомендуем	takzhe-rekomenduem	28
9	ru	Расписание	events	18
10	ru	Видео Муштарий Юлдашевой	videos	19
12	ru	Интересное	interesting	21
14	ru	Книги	library	23
22	ru	Контакты	contact	31
21	ru	Отзывы	reviews	30
15	ru	Аудио материалы	audios	24
16	ru	Видео материалы	videos-interesting	25
17	ru	Познавательное и интересное видео	videos-cognitive	26
18	ru	Кино (фильмы)	rekomenduemye-filmy	27
\.


--
-- Name: basic_menu_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.basic_menu_translation_id_seq', 22, true);


--
-- Data for Name: basic_review; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.basic_review (id, author, comment, file, created_at, photo, is_top) FROM stdin;
1	Ziyoda Isaeva	<p style="text-align:justify">Здравствуйте Лола! Очень благодарна Вам и Муштари за семинары. Благодарна за возможность прослушивания их в телеграме и ютубе. А еще спасибо моей Мадоннаопе за то что заинтересовала меня и предрставила возможность прослушивать семинары Муштари в телеграме. Я живу &nbsp;за границей и не имею возможности попасть на эти семинары. Но даже прослушивания их мне идёт на пользу, я многому научилась, учусь и признала очень много ошибок которые я совершила по жизни. Очень благодарна всей вашей команде и в частности Муштари. Здоровья &nbsp;Успехов и процветания Вам в дальнейшем.</p>		2018-09-18 06:19:34.828884+05		f
2	Maftuna	<p style="text-align:justify">Здравствуйте! Передайте пожалуйста огромное спасибо Муштарий Юлдашевой с Ферганы. Каждый день слушаю ее аудио, и жизнь меняется перед глазами. У меня вопрос, не планирует ли М.Юлдашева провести тренинги в Фергане? Мы были б очень рады😊😊😊😍😍</p>		2018-09-18 06:19:49.631142+05		f
3	✨👑✨	<p style="text-align:justify">Муштарий ассаломалейкум!!! Сизга катта рахмат айтмокчи эдим.. сизни рубаро килган кунга ва семинарларизни телеграмм каналида эшитиб булсада натижаларга эришаетганимдан жуда бахтлиман 👍🤩 Куни кеча орада хафагарчилик утган инсонни уголга куйиб нур оркали килинадиган практикани килиб, айтганиздек шу куниек результат булди совгаям 😇 РАХМАТ !!! Муштарий сиздек чин кунгилдан улаша оладиган инсонлар хаетимизни янада гузаллаштиради!!! Рус тилида айтганда Такие люди как вы украшают этот мир ! 🌸🌸🌸🌸🌸🌸🌸🌸</p>		2018-09-18 06:20:08.009898+05		f
4	Dilafruz Narbaeva	<p style="text-align:justify">Мен якинда тугаган &quot;Калбга йул&quot; семинарингизда катнашдим.Таасуротларим чексиз<br />\r\nХаёт чигалликларига шунчалик уз домига тортиб олгар эканки,узим хакимда борлигим хакида уйлаш у екда турсин,хатто нафас олаётганимни хис килмаган эканман.Шу организмимга хаво зарурлигани хам билмаганман.Хозир чукуррок нафас олгим келяпти.Бу менга зарур.Хаёт гузал! Хозир мавжудлигимни хис киляпман.Узимни согиндим.Узлигимни аслида кимлигимни кургим келяпти.Калбимдаги саволларни сизни семинарингиздан олаётганимдан хурсандман.Сизга чин юракдан миннаддорчилик билдираман.Рахмат сизга.Бемалол чукур чкур нафас олиш накадар ёкимли!❤️</p>\r\n\r\n<p style="text-align:justify">Бугун сизга ёзгим келди.Хисларимни.Рухсат берсангиз</p>\r\n\r\n<p style="text-align:justify">Семинарда шуни англадимки,аслида мен хафа булишни ёктирар эканман.Канчалик хафа булишни ёктирганим сари бошкалар хам шунчалик хафа килаверар экан.Хафалигимни ичимга ютиб айтолмадим шу кунгача.Ёшлигимда куп китоб укирдим.Хозир англадим шу кийналган,бошкалар озор берган яхши,одобли кахрамонларга узим билмаган тарзда ухшагим келган.Хатто узим хали учратмаган орзуимдаги инсон хам хаёлимда хафа киладию натижада хафа булсам ва у менга яхши гапирса, мехр берса деб уйлаганман.(тортишиш конуни)Аслида хафа булишимни замирида мехрга мухтожлигимни энди тушундим.Узимга булган мехрим йук булганлигини англадим.Бу хали бошланиши.Хали куп ишлашим керак.Лекин шу. ечимни топаётганимдан,ёруглик борлигидан хурсандман.Мен узимга ва бошкаларга керакман.Билимарингизни булишганингиз учун КАТТА РАХМАТ!</p>		2018-09-18 06:20:41.922098+05		f
5	Гуля	<h5 style="text-align:justify"><span style="font-size:14px">Благодарю за хороший семинар! Я очень под хорошим впечатлением.&nbsp;Очень! Все было на отличном уровне, понравилось. Огромная благодарность Муштарий Юлдашевой и организаторам. &nbsp;С любовью!</span></h5>		2018-09-18 06:21:36.239377+05	c7735e_4c7245ceefae4acfac949f9cec3db84d.webp	f
6	Малохат	<h5 style="text-align:justify"><span style="font-size:14px">Семинар был очень плодотворным. Выражаю глубокую признательность тренеру&nbsp;семинара Муштарий Юлдашевой и организаторам! Оставайтесь всегда такими позитивными и продолжайте дарить людям радость и уверенность в себе!!! С искренним уважением Малохат!</span></h5>		2018-09-18 06:21:59.531214+05		f
7	G'ayrat	<p style="text-align:justify">Psixolog Mushtariy Yuldasheva seminarlarida qatnashib juda ko&#39;p yaxwi natijalarga erishdim😊😊😊</p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">&nbsp;O&#39;zimni shaxs sifatida angladim...</li>\r\n\t<li style="text-align: justify;">O&#39;zimni yaxwi koriwni organdim hech qanaqa wartsiz...</li>\r\n\t<li style="text-align: justify;">Umuman asabiylashmaydigan bo&#39;ldim...</li>\r\n\t<li style="text-align: justify;">O&#39;zimda intuitsiya yaxwi rivojlandi ochildi... (masalan qaysidir dostim nima un telefon qilganini, u gapirmasidan sezvoman VA huddi wunaqa gap bowlashi).</li>\r\n\t<li style="text-align: justify;">Hayotda muxim db belgilagan ozimni qiynaydigan hayol, o&#39;y, fikrlarim faqat aqlim maxsuli ekanligini tushundim.</li>\r\n\t<li style="text-align: justify;">O&#39;zimni wartsiz sevishni, Qalbim bn his qilishni, qaror chiqarishda doim Unga suyanib qaror chiqariwni o&#39;rgandim. Hayotim Judayam qiziqarli VA hursandchilikdan iboratligini bildim.</li>\r\n\t<li style="text-align: justify;">Biror yoqmaydigan vaziyat yuzaga kelsa oldin ozimdan xatolikni qidirib (aybni emas xatolikni ) muammolarni osonlik bn asabiylawiwsiz bartaraf etishni.</li>\r\n\t<li style="text-align: justify;">Iqtisodiy tomonlama nima yoqsa albatta erishish mukinligini tushunib yetdim VA wu paytgaca hech qachon ozimga iwlatmagan, ozimdan qizganadigan pullarimni 2 haftada iwlatib tawladim... Eng qizig&#39;i uni o&#39;rnini deyarli to&#39;ldirib bo&#39;ldim...</li>\r\n\t<li style="text-align: justify;">Yaratgan &nbsp;hamma mavjudotlarni VA tabiatni, &nbsp;butun borliqni sevishni organmoqdaman😊😊😊</li>\r\n</ol>\r\n\r\n<p style="text-align:justify">Mushtariy Yuldasheva orgatgan bilimlarni qo&#39;llab kop vaziyatlardan qo&#39;rqmasdan osongina chiqib ketdim... &nbsp;(tishlaydigan notaniw itni oldiga borib bemalol silay oldim birinchi martda, birinchi martda qolimga olgan yow bolakay mani qolimdan Oz onasiga bormadi, birinchi martda 23 yildan beri manga qopol muomilada bolgan odam yaxwi gapirishni bowladi) bunaqa misollarni ko&#39;pini yozishim mn😊😊😊 hayotda nima bolishidan qatiy nazar, bularni hammasiga o&#39;zimiz qarashlarimiz VA fikrlarimiz bn javobgarmiz😊 &nbsp;Mushtariy Yuldasheva buni o&#39;zlarini bilimlari bn isbotlab berdilar. Ulardan cheksiz minnatdorman😊😊😊 Ularga omad VA muvaffaqiyat tilab &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;G&#39;ayrat😘😘😘</p>		2018-09-18 06:23:39.986665+05	c7735e_57a5abdc96e3483e885c942f63dbb68d.webp	f
8	Madina	<p style="text-align:justify"><span style="font-size:14px">Seminarda qatnashib hamma o&#39;zimga kerakli savollarga javob oldim , seminar manga juda yoqti , hayotga boshqa nazar bilan qarashni boshladim . Seminarda qatnashganimdan judayam hursandman . Bu seminar orqali hayotimni yaxshiladim , turmush o&#39;rtog&#39;im bilan ajrashish arafasida turgan edim , seminarlar orqali hamma hayotimda bo&#39;layotgan har bir voqeaga o&#39;zim sababchi bo&#39;lganimni tushundim, o&#39;zimni o&#39;zgartirishni boshlashim bilan turmush o&#39;rtog&#39;im ham avtomatik ravishda o&#39;zgarishni boshladilar. &nbsp;Тoshkent.sh Madina 23 yosh</span></p>		2018-09-18 06:23:56.507603+05		f
27	Нозима. Ташкент	<p style="text-align:justify"><span style="font-size:14px">Мани углимам россалиям хурсанд. Узига ишончи ошди. 90 градусга узгарди. Манам Муштарийдан ва Лоладан миннадорман. Рахмат силага.</span></p>		2018-09-18 06:44:42.497352+05		f
25	ОТЗЫВЫ УЧАСТНИКОВ РЕТРИТА	<table border="1" cellpadding="1" cellspacing="1" class="table table-borderless" style="width:100%">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:justify; width:50%"><span style="font-size:14px">Рахмат Муштарий сизга! Манда жудаям котта натижала-уйимда хотиржамлик атмосфера, онам билан бир биримизани жудаям яхши тушинвомиза. Онамлаям рухан усишга ва бахтга интилиб бошладила. Угилларимдаям котта узгаришлани хис этвоман. Калбида мехр ва ишонч ошган. Ички хотиржамлигим 100%, &nbsp;доим калбимдан назорат килолвоман. &nbsp;Иш хонамга проста бориб айланиб пулларими йигиб кевоман. Онам синглим ва келиним випассанга жудаям кизикиб колишди, кейинги ой келиним ман билан бормокчила. Ман жудаям хурсандман. Сизга котта кон рахмат Муштарий! Сиззи жасоратизга мехризга ва комилигиза. Лола сизгаям рахмат! Бизага жудаям яхши шароит яратиб бердиз.&nbsp;</span><br />\r\n\t\t\t&nbsp;<strong>Мирахмедова Нозима!!!!</strong></td>\r\n\t\t\t<td style="width:50%"><img src="https://static.wixstatic.com/media/c7735e_04890cbad3ef416a95feb623fe542913~mv2.jpg/v1/fill/w_448,h_251,al_c,q_80,usm_0.66_1.00_0.01/c7735e_04890cbad3ef416a95feb623fe542913~mv2.webp" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:50%">\r\n\t\t\t<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px">Мандаям натижала жуда зур👍👍👍<br />\r\n\t\t\tИчки хотиржамлик узимга ишонч&nbsp;<br />\r\n\t\t\tЯна манда Интуитция кучайип кети&nbsp;<br />\r\n\t\t\tХар куни 2м Кто Я Бн<br />\r\n\t\t\tВипасана киваман<br />\r\n\t\t\tМуштарий сизга котакон Рахмат&nbsp;<br />\r\n\t\t\tЯна сиз бн учрашувлани кутип коламан<strong> 😘</strong></span></p>\r\n\r\n\t\t\t<p style="margin-left:0px; margin-right:0px; text-align:start"><span style="color:null"><strong><u>Наргиза А.</u></strong></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="text-align:justify; width:50%"><span style="font-size:14px">Аssalomu aleykum. Xammani s&ograve;gindim.&nbsp;<br />\r\n\t\t\tNatijala judayam z&ograve;r. Ancha yilladan beri qalbimda garmоniya b&ograve;liwini xolirdim wuni topdim. K&ograve;p zavisimostlarimdan qutuldim. Xayotni boricha qabul&nbsp;qvomman. Xayotimni kuzatiwni &ograve;rgandim ewtiwni &ograve;rgandim. Tvorcheskiy xoxiwlarim qattiq uyģondi. Ichimda baht xis qvomman.&nbsp;<br />\r\n\t\t\tXar kun meditatsiya qvomman . Togdigidanam kuchli b&ograve;votti uyda . Qorquvlarim ketib qoldi. Nima &ograve;ylasam darrov xayotimda korvomman aksini.<br />\r\n\t\t\tMushtariy sizga kotta raxmat. Yillab qidirgan xotirjamligimni topdim. Sizni yaxshi koraman😘😘</span><br />\r\n\t\t\t<u><strong>Феруза Х.</strong></u></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan="2">\r\n\t\t\t<p style="text-align:justify"><span style="font-size:14px">Я после ретрита нахожусь в возвышенном состоянии. Я поняла что я не одинока. Ощущение счастья меня не покидает. Когда я ловлю мысль на себе , то у меня улыбка на губах. При встрече с человеком , если я ощущаю негатив, то сразу себе говорю: здесь твое отражение и нахожу это отражение. Принимаю это и ситуация разглаживается. Вид моего мужчины&nbsp;у меня вызывал&nbsp;отвращение. Вчера при встрече я не почувствовала этого, спокойно &nbsp;поговорила. Стараюсь каждый день делать медитацию и Кто Я. Но по моему не вхожу окончательно в это состояние, звуки города отвлекают меня. Надеюсь это временно.</span></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan="2" style="text-align:justify"><span style="font-size:14px"><strong>Наргиза- Мадонна&nbsp;</strong><br />\r\n\t\t\tЖуда бошкача бб кетти куп нарса.<br />\r\n\t\t\tКалбларда котта узгаришла. Хатто одам тушуномиям ковотти. Биласизми, калбимда шунака мехр мухаббат ичларимдан тошиб кетвотганга ухшиди. Хамма нарса вазиятлага шунака хотиржамлик бн каравоман, хеч бир кийнчиликсиз хал кивоман, хамма бувотган вазиятлани жавобини шу захотиек англавоман. Жуда куп карздорларим кетмакет пулларими етказишвотти. Шунака ичимда мехр тошиб чиквотти. Ощущенияларими базиларини етказибам беромиман. Узимга шунака чиройли куринвоман. Медатациялани кивоман, ман кимман узини тинми кивоман. Негадир йиглагим кевуради шуни кисам, нимага билмиман. Ичим тошиб чиквуради. Нимадир янги нарсала кигим кеб кетвотти. Бирам ажойиб холатдаман.<br />\r\n\t\t\tБолаларим канакадир жудаям мехрибон бб колишган жудаям.</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:50%">\r\n\t\t\t<p style="text-align:justify"><strong><span style="font-size:14px">Гузаль</span></strong><br />\r\n\t\t\t<span style="font-size:14px">Добрый день, Муштарий и Лола. Сегодня ровно месяц как я приехала с ретрита, который проходил в замечательном месте, в горах Ангрена на турбазе &quot;Янгиабад&quot;. Я Вам очень признательна и благодарна за вашу работу и желание помогать людям. За этот месяц у меня произошли большие перемены в жизни. Самое главное изменения произошли внутри меня, в мыслях в душе. Чувствую себя так будто мир вокруг меня стал другим, лучше чем месяц назад. В душе чувствую огромное счастье которым хочется поделиться со всеми, кто меня окружает. Спасибо Вам огромное желаю Вам удачи и успехов в вашей работе, женского счастья, океан любви и уважения.</span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:50%"><img src="https://static.wixstatic.com/media/c7735e_8636e8bb6d744b75a42c7b6e7870f7a0~mv2.jpg/v1/fill/w_290,h_262,al_c,q_80,usm_0.66_1.00_0.01/c7735e_8636e8bb6d744b75a42c7b6e7870f7a0~mv2.webp" /></td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>		2018-09-18 07:24:03.284468+05		f
9	Аида, Ташкент, "Путь к себе "	<p style="text-align:justify">Муштарий! Хотела вам выразить огромную признательность за семинар , моя жизнь изменилась в лучшую сторону . Информация которую я слышала на семинаре была не новая мне , но я не умела применять её в своей жизни , вы очень просто и доступно объяснили и я научилась жить совсем по другому . Мои отношения с моим сыном полностью вышли на другой уровень , я отпустила контроль над всеми и в том числе над ним , только когда он просит совета я ему даю советы на основе моих знаний , опыта и интуиции . Он ко мне стал относиться как к матери , слышит и выполняет мои просьбы , я в свою очередь уважаю его право выбора и даю ему его пространство . Он сегодня в первый раз за долгое время подошёл ко мне и поцеловал по своей инициативе , мы сейчас проводим чаще время вместе и после семинара ни разу не ругались . У меня к нему любовь возрасла в сотни раз , я думала я его любила , нет я понимаю что сейчас люблю его по настоящему .</p>\r\n\r\n<p style="text-align:justify">Учусь любить себя и балую себя и я вижу что люди совсем по другому ко мне стали относиться , а главное я живу без претензий и ожиданий что дало мне огромную свободу , так же замечаю что у меня интуиция становится моим хорошим партнёром по жизни и страхи стали отступать .</p>\r\n\r\n<p style="text-align:justify">Ещё один момент , отношения с моей подругой, которая является моим директором так же кардинально стали другими , она меня больше совсем не раздражает , я в ней увидела совсем другую личность , мы с ней открываем своё дело и теперь она не мой директор , а мой партнёр</p>\r\n\r\n<p style="text-align:justify">Благодарю Вас за ваш прекрасный семинар и желаю вам всех благ и огромного счастья</p>		2018-09-18 06:24:24.818565+05		f
11	ФЕРУЗА, ТАШКЕНТ	<p style="text-align:justify"><span style="font-size:14px">Доброго вам времени суток. Спасибо большое Вам, Муштарий, за Вашу помощь. которая пришла мне как раз в то время, когда я очень сильно &nbsp;нуждалась в ней. После 2го разговора с вами все как-то раскрылось с лёгкостью. и я смогла посмотреть на свою не&nbsp;легкую ситуацию с другой стороны и легко приняла решения. Откуда то появилось сильнейшее желание и силы быть счастливой. И боль которую я боялась исчезла.</span></p>		2018-09-18 06:28:21.309292+05		f
12	НИЛЮФАР, ТАШКЕНТ	<p style="text-align:justify"><span style="font-size:14px">Меня зовут Нилуфар,&nbsp;мне 38 лет,&nbsp;по образованию врач .Замужем, трое детей Родом из Андижана, но проживаю в Ташкенте. На семинар Муштарийхон попала случайно, один раз ,но этого было достаточно, чтобы полюбить и зауважать такого человека, как она.</span></p>		2018-09-18 06:29:27.171348+05		f
13	НАТАЛЬЯ	<p style="text-align:justify"><span style="font-size:14px">Меня зовут &nbsp;Наталья. &nbsp;Мне скоро будет 32 года. &nbsp;Я замужем. &nbsp;Люблю и любима. У нас с мужем &nbsp;2 детей. &nbsp;Счастлива в браке. Юрист по образованию. &nbsp;Последнее место работы - юрисконсульт в микрокредитной организации.<br />\r\nОчень &nbsp;люблю, ценю и уважаю нашу наставницу, &nbsp;красавицу &nbsp;Муштарий. &nbsp;Знакома с ней более 2 лет. &nbsp;Благодаря ей многое изменилось в моей жизни. И надеюсь что это не предел.<br />\r\nВедь &nbsp;все лучшее у нас только &nbsp;впереди</span></p>		2018-09-18 06:29:47.832941+05		f
14	Саодат Султанова. Путь к себе сентябрь 2016г	<p style="text-align:justify"><span style="font-size:16px">7 дней семинара прошли очень быстро.Было жалко, что это закончилось. Хотелось слушать ещё и ещё. Получила массу удовольствия. Разобралась в некоторых отношениях с близкими.Научилась как выходить из стрессовых ситуаций. Рекомендую всем, кто попал в тупиковую ситуация, кто хочет разобраться в своих чувствах и в своих отношениях с близкими и любимыми.</span></p>		2018-09-18 06:30:05.595346+05		f
15	D. Toshkent	<p style="text-align:justify"><span style="color:null"><span style="font-size:18px"><span style="font-family:spinnaker,sans-serif"><em><span style="font-size:18px"><strong>Man sekin osoznavat qilishi bowladim😅 Man oldin qalbimda &ouml;zim bn &ouml;zim b&ouml;volib, kn fikr hayollarimi t&ouml;grilavoman. &nbsp;I &ouml;zimu hayotimga javobgarlikni his qilgan holda, atrofdilani ayblawni t&ouml;xtatdim.</strong></span></em></span></span><br />\r\n<span style="font-size:18px"><span style="font-family:spinnaker,sans-serif"><strong><em><span style="font-size:18px">Mushtariy opa, siz manga kotta turtki b&ograve;ldiz, &nbsp;kak budto mani chuqur uyqudan uyģotdiz. Ya vse vremya razniye knigi chitala, audioleksiyi slishala. No ne osoznovala. Nasib qilsa, &quot;Qalbga y&ouml;l&quot; seminarizga boraman. 🙏💋💋💋</span></em></strong></span></span></span></p>		2018-09-18 06:30:41.48892+05		f
26	Наргиза А. Ташкент	<p style="text-align:justify"><span style="font-size:14px">Муштарий коттакон Рахмат. Сиздан хамма хурсанд 💋💋💋<br />\r\nСийним хозир келип тинми мактаб кети. Яхшиям сиз борсиз 😘😘😘<br />\r\nЛолочка отдельное спасибо вам, все в восторге от вас😊вы большая молодец</span></p>		2018-09-18 06:44:25.794308+05		f
16	САМАРКАНД. СЕМИНАР-ТРЕНИНГ "ОИЛА ВА ШАХСИЙ ХАЁТ" ИШТИРОКЧИЛАРИ	<p style="text-align:justify"><span style="font-size:14px"><strong>Мухаббат Самарканд</strong>, [07.01.17 13:08]<br />\r\nAvvalombor sizga ming raxmat<br />\r\nEng asosiysisi sizdagi ayollik ziynati bizga ming yillik bilim berdi</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px"><strong>SHOXISTA QOSIMXONOVA</strong>, [07.01.17 13:53]<br />\r\nSalom Mushtariy opa men sizdan minnatdorman sizdan ko&#39;p narsa o&#39;rgandim</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px"><strong>Машхура Самарканд</strong>,&nbsp;[07.01.17 13:57]<br />\r\nХайрли кун!!! Муштарий сизга катта рахмат сиз тенги йук устозсиз сиздан олган билимларимиз хаётда уз урнимизни топишга катта ёрдам беряпти!!! Сизни жудаям яхши курамиз</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px"><strong>Маърифат &nbsp;Самарканд</strong>,&nbsp;[08.01.17 00:07]<br />\r\nАссалому алайкум Муштарийхон !!!Рахмат сизга биз айолларга кимлигимизни, оила ва оиладаги урнимизни, узимиз учун яшашни, &nbsp;фарзандларга муносабатни, эркакларга булган ишонч хурматни,УЗИМИЗНИ СЕВИШНИ ва севгимизга яраша севилишимизни,&nbsp;Аввалом бор айол эканимизни англатганиз учун каттаконРАХМАТ</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Сизни борлик асрасин, доимо ишингиз унгидан келиб,мартабангиз бунданда улуг булишини,неки орзулариз булса яратганнинг узи амалга оширишини севгим билан борликдан сурайман УСТОЗ!!!💋💋💋💋💋💋</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Борлик яна сиз билан дийдор куришмокликни насибу руз айлаган булсин илохим.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Бизга булган этибориз учун ташаккур асалим</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px"><strong>Нилуфар Самарканд</strong>&nbsp;&nbsp;[08.01.17 06:59]<br />\r\nАссалом МУШТАРИЙ💋💋💋Сизни жуда жуда яхши кураман сиздек устозни бир охтарганман хаетда узлигимни топишга ва яна жуда куп саволларимга жавоб топишга ердам берденгиз .Сиздан жуда миннадорман бу дунеда борлигингизга мартабангиз бунданда зиеда булсин Аеллик бахти Оналик бахти сизни тарк этмасин.💋💋💋💋💋</span></p>		2018-09-18 06:32:31.674859+05		f
17	Э. Ташкент	<p style="text-align:justify"><span style="font-size:14px">Муштарий, спасибо Вам огромное за то что откликнулись на мою ситуацию , а вопрос был в том , что нам с ним делать ? Оставить все как есть ?пусть все идёт своим чередом ? главное ничего не боятся<br />\r\nЯ все поняла, спасибо Вам &nbsp;огромное , очень много точек расставились над и , Вы так чётко сформулировали ход моих мыслей и идей , у меня была просто каша в голове , а сейчас все встало на свои места, и вообще ваш тренинг многое уже изменил в моей жизни, в том числе и наши с ним отношения , благодарю Вас &nbsp;, низкий низкий вам поклон 💋💋💋💋💐💐💐💐💐<br />\r\nВы столько добра приносите в этот&nbsp;мир , жизни людей меняются кардинально , счастья Вам женского, процветания , благополучия Вам &nbsp;и всем Вашим родным и близким 👍👍👍👍💋💋💋💋</span></p>		2018-09-18 06:32:59.05346+05		f
18	Наргиза. Ташкент	<p style="text-align:justify">Очень важно знать и помнить, что мы можем получить знания только тогда, когда мы внутренне смиренны.<br />\r\nТакой настрой должен быть у нас в течение всей жизни, потому что Вселенная учит нас каждую секунду.<br />\r\nПоэтому, даже когда вы изучаете иностранный язык или учитесь водить машину, желательно внутренне поклониться тому, кто вас учит, его энергии учителя. Так что поблагодарим Муштарий! Спасибо вам!!!</p>		2018-09-18 06:33:35.618238+05		f
19	Мапура. Ташкент	<p style="text-align:justify"><span style="font-size:14px">Зур👍👍хамани яхши курип ковомман. Куп саволага жавобла олдим. Аслида Севги нимагалигига жавоб бердила Муштарий😍🙏 Ман янаям хает уйинлигини осонлигини тушундим. Хулласс хает зур.ящащи узи бир немат🙏👍 Хамма саволага жавоб ичимиздаэкан аслида</span></p>		2018-09-18 06:33:51.170771+05		f
20	Шохиста.Тошкент	<p style="text-align:justify"><span style="font-size:14px">Дарс зур булди . Рахмат коттакон Муштарийга ва Лолапа сизга хам .💋😘хаммамиз мазза килдик .</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Лолахону Муштарийхонгаям мингдан минг рахмат яхши угиллар беришсин</span></p>		2018-09-18 06:34:10.686542+05		f
21	Саодат. Ташкент	<p style="text-align:justify">Спасибо Лолочка.с Вами рядом обретаешь спокойствие.🙏👍💋💋💋🌹🌹🌹🌹<br />\r\nРоса хотиржамсиз.</p>\r\n\r\n<p style="text-align:justify">Муштарийгаям алохда миннадорчилик билдраман.🙏💋💋🌹🌹<br />\r\nХамма саволармга жавоб олдим.</p>		2018-09-18 06:34:31.279987+05		f
22	Мадонна. Тошкент	<p>Муштарийга рахмат. Ман Муштарий бн хайрия семенарида биринчи куриб танишганман олдинги йил. Анграйиб когандим и 4 соат утиб кетганини сезми коганман. Бир йил ичида хаетимда зур узгаришла бб кетти. Минатдорман хаетда шу аел бн танишиб дарсларига катнавотганимдан.</p>		2018-09-18 06:34:56.137025+05		f
23	Мунира. Тошкент	<p style="text-align:justify"><span style="font-size:14px">Муштарий Билан булган дарсдан жудаям коп билим олдим.ман борликдан миннатдорман. Муштарий,Лоладек устозлани берганидан,силадака дугонала берганидан.кеча ман роса катта энергия хис килдим.калбни эшитиш,кам гапириб,эшитишни ургандим,олдимдиги инсонни калбидиги борликни хис килишга у устидамас калбида нима димокчилигини хис килишга харакат кивоман.калбни хис килиш бу бошкача нозикро ,екимли хис туйгуякан хич качонда бунака нарсани хис кимовдим.миннатдоиман.хаммани севаман😍😍😍😍😍😍💋💋💋💋💋💋🙏🙏🙏🙏🙏</span></p>		2018-09-18 06:35:18.401916+05		f
24	Наталья	<p>Всем доброго времени суток!<br />\r\nВчера прошла благотворительная встреча Муштарий, посвящённая теме Любви. &nbsp;Встреча прошла как всегда великолепно! Очень продуктивно, познавательно и весело ☺️! Обменялись со всеми энергией любви и позитива...&nbsp;<br />\r\n❤️❤️❤️&nbsp;<br />\r\nПорадовали новые знакомства и тёплые встречи с уже знакомыми единомышленниками !</p>\r\n\r\n<p>Огромная благодарность Муштарий и организатору встречи- Лоле!💋💋💋</p>		2018-09-18 06:35:35.297428+05		f
28	Феруза. Ташкент	<p style="text-align:justify"><span style="font-size:14px">Mi lyubim vas Mushtariy. Spasibo vam. Posle vipassana ya pochustvovala nakonetsto pokoy v duwe. Mnе ochen nravitsa delat tiwinu. Ya chustvuyu v tele vibratsiyu i energiyu . Chistotu duw i lehkost😘😘😘😘</span></p>		2018-09-18 06:44:56.654168+05		f
29	Гульноза. Ташкент	<p style="text-align:justify"><span style="font-size:14px">Ман бу семинардан олдин хаетим кизик масиди яшагим кемаетуди как будто&nbsp;я была нужна только для&nbsp;работы&nbsp;по домашним делам, готовить, убирать и т.д.&nbsp;Я&nbsp;очень устала, а муж все время&nbsp;командовал&nbsp;мною,&nbsp;не давал мне пакоя. После семинара я поняла , что это все, &nbsp;что творится&nbsp;в&nbsp;моей душе показывали&nbsp;мои близкие. И я все это&nbsp;поняла и стало легчи в душе. спасибо&nbsp;балшое &nbsp;вам ,&nbsp;что вы есть 😘😘😘😘💋💋💋🌷🌷</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Муштарий ман сизи яхши кураман боризга шукур хаетими енгилаштирганизга рахмат асалим калбим шунаканги тинчки мазза килип яшавоман хаетта&nbsp;яшаш шунаканги енгилки мазза килип хар бир дакикасидан бахтни сезиб мазза кивоман сизга рахмат зулматдан опчиктиз мани&nbsp;</span></p>		2018-09-18 06:45:13.457841+05		f
30	Латофат. Ташкент	<p style="text-align:justify"><span style="font-size:14px">&nbsp;Салом Муштарий опа сизга катта рахмат доим сог булин инсонларга йордамиз жуда ката сизни жуда яхщи кураман узимни англашга ката йордам бердиз</span></p>		2018-09-18 06:45:41.388344+05		f
31	Диёра. Ташкент  "Пул окимини оч" семинар-тренингдан	<p style="text-align:justify"><span style="font-size:14px">Raxmat! Bu seminar man uchun 350 milliard dollarlik natija berdi! Ozimam kutamagandim! Mushtariy opaga hamma guruhga raxmat!</span></p>		2018-09-18 06:45:57.125895+05		f
32	Эльвира.Ташкент	<p style="text-align:justify"><span style="font-size:14px">Дорогие Муштарий и Лолочка!Спасибо вам за прекрасный семинар!!!👍👍👍🌹🌹🌹Мне очень,очень понравилось!Буду с нетерпением ждать таких же семинаров!Удачи вам и Любви!🙏😘😘😘</span></p>		2018-09-18 06:46:11.48933+05		f
34	Отзывы участников Ретрита Випассана 17-23 мая	<p style="text-align:justify"><span style="font-size:14px"><strong>Феруза:</strong><br />\r\nAssalomu aleykum . Vipasanachilarimiz. Manda rossa ozgariwla kop. Xich nimani aqlim bn bowqarommayamman. Xamma narsa oz ozidan bopketvotti. Xuddi butun dunyo mayda parlanim xamma narsa aralawib bitta bopqogandey uwatga manam kirib ketganman. Garmоniya xis qvomman. Qatga borsam, xamma narsa joy joyiga tuwib man uchun xal bopqovotgandey xammasi<br />\r\nNimа bogandayam meditatsiyalani toxtatmaslik kerekan. Xar safar ozimni yomon xis qsam xich nimaga eriwommadim, baribir ozimni yomon xis qvomman dib oylirdim lekin xozir bilvomman qanchalik osib ketvotganimni juda kotta tezlikda. Mani uchratib qogan odamlayam xayron manga yopiwib qoliwvоtti sababini ozligisi biliwmiydi. Xamma narsa xuddi wunaqa boliwi keredey xayotimda. Bowqa izmereniyaga tuwib qoldim.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px"><strong>Мапура:</strong><br />\r\nЯ почувствовала что наш семидневный ретрит прошел на очень высоком уровне.В разнообразии.<br />\r\nМедитации (хотя мне было поначалу трудно))и кундалини,посиделки у костра- все было очень классно,на высоком уровне. Мне опять хочется там быть.<br />\r\nБлагодарю Муштарий за Ваш нелегкий труд. Вы помогли нам найти себя. И Лоле также искренняя благодарность.<br />\r\nЯ осознала, что с душой очень легко жить, а ум всегда пугает.В данный момент душа сама меня ведет по правильной дороге. Благодарю Вселенную. Благодарю Себя.<br />\r\nМоя любовь бесконечна ко всем вам.❤️</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px"><strong>Мунира:</strong><br />\r\nШу жойга келиб калбим шунака яйради шовуллаб окаетган сой,тоглани салобати куешни хамма жойга бир хилда мехр севги бн нур сочвотгани,хавони тоза бегуборлигидан маст булдим. Шу холатимда табиатни бу кунсури хаво,ер,сув,куеш бн эриб бир бутун булдим,бу шунака холатки этиб ,тушунтириб бумийди. бир бутун булиб калбим рухим аклим ва танам бн аралашиб эриб борвурдим ВС яратувчини борлигини у севги эканлигини у уша МАН эканлигини хис килдим. тоглар бн гаплашдими тоглар худди устозлар ибодат холатида утирганга ухшийди.емгир,кор,сел,куешни куйдириши уларга тасир кимийди дунедан ажралмаган холда салобат тукииииб утиришади,дарахтлар буса устоз багридаги шогирдлар илм олишади илдизлари оркали.кайси бири совука,куешга,селга чидолмаса куриб колвуради.сувни буса умрга,вактга ухшатдим тинмий окиб кетвуради уни вазифаси узини тиник ,покизалиги бн хамма нарсани ювиб чанкаганларни сугориб хает бахш этади.хаво нима у .кузга куринмийди,ушлаб бумийди,лекин у хаетни асосий кисми у йук жойда хает хам йук.уни хис килганда онани эсимга келди унга бошкалардан хеч нарса керемас у бор уз вазифасини килвуради булди .табиатда барча ходисалар шартсиз боглик.шамол,хаво,сув,куеш,тоглар,усимликлар хайвонлар факат уз ишини килади булди .бир бирини ишига аралашмийди.хаммаси бир бутунликда борликни англатади.хаа хает Гузал унда яшаш осон факат буни англаб хис килиш керекан холос💋💋💋💋😍👯</span></p>\r\n\r\n<p style="text-align:justify"><strong><span style="font-size:14px">Х:</span></strong></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Vipassanadan keyin hayotimda asosiy quyidagi ozgarishlar boganini sezvomman:<br />\r\n❤birinchidan muammo tushuncha sifatida yoq bolib qoldi, hozir hech nimadan, nimadir oxshamasligidan umuman xafa bolmayapman, ham qanaqadir ishlar qopketvotganidan havotir olmayamman. Zdes i seychas yashash nimaligini endi xis qivomman<br />\r\n❤ikkinchidan erim bilan munosabatlarimiz yana iliqlashib, ularni qanchalik sevishimni va ayniqsa ular mani qanchalik sevishlarini xis qivomman. Torisini etsam azgina zerikib ketudim uladan. Hozir esa ulaga shunaqa xissiyotlarim kotarilib ketvottiii<br />\r\n☺️&nbsp;Uchinchidan atrofimdi odamla, narsala, joylada, interyerda i ovqatlarda Sevgi energiyasini xis qilishni boshladim. Kafeda salat yoki ovqat mehr bilan qilinmaganligini srazu xis qivomman) yoki naoborot interyerdagi sevgi energiyasini xis qilishni boshladim. Yani odamla qanaqa mehr bilan shu interyerni yasashganini xis qilib, usha sevgida chomilvoygandek bovomman<br />\r\n❤&nbsp;Feruza vipassandan oldin bu narsalarni etganlarida wow fantastika degandim ichimda. Endi ozimdayam shu xissiyotlar.<br />\r\n😄&nbsp;Sila tufayli shunday mojizalar sodir bovotti hayotimizda😘</span></p>		2018-09-18 06:49:15.909599+05		f
36	Диёра	<p style="text-align:justify"><span style="font-size:14px">Моё cамое лучшее путешествие &nbsp;- &nbsp;Випассана</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Поездки до этого в США, Европу, &nbsp;ну никак не сравнятся с тем путешествием, которое я осуществила в 2017 году! Как &nbsp;будто полетела в необъятный космос, во Вселенную. А я &nbsp;совершила путь в свои глубины, в свой внутренний мир через ретрит Випассана. Ведь мудрецы всегда твердили &ndash; познаешь себя - познаёшь мир. И я наконец-то смогла понять, что же они имели в виду!</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Всего лишь 7 дней высоко в горах&ndash; без общения, минимум еды, без чтения, даже без взглядов на окружающих людей, а телефон лежит в сейфе. С утра до вечера &nbsp;- только &nbsp;медитации и одиночные прогулки среди великих гор и чистых ручейков. &nbsp;В этой тишине я начала вновь узнавать себя и свой мир. В этой тишине, я начала вновь знакомится с собой.&nbsp;<br />\r\nЧто самое важное я осознала во время этого необычного путешествия:</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">&Oslash; &nbsp;Внутри меня всегда есть, была и будет- &nbsp;безграничная любовь и сила, неважно где я, с кем я и какая я. Это &ndash; &nbsp;дар от бога каждому человеку на этой земле. Не нужно быть кем-то, или каким-то, чтобы ощутить эту силу. Нужно только в тишине посмотреть внутри и прочувствовать её. Не нужно меняться или требовать от себя совершенств, ведь эта любовь от бога уже есть с рождения, всегда была и будет. В любом &nbsp;моём состоянии &ndash; будь это апатии, злости, агрессии &ndash; она всё равно внутри меня.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">&Oslash; &nbsp;А смысл жизни я поняла, это осознав эту внутреннюю силу, найдя её внутри себя, из этой силы начать творить. Когда я ощутила бога внутри, я поняла, что теперь я могу стать со-творцом. Т.е. творец будет творить через меня в этом моём мире.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">&Oslash; &nbsp;А ещё я осознала, что всю жизнь переживала из-за проблем, которых на самом деле ну нет.) Это было великим открытием для меня. Все те проблемы, которые я считала глобальными, потеряли свою суть. Ох, как же нас обманывают, что есть много проблем. Во время ретрита я поняла &ndash; на самом деле проблем не существуют. Ни одной.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">&Oslash; &nbsp;Во время погружения в себя я поняла, что я смотрю на мир через столько очков, которых приобрела в детстве. Самые чёрные очки я смогла снять во время ретрита.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">&Oslash; &nbsp; Я осознала, &nbsp;через свои воспоминания из детства, что для каждого ребёнка для того, чтобы он рос внутренне счастливым, нужно всего лишь два условия от родителей:</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Во-первых, чтобы мама ощущала внутреннее спокойствие и принятие всего в жизни. Это также означает, она должна быть счастливой сама в первую очередь. Знала бы каждая мама, как это чувствуется ребёнком. Даже если, ребёнку больно, но мама в этот момент чувствует, что всё нормально и естественно, то ребёнок тоже воспринимает это же болезненное состояние- как естественное и без боли. Второе условие- это внутренне безусловно любить и принимать ребёнка. Как бы банально это не звучало, но это должно быть именно внутри. Какой бы истеричный, плаксивый ребёнок, нужно всё равно без условий любить его&hellip; Мои воспоминания в 3-4 годика рассказали мне об этих условиях.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">В ЗАКЛЮЧЕНИИ, я хочу поделиться самым для меня важным осознанием. Оно пришло только через 6 месяцев после Випассаны. После ретрита &nbsp;исчезают все страхи, все ограничения. У меня тогда была чёткая вера, что всё возможно, что всё зависит только от моего намерения. Состояние &nbsp;внутри &ndash; умиротворение и даже кайфовое. Но хочу ДАТЬ ИСКРЕННИЙ СОВЕТ, всем тем кто собирается на следующий ретрит випассанну. После випассаны, нужно &nbsp;срочно делать две вещи: &nbsp;</span></p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;"><span style="font-size:14px">Реализовать все свои идеи и достигать успеха в делах, достигать финансового благополучия</span></li>\r\n\t<li style="text-align: justify;"><span style="font-size:14px">Развивать своё тело через спорт, массаж, танцы и т.д.</span></li>\r\n</ol>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">&nbsp;Почему я это советую, потому что, многие залипают в этом &laquo;кайфовом&raquo; внутреннем спокойствии, пытаются это сохранить, а другие аспекты начинают разрушаться.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Ведь человек в этом мире должен балансировать три развития: духовное, социальное и биологическое. Так вот випассана круто поднимает духовное развитие. Из-за этого, &nbsp;нужно духовность отпустить чуток и подтянуть социальное и физическое. &nbsp;Если у вас ещё возникли, какие нибудь вопросы по ретриту Випассана, с удовольствием вам отвечу,пишите в инстаграме @dioranur, или ютюбе dioranur, fb- diyora turabekova 💋</span></p>		2018-09-18 06:56:00.482431+05		f
37	Мунира	<p style="text-align:justify"><span style="font-size:14px">Манам силага Муштарий мани чукурга тушволиб яна мазза кип утирганимда уйготиб каерда утирганими курсатганларидан кейин ишимда излана бошладим, бошка иш киламан дисам бумади кейин уз олдимдиги ишимни кенгайтириш учун &nbsp;изландим,куп укидим . Натижада жахон согликни саклаш ташкилотига сотрудничества кип ишга олишди . Лабораториямда жахон стандартига буйича иш юритвоман. Ман тушундимки бизари кузатиб турувчи хамма ишни килвураркан. Хич миямга билим киромиятувди, калбда хамма билим боракан, калбимиз очилгани сари билимлаям чиквураркан. Ман духовность бн моддий хаетни уйгунлаштира олмасдим хозир тушуниб колдим акл камро гапирса, хамма иш ухшийвураркан. Октябр ойида Шветцияга акамгила туйга таклиф килишди,харажатларини узлари кутариб, бир ойга умримда биринчи марта самолетга чикиб бошка юртга бораман. Шунака гапла. Муштарий сиздан жудаям миннатдоиман. Сиз энг яхши устозсиз, Сиздан куп нарсани ургандим. Хали бу кам, кетиздан этагиздан ушлаааб Випасаналага бораман албатта💋💋💋💋💋💋😍</span><br />\r\n<img src="https://static.wixstatic.com/media/c7735e_ebb82414205f4bf2a397ce2959170282~mv2.jpg/v1/fill/w_544,h_305,al_c,q_80,usm_0.66_1.00_0.01/c7735e_ebb82414205f4bf2a397ce2959170282~mv2.webp" /></p>		2018-09-18 06:57:01.890164+05		f
38	"Пул окимини оч" семинар-тренингдан натижалар: Самарканд 2017.	<p style="text-align:justify"><span style="font-size:14px"><strong>Мухаббат Самарканд:</strong><br />\r\nBilasizlarmi men judayam natijalar haqida gapirgim va gaplawgim keldi.<br />\r\nMen uzimni wu darsdan kn anglash nimaligini anglab tushindim<br />\r\nXayolimga kelgan barcha uylarni anglayolyapman. Xis qilish suzini tushingan ekanmanu xis qilish nimaligini xis qilib kormagan ekanman. Xayoldan o&#39;yga o&#39;ydan esa timsolga aylanishini yani voqealarga ulanishini korib natijani anglab uni birinchi marta xis qildim. Tanam va uy xayollarim yigilib bir butun natijaga aylanib qolar ekan<br />\r\nUy xayollarimning natijasi nimayu men xoxlagan natija nima. Buni xis qildim. Va men xoxlagan matijaga qarab uylarimni uzgartirdim. Birinchi marta Javobgarlikni uz buynimga oliwni uddaladim<br />\r\nBu men un naqadar quvonchliligini bilsanggiz edi<br />\r\nXar safar seminarga borganimda Mushtariy opaning har bir gaplarini gapirayotganida har kuni men uzim nega borganim esimdan chiqib ex u kelganida edi bu kelganida edi wu narsalarni bilardi asl haqiqatni tushinardi ayniqsa turmish urtogimga nisbatan razdrajeniya kuchayib ketardi. Bormaydi darsga bilmaydi tuwinmaydi eski narsalar xaqida faqat uylaydi deb uzim eski davrda qolib ketganimni anglamagan xis qilmagan ekanman. Bu safar esa umuman boshqacha. Uzimga kk ekanligini wuncha safardan beri buni xis qildim. Bilasizlarmi meni har kuni kechqurun uzim emas xoxiwim kochaga chiqishni xoxlaydi wunchalik mazza qilaman har kuni va yana har kuni men shunchalar waxar gozalligini xis qildim uylarim uzgarganini waxar kochalari naqadar gozalligini xis qilganimdan angladimki uzimiz singgari uy xayollarimiz ham ozod va erkin bulishi kk ekan</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Har kuni turmish urtogim mendan oldin tayyor bulib turadi . Biz 1:20 min mazza qilib aylanib kelyapmiz xoxwiy bazida ikki soatga ham chuzilib ketganini payqamay qolyapmiz.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Bilmayman buni bu haqida sizlarga rosa bulishgim keldi</span></p>\r\n\r\n<p style="text-align:justify"><strong><span style="font-size:14px">Юлдуз Хасанова Самарканд:</span></strong></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Хаммага алангалик САЛОМ. Хакикатдан хам мен хозир Мухаббатда узимнинг 1 йил олдинги аксимни курдим , атрофимдаги инсонларни аксим эканлигига ишонч хосил килганимдан кейин уларнинг каршиликлари мени ички дунём эканлигини англай бошлаганимда ва уша устида ишлай бошлаганимдан сунг хаёт канчалик гузал ва яшаш маза эканлигини англай бошладим, натижалар роса куп мелоч булса хам мужиза эканлигига хайратда коляпман. Фикрлашимдан, савол беришга улгурмай коляпман шу саволларимга борликдан жавоб оляпман . Биз бу дунёга чидаш ёки азоб билан яшаш учун келмаганмиз такдиримиз узимизни кулимизда хаммамиз МАЗА килиб ва рохатланиб яшайлик оллохга шукурлар булсин шундай инсонни биз билан учраштирганига .МУШТАРИЙжон сизга котта Р А Х М А Т💋💋💋💋💋</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Узимнинг натижам бн булишгим келди. мен Ламбре компаниясида бизнес билан шугулланаман клиентларим насияга олишни яхши куради жуда узок муддатга продукцияни бераётганимда пулни уйламай бошладим узок муддатга олаётганлар мижозлар тез беришга харакат килишни бошлади. Орзуларимни максадга тушуриб (калбимни овозига кулок солган холда )бирма бир руёбга чикаётканини ва пулнинг окими тезлашаётганини сездим. Хурматли тренинг катнашчилар олган билимларингизни кутубхона полкасига куймасдан ишга солинг 200% амалга ошади</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px"><strong>Санобар:</strong><br />\r\nМан хам бу семенарда катнашдим. Оллохга миннатдорчилик билдираман. шунака тренерни учратганига. хамма семенарларга катнашганман. бу семенарда ман узимдаги пул келишига тусик булувчи такикларни англадим. пулни тежаб ишлатарканман. борликда бу пул бошка манда булмайди дегани экан. хозир мазза килиб сарфлаяпман. купрок калбим хохлаган нарсаларни узим учун оляпман. медитацяда омадсизлик файлини эритиб юбориб изобиля файлини урнатдим. бахт пулда эмас деган такик бор экан<br />\r\nкоинотдан ман учун катта пул порталини очилишига рухсат бердим. Муштарийга миннатдорчилик билдираман. хаммангизни шартсиз севги билан севаман.💋💋</span></p>		2018-09-18 07:00:11.493055+05		f
39	Отзывы участников ретрита Випассана	<p style="text-align:justify"><span style="font-size:14px"><strong>Алима:</strong><br />\r\nЗдравствуйте участники ретрита Випассана! Так внезапно и неожиданно попала в эту группу. После ретрита ещё яснее поняла-мысли материальны. Больше стала себя любить, прислушиваться к себе. Похудела на 3 кг., чувствую- помолодела ( да и другие заметили). Мне стало легко и радостнее и спокойнее жить! Стала терпимее и осознанной. Голода как раньше не чувствую вообще. Практикую випассана и тишину. Спасибо организаторам ретрита- изумительной Муштарий Юлдашевой и Лоле.<br />\r\nХотела сказать прекрасной Лоле! Всем желаю счастья, любви и спокойствия в душе!</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px"><strong>Исожон Ака:&nbsp;</strong><br />\r\n🥀ретрит ажойиб нарса экан. Юзига карамаганим учун хеч кимни эслаб колмабман. Баъзи танишларни хисобга олмаганда.<br />\r\nХеч ким узига ухшамаяпдии . Уша пайтда ё мен эттибор бериб карамаганман, ёки хамма уз калбига кулок солиб ички холатида кураш кетаётгани учун ташвишли гамгин курингани сабаб, бугун курган кишиларнинг барчасининг юзидан нур ёгилади, кузларидан. хаётга мухаббат сезилиб турибди.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Муштарийга яна бир маротаба КООТТА рахмат, чунки яна бир нарсага амин булдимки ретритда кишига бир нарсани тушинтиришга ёки мажбурлаб уз фикрини сингдишдан йирок булдилар. Бу менга жуда хам ёкди🌹🌹🌹</span></p>		2018-09-18 07:00:51.705642+05		f
35	Mening uyg’onishim	<table border="1" cellpadding="1" cellspacing="1" class="table table-borderless" style="width:100%">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:50%"><img src="https://static.wixstatic.com/media/c7735e_fb82d3459c4c468dbc2a827d129db332~mv2.jpg/v1/fill/w_288,h_579,al_c,q_80,usm_0.66_1.00_0.01/c7735e_fb82d3459c4c468dbc2a827d129db332~mv2.webp" /></td>\r\n\t\t\t<td style="text-align:justify"><span style="font-size:14px">7 raqami &ndash;mening eng sevimli raqamimdir. Nazarimda aynan shu raqam menga hayotim to&rsquo;gri ketayotganidan doim xabar berib turadigandek. Hammasi 27 yil avval bo&rsquo;lgan yilning 7-oyida tug&rsquo;ilganimdan boshlandi. Baxtga to&rsquo;la bolalik onlarim Toshkent shahrining Dombrabod maxallasidagi sanoat ko&rsquo;chasining 17 raqamli uyida o&rsquo;tdi. Aynan shu uyda ota onamning mehrli, sevgi to&rsquo;la bag&rsquo;rlarida katta bo&rsquo;ldim, bizga yaqin yashaydigan buvi buvalarimni deyarlik har kuni ko&rsquo;rardim. Chang ko&rsquo;chalarda esa bolalar bilan mazza qilib lafta, jami, tir, oq teragim ko&rsquo;k terak, tennis, futbol, qorbo&rsquo;ron, berkinmachoq, quvlamachoq, parol-parol kabi bir biridan qiziq o&rsquo;yinlar o&rsquo;ynardim. Bolaligim judayam qiziqarli bo&rsquo;lganiga mingdan ming shukr deyman.<br />\r\n\t\t\t2007-yil esa o&rsquo;zim orzu qilgan Diplomatiya Universitetiga 7-raqamdagi omadli grant oluvchisi bo&rsquo;lib kirdim.Sevgan insonimni aynan shu universitet hovlisida uchratdim. Universitetda o&rsquo;qiganimdan eng asosiy ma&rsquo;no-mazmuni ikkinchi yarmimni uchratish bo&rsquo;lganligini mana hozirgina tushundim.<br />\r\n\t\t\tRavshan akamga turmushga chiqib, qizalog&rsquo;imning baxtli onasi bo&rsquo;lgach, Toshketning qoq markazidagi Darhon maxallasining 17-podyezdiga ko&rsquo;chdik. Shu podyezdda mening ikkinchi farzandim &ndash;shirintoy o&rsquo;glim dunyoga keldi. Turmush o&rsquo;rtog&rsquo;im bilan birga biz bolalarimizning shirin qiliqlari, samimiy kulgilari, og&rsquo;zidan chiqqan asal so&rsquo;zlarida ko&rsquo;milib bolalikka yana sho&rsquo;ng&rsquo;ib ketgandek bo&rsquo;ldik. Atrofdagi insonlar xis qilayotgan kelajak uchun havotir, qandaydir muxim muammolar, muxim rejalar, proyektlar biz uchun o&rsquo;z ma&rsquo;nosini yo&rsquo;qotdi. Farzandlarimiz tufayli o&rsquo;zimiz ham bolalardek yashay boshladik, kelajagimiz haqida emas, balki bugungi kun bilan yashashni o&rsquo;rgandik. Endi bilsam, bu eng to&rsquo;gri qilgan ishimiz ekan. Aynan farzandlarimiz uyg&rsquo;onishimizga, doim o&rsquo;zimizni sevib baxtli yashashga haqligimizni o&rsquo;rgatgan bizning ilk ustozlarimiz ekan.<br />\r\n\t\t\tO&rsquo;tgan yili 27 yoshga to&rsquo;ldim va shu yoshimda mening baxt to&rsquo;g&rsquo;risidagi tasavvurim o&rsquo;zgara boshladi. Juda ko&rsquo;p kitob o&rsquo;qidim. Hayotim mazmunini qidira boshladim. Va shuni tushunib yetdimki, ichki baxtim, hotirjamligim - atrofdagi insonlar va vaziyatlarga umuman bog&rsquo;liq emas ekan. Yangi kiyimlar, moshina, uylar xatto men sevgan sayohatlar ham mening ichki baxtim kafolatimas ekan. Mening baxtim -avvalo mening ichki dunyoyimda ekan. Shuningdek bu hayotda hech kim aybdor emasligini, yaxshi,yomon odam tushunchasi yo&rsquo;q ekanligini seza boshladim. Hamda o&rsquo;zimning har doim mukammal shaxs bo&rsquo;lishga intilishimdan voz kechdim. O&rsquo;zimga noideal bo&rsquo;lishga ruxsat bera boshladim.<br />\r\n\t\t\tO&rsquo;quvchi tayyor bo&rsquo;lganda, ustoz paydo bo&rsquo;ladi, deb aytishadi. Mana aynan hayotda ko&rsquo;p narsalarni anglay boshlagan bir paytda va aynan 27 yoshimda o&rsquo;zimning ma&rsquo;naviy ustozim &ndash; Mushtariy Yuldashevani uchratdim. So&rsquo;ngra esa 7 raqami bilan bog&rsquo;liq yana bir men uchun juda muxim hodisa ro&rsquo;y berdi. 2017 yil Bahorida Mushtariyning 7 kunlik &ldquo;Qalbga yo&rsquo;l&rdquo; seminar treningiga borish baxti menga nasib qildi.&nbsp;<br />\r\n\t\t\t7 kunlik trening mening dunyoyimni ostin ustin qilib yuboradi deb o&rsquo;ylamagandim. Men u yerga Mushtariydan savollarimga javob olish uchun borgan edim, ammo javoblarni aslida Mushtariydan emas, balki ichimdan, o&rsquo;zimdan topdim. Aynan o&rsquo;zimning qalbimdan topilgan bu javoblar mening hayotimni ostin ustun qilib yubordi. Seminar tugagach turmush o&rsquo;rtog&rsquo;im uyizmizni qanday palapartish axvolda bo&rsquo;lib ketganiga mening e&rsquo;tiborimni qaratdi. Men esa bu hammasi aslida aksim ekanligini tushunardim va bu palapartishlikka bemalol ruxsat berardim. Chunki bu palapartishlikdan keyin hayotim ham uyim ham, butun dunyoyim ham tozalanib yanada shaffof holatga kelishini aniq bilardim.&nbsp;<br />\r\n\t\t\tTreningacha ichki holatim qanday edi? Chetdan qaraganda men nolishga haqqim yo&rsquo;qdek edi. Sababi, turmush o&rsquo;rtog&rsquo;im bilan hech qachon urushmaganmiz. Bollarim ham sog&rsquo;lom, ota-onam ham juda mehribon, qaynona qaynotlarim esa dunyodagi eng bolajon, va nevaralarini ko&rsquo;klarga ko&rsquo;taradigan insonlardir. Ular bilan hech qachon yomon munosabatlarga bormagandik. Ho&rsquo;sh unda nega treninga bordim? Trening borishimdan asosiy sabab, bu hayotimdagi eng muxim inson &ndash; o&rsquo;zim bilan hecham chiqisha olmasligim edi. Men o&rsquo;zim bilan hicham baxtli bololmas ekanman.&nbsp;<br />\r\n\t\t\tMen doim baxtli, ochiq ko&rsquo;ngil, a&rsquo;lochi, muvaffaqiyatlarga erishadigan, hech kimni dilini og&rsquo;ritmaydigan, doimo kulib turadigan, hamda ota onamni yuzini yorug&rsquo; qiladigan yutuqlarga erishib turuvchi inson bo&rsquo;lishga intilardim. Odamlar meni ko&rsquo;rganda &ndash; aniq a&rsquo;lochi obrazini ko&rsquo;rishardi va bu haqda menga aytishardi. Ammo men bu obrazim va intilishlarimdan charchab ketardim. Sababi, tushkunlikka tushishga o&rsquo;zimga ruxsat bermasdim, tushib qolganimda esa men o&rsquo;zimni tergashni boshlardim. O&rsquo;zimda faqat a&rsquo;lochi Diyorani hurmat qilib, boshqasini mensimasdim. Ayniqsa men ota onamni umidlarini oqlamaslikdan qo&rsquo;rqardim. Atrofimdagi olam ham xuddi shuni oyna singari aks ettirardi. Quyoshli Diyorani hamma yaxshi ko&rsquo;radi, tushkinlikka tushgan Diyora esa hech kimga kerak emas edi. Xatto o&rsquo;ziga ham.&nbsp;<br />\r\n\t\t\t27 yoshimda men shuningdek hayotimda nima uchun kelganman, qaysi kasb mening ichki salohiyatimni, dunyoyimni ifoda etib oshkor qiloladi? Shunday savollar ham qiynayotgan edi. Qalbimda ko&rsquo;p narsani qilishni xohlasada, qiziqarli ideyalar kelsada, amalda aksini topmasdi. Hayol bo&rsquo;lib qolaverardi. Chunki men o&rsquo;zimni namoyon qilishga katta ta&rsquo;qiq qo&rsquo;ygan ekanman. Xullas seminarga men a&rsquo;lochi obraziga ega, o&rsquo;zini namoyon qilishga ta&rsquo;qiq qo&rsquo;ygan hamda o&rsquo;z kasbini aniqlash maqsadi bilan kelgandim.<br />\r\n\t\t\t7 kunlik seminarda Mushtariy ko&rsquo;p nazariy ma&rsquo;lumotlar berdi ammo barcha javoblar undan emas balki, qalbimiz bilan aloqaga kirayotgan meditatsiyalar davomida qalbimdan kelardi. Mushtariyning asosiy maqsadi ham bizga ma&rsquo;lumot berish emas, balki qalbimiz bilan ulash ekan.&nbsp;<br />\r\n\t\t\tI. Mendagi har bir hujayra, tanam va ruhimning har bir millimetri &ndash; bu sevgi va lazzat energiyasidan tarkib topgan. Men bu dunyoga sevish va lazzatlanish uchun kelganman. 7 kunlik seminar ichida men uchun eng katta anglash &ndash; bu sen kimsan? &ndash;degan praktikada keldi. Bu praktikada - ikki kishi bir birining ko&rsquo;zlariga termulib galma galdan sen kimsan? -degan savolni beradi.&nbsp;<br />\r\n\t\t\tMeditatsiyada aniq shuni bildimki, men aslida sevgi energiyasidan tashkil topgan ekanman. Har bir harakatim, har bir so&rsquo;zim, o&rsquo;ylarim hamma hammasining negizida kuchli sevgi energiyasi turar ekan. Men har bir qismim sevgi energiyasi ekanligini xis qilganimda, judayam lazzatlandim. Meditatsiya paytida butun tanam va ruhim yo&rsquo;q bo&rsquo;lib, sevgi oloviga aylandi.<br />\r\n\t\t\tBu meditatsiyaning eng qiziq joyi shundan iboratki, men atrofimda qurshab turgan barcha odamlar ham xuddi shu energiya ekanliklarini aniq sezdim. Ular meni juda qattiq sevishligini va men ham ularni judayam yaxshi ko&rsquo;rishimni butun vujudim bilan xis qildim. Hayotim davomida odamlar meni yomon ko&rsquo;rib qolishidan qo&rsquo;rqib yashagan ekanman. Chunki meni yomon ko&rsquo;rib qolishsa, men yolg&rsquo;iz qolaman degan o&rsquo;y qiynagan ekan Bu xis tuyg&rsquo;ularni so&rsquo;z bilan aks ettirish qiyin bo&rsquo;lsada, bir misra bilan aytganda men o&rsquo;zimning sevgi energiyamda cho&rsquo;mildim.&nbsp;<br />\r\n\t\t\tShuningdek, bu meditatsiya shuni anglashga yordam berdiki, har bir insonning harakati, qotilning boshqa odamni o&rsquo;ldirishi, onaning farzandini do&rsquo;pposlab urushi, kimnidir so&rsquo;kinib birovni urushishi, yoki qo&rsquo;pol javobi, va shunga o&rsquo;xshagan biz yomon deb o&rsquo;ylagan harakatlar zaminida aynan sevgi yotarkan. Hammasini inson aslida sevib qilarkan. Chunki bu harakatlar zaminida boshqa inson ruhini o&rsquo;sishiga yordam berish, muxim dars olishiga ko&rsquo;maklashish yotar ekan. Aqlan buni insonlar tushunmasada, ammo ruhan shu harakatlari orqali boshqa insonni sevayotgan bo&rsquo;lar ekanlar.&nbsp;<br />\r\n\t\t\tShu paytgacha menda juda ham ko&rsquo;p qoidalar bor edi. Misol uchun, shakarli maxsulotlar kam iste&rsquo;mol qilish kerak, sababi shaker sog&rsquo;liq uchu juda zararli. Go&rsquo;sht yema, u tez qaritib yuboradi. Hayotingni bekorchi narsalarga sarflama, har soniya biron narsa o&rsquo;rgan yoki foydali ishlar qil. Shu kabi juda ko&rsquo;p qoidalar mavjud edi. Ammo seminardan so&rsquo;ng, har bir soniyada qilayotgan ishlarimdan lazzatlana boshladim. Mazali biror narsa yesam, butun tanam va ruhim lazzatlana boshladi. Hozir shu misralarni ham yozayotganimda mazza qilyapman. Narigi dunyoda biz moddiy narsalarni ushlay olmaymiz. Biz toza ruhga aylanamiz. Yerga esa aynan moddiy narsalardan lazzatlanish kelishimiz vazifalaridan biri deb bilaman.&nbsp;<br />\r\n\t\t\tAslida yomon va aybdor inson yo&rsquo;q. Shu mavzu davomi sifatida ikkinchi anglagan muxim narsam bu &ndash;atrofdagi insonlarga va vaziyatlarga hech qandy baholamasdan munosabatda bo&rsquo;lishni boshladim. Oldinlari onasi besabab urushayotgan bolaga rahmim kelardi, kasalmand insonlarga, beshafqatsizlikka yuzlangan insonlarga achinardim. Hammaga achinaverardim. Kek saqlagan, mag&rsquo;rur va yuragi qattiq insonlarni esa yomon ko&rsquo;rardim. Endi esa, bildimkim, har bir ruh tanaga kirishdan oldin, o&rsquo;ziga kerakli tajribani tanlar ekan. Ota onasi tashlab ketgan bola, aslida judayam o&rsquo;zi uchun bebaho tajribani boshdan kechirayotgan ekan. Vaziyatlar ham doimo, men uchun, hamda shu vaziyatda qatnashayotgan boshqa insonlar uchun enng ma&rsquo;qul yo&rsquo;sinda amalga oshadi. Vaziyat yomon tugasa ham, qayergadir kech qolib, juda katta mag&rsquo;lubiyatga erishsak ham,aslida bu biz uchun eng ma&rsquo;qul vaziyat bo&rsquo;ladi.&nbsp;<br />\r\n\t\t\tAtrofimga hech qanday shartsiz boqishni boshlaganimdan beri, muammo degan narsa o&rsquo;z o&rsquo;zidan yo&rsquo;q bo&rsquo;lib qoldi. Nimadir o&rsquo;xshamasa, ham aslida bilamanki, bu o&rsquo;xshamaslik menga ko&rsquo;proq yaxshilik olib keladi. Men borliqqa butunlay ishonishni va nima bo&rsquo;lsa ham demak men uchun shunday bo&rsquo;lishi kerak ekan degan xis mahkam qalbimda joylashib oldi.<br />\r\n\t\t\tUchinchi angalshim, bu borliq har soniya men bilan gaplashayotganini, menga nimadirlarni o&rsquo;rgatayotganligini, ko&rsquo;rsatayotgani va xattoki xazillashib kayfiyatimni ko&rsquo;tarishini ham xis qilishni boshladim. Men butun dunyoyim, atrofimdagi yaqinlarim, qo&rsquo;shnilarim, guruhdoshlarim, do&rsquo;stlarim, xattoki notanish kimsalarni kuzatish birinchi navbatda men haqimdagi ma&rsquo;lumotlarni bera boshladi. Kimdir menga yoqimsiz, darrov u inson tomonga emas, o&rsquo;zimning qabul qilmayotgan taraflarimga nazarimni tashlay boshladim. Men qalbim ochilgan kuni, hayot menga turli signallar berayotganini aniq sezdim. Yo&rsquo;limda 80 yoshdan katta bo&rsquo;lgan dono cholbobolar uchray boshladi. Bu esa ruhimni juda ko&rsquo;tardi. Sababi, men shuni sezdimki, qariganimda tushunadigan haqiqatlarni aynan 27 yoshimda anglabman<br />\r\n\t\t\tTo&rsquo;rtinchi anglagan narsam, men, har bir so&rsquo;zim, har bir xatoyim, har bir harakatim, har bir emotsiyam, har bir izim, har bir hayolim, qanday bo&rsquo;lishidan qat&rsquo;iy nazar &ndash; mavjud bo&rsquo;lishga haqlidir. Men o&rsquo;zimni namoyon qilishga ruxsat bermasdim. Doim kichkinagina kiyimlar, past ovozda gapirardim, hech kimni ko&rsquo;nglini og&rsquo;ritmaslikka, hech kimga yukim tushmaslikka harakat qilardim. Trening paytida men borman degan meditatsiyani qilganimda, men har bir namoyon bo&rsquo;lishimga ruxsat berdim. Baland gapirishga, so&rsquo;kishga, hunuk bo&rsquo;lishga,tushkunlikda yig&rsquo;lashga, xoxolab kulishga buning hammasi hayotning ajralmas qismi ekanligini tan oldim. Eng qiziqarligi shuki, men nafaqat o&rsquo;zimga, boshqalarning ham erkinligini tan oldim. Kimdir mening oldimda so&rsquo;kkisi, chakkisi kelsa yoki meni urushgisi kelsa, xohlagan ishini qilishga haqli. Mening reaksiyam esa &ndash;bu o&rsquo;zimning ishim. Hayotning har bir jabxasining bor bo&rsquo;lishiga ruxsat bergandan keyin &ndash; yashash chegarasiz bo&rsquo;ldi. Men tushundimki, bu energiya doim cheksizlikda bo&rsquo;lib hech qanday chegarasiz harakat qilishi kerak ekan.</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan="2" style="text-align:justify"><span style="font-size:14px">TURMUSHGA CHIQQUNIMCHA, judayam ijtimoiy qiz bogan ekanman. Toshkentda nima tadbir bo&#39;lsayam, bittasini ham o&#39;tkazib yubormasdim. Halqaro konferensiyalagayam grantla yutvogan ekanman, chet ellagayam chiqib yurgan ekanman. FARZANDLA tug&#39;ilganida, dekretnaya pauza bo&#39;ldi. Bu pauzada duhovnostga kirib qoldim. O&#39;ZI HAMMADA ayniqsa yolidan adashganlarda bunaqa pauza obizatelno bolarkan. Man bu pauzada huquqshunos bolish, ertalabdan kechgacha ofisda kompyuterda otirish manikimasligini tushundim. Baxtli bolish uchun hich nima qilish aslida keremasligini tushundim.<br />\r\n\t\t\tLEKIN, duhovnostga kirib ketib, socium umuman esimdan chiqib ketganini sezmi qopman. Baxt ichimdaku deb otiruripman.&nbsp;<br />\r\n\t\t\tBUGUN MUSHTARIy - yana o&#39;zlarini yordam qo&#39;llarini cho&#39;zdila. Duhovnost &quot;balchigidan&quot;chiqaradigan qo&#39;llarini😂 &nbsp;telefonda gaplashganimizdan keyin shularni tushundimki:&nbsp;<br />\r\n\t\t\tDUHOVNOST - faqatgina o&#39;zimizi haqiqiy yo&quot;limizni anglab olishga, ozimizni qalbimizni eshitib olishga kerekan. Sociumdan chiqib ketish uchunmas.<br />\r\n\t\t\tSOCIUM- unikal dars maktabi. Unga biza uspeshniy, boy bo&#39;lish uchun, ham talantlarimizni, ichki o&#39;ziga xos energiyalarimizni bo&#39;lishish uchun kelganmiz. Energiyamiz bilan meditatsiyada otirib bolisholimizmi????&nbsp;<br />\r\n\t\t\tXullas, Mushtariyga raxmat obchiqib ketganliklari uchun, SALOM JAMIYAT, yana bir bor!!!❤️ hammeladan yangilikla kutib qolaman. Ichki holatilamas, tashqi dunyoyilada nima yangilikla bovotti? &nbsp;P.S. manda hozircha @dioranur instagramda blog ochdim. Yozilila) 2. youtube da ruhiy psihologiya torisida &nbsp;kanal ochdim 3. Fitnes - strip plastikaga borvomman❤️ tinch yogadan qiyinroq, lekin kottaroq imenno fizcheski kayf. 4. Ah da Diplomatiyani tashadim😅</span></td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>		2018-09-18 07:29:51.946063+05		f
40	Самаркандда семинарларга катнашган гузаль аёлнинг натижалари.	<p style="text-align:justify"><span style="font-size:14px">Barchanggizga xayrli kech!<br />\r\nBugun men yana uz natijalarim haqida yoziwni xoxladim!<br />\r\nNatijalarim natijalarga ulaniiib borayotganligini har onda his qilyapman. Bu qanchalar yoqimlii!&nbsp;🍀. Butun olam guyoki meni quvontiriw un yaralgandekBorliqning har bir onidan zavqu wavqqa tulib yawayapman.<br />\r\nHar bir Mushtariy opaning darslarida bolganimda, olam gozallik qavati men un yana bir qavatga guzallawgandek tuyilaveradi. Har bir bizga bergan biliminggiz darslaringgiz<br />\r\nUn sizga Mushtariy opa ta&#39;zim qilaman<br />\r\nBu olgan bilimlarim meni qanchalik qalbimni guzal qildi. Fikrimni teran, xislarimni yanada owirdi, uzimga bulgan iwonchni uygotdi, dunyoga boqadigan ko&#39;larimni yorqinroq qildi. Bugun hozir va wuyerda yawawni urgandim. Tuyinib tuyinib yawawni urgandim. Insonlarga mehrim juwdi. Hayotga bolgan fikrim uzgardi yangidan yangi goyalarim paydo bolaboshladi. Har kuni borliq sovgalarini oliwga 24 soat yetmay qolyapti.<br />\r\nMen muammo deb uylagan narsalar aslida zor tajribaligini his qildim. Uz ustimda iwlaw davomida kop natijalarim hattoki bu zanjir uydagilarimga ham ulanib ketdi.Akam nalog tulawga borsa uyerdagilar sizni naloginggiz bir yilga tulangan deb quliga qogozini ham berib yuboripti tulanganligi haqidagi. Mushtariy opa har doim tulovlarni mazza qilib chin yurakdan beriw kk deganlarida har biriga suv svet gaz nalog hamma hammasiga chuqur minnatdorchilik bildirgandim.Va bu narsa haqida Sinelnikovni kitobida uqigandiim.Doimo pul haqida juda kop muammolar chiqardi. Va sizni pul haqidagi darsinggizda bolganimdan kn aytardim qanday qilib erkak kiwiga tulaqonli haqiqiy iwonch kozi bn qaraw mn uyga va uz ehtiyojlarim mazza qilib dam oliwim un pul erkak kiwi orqali keliwi un deb. Va bu savolimga ham javob keldi.Men uzimga ruxsat berdim. Wartsiz uni seviwga borligicha qabul qiliwga. Aslida u ham mendek qalbligiga . Va aslida hech narsaga u ham majbur emasligiga. Uni seviwim bu meni tanlovim ekanligigaUnga quygan barcha wartliklarni wartsiz gamxorlik ,mehr va sevgiga almawtirdim. Bilasizlarmi wundan kn birinchi urinda uzim yengil torta bowladim.Qaysi kuni bu wartsiz his tuygu meni qalbimda oddiy xolatga aylangan kunidan erim un yuq joydan iw takliflar kutilmagan takliflar boldi va uwa kundan erim un uyga pul olib keliw uning un ham oddiy holga aylandi. Garchi summasidan qatiy nazar men u bn birga quvondim. Mazza qildik u orqali kelgan birinchi 5000 sumga. Balki sizlar un bu kulgulidir. Ln biz un juda quvonchli boldi.Biz hamma xolatlarni qabul qiliwni birga urgana bowladik.Uning iwlolmay keliwiyu kechki tanovvulsiz qoliwimiz ham biz un quvonarli xolatga aylanib qolgandi. Ln vaziyatga axamiyatsiz xolda yaxwi narsalarni uylawda davom etdim.Koplab meditatsiyalarni urgandim.Menga uning nechchi pul topib keliwi emas balki men uni qanday kutib oliwim men un muhimroq bolib qoldi. Qanchalik bu xis menda tulib towgani sayin erimga kelayotgan pullar soni ham wunchalik ortib boryatgani yaqqol namoyon boldi.Men wuni angladimki. Qanday sultonnig malikasi boliw bu faqatgina sizu bizning qulimizda ekan.Zero seviw pullik emas ekan seviwdan tuxtamang!💑👫.Sizlarga raxmaat!<br />\r\n<br />\r\n<strong>Х:</strong><br />\r\nMushtariy opaa assalomu aleykum.<br />\r\nSizga kattakon raxmaat eng buyuk eng ezgu bilimlaringgizni bizga hadya qilganiz un,<br />\r\nbiz bn boliwganiz un.<br />\r\nMenda har kuni kundan kun kop kop natijalar.</span></p>\r\n\r\n<p><span style="font-size:14px">Bilasizmii meni kvartiramda aristonim yuq edi. 3-yildan beri har safar suv isitib iwlatardim. Utgan yili aristonga pul yigib ham magazinga borib turib pulim yetsa ham ololmay kelgandim ikkilanib. qiynalsam jaxl qilardim. Battar sogligimga zarar bolardi. Oxirgi darsizda aytgandiz eslaysizmi sovuq oqimga qanday quwiliw issiq oqimga qanday quwiliw. Va men wuni mawq qila bowladim. Bilasizmii nima ruy berdi??😄&nbsp;bir necha 10 yillardan beri issiq suv kelmagan domimizga issiq suv beriwdi. Borliq sovgalarini har kuni ochiq quchogim bn kutib olyapman.</span></p>\r\n\r\n<p><span style="font-size:14px">Yana bir narsa aytaymi sizga! Turmish qurganimga ikki yildan owgan bolsa aslida jinsiy aloqa nima ekanligini tuwinmagan ekanman qarangga. Va men pul darsidan kn buni ham urgandim🙈😆&nbsp;bunga turmishurtogim bn gaplawib oldik.hozir men ham turmishurtogim ham bundan judayam baxtiyormiz!!😄💑<br />\r\nBilasizmii bunday natijalarimdan qanchalik xursandman.</span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>		2018-09-18 07:02:22.909256+05		f
41	Отзывы участников семинара "Открой свой поток Изобилия"	<p style="text-align:justify"><span style="font-size:14px"><strong>Наталья:</strong><br />\r\nВсем спасибо, каждый из вас остался в моей памяти<br />\r\n<strong>Magic:</strong><br />\r\nСпасибо всем....какая классная группа....какое классное время провели вместе....а какие замечательные наши УЧИТЕЛЯ...❤️<br />\r\n<strong>Лайло:</strong><br />\r\nБлагодарю Всех 🌸🌸🌸🌸🌸<br />\r\n<strong>Алина:</strong><br />\r\nВсем спасибо большое!<br />\r\nКлассный тренинг, тренер, Лола и вся наша группа😘😘😘😘<br />\r\n<strong>NILUFAR:</strong><br />\r\nДа суперская группа у нас я очень рада что познакомилась с Вами люблю всех и спасибо Муштарий и Лоле😘😘😘<br />\r\n<strong>Барно:</strong><br />\r\nСпасибо всем вам. Спасибо Муштарий, спасибо Лола. Люблю вас😘😘😘❤️<br />\r\n<strong>Алина :</strong><br />\r\nВсех люблю,всем спасибо и до новых встреч,всем огромных успехов и мооощных результатов😘😘😘🤗🤗🤗🎉🎉🎉🎉👌👌👌👌👌👌👌<br />\r\n<strong>Елена Цой:</strong><br />\r\nСпасибо Муштарий,спасибо Лола,спасибо всем участникам тренинга за плодотворные дни ,за знания,которые мы получили,за ту атмосферу ,которая царила в эти пять счастливых дней! Я получила огромное удовольствие и удовлетворение от общения со всеми участниками семинара.<br />\r\n<strong>Magic:</strong><br />\r\nЕще раз благодарю Вас за эти замечательные дни ❤️❤️❤️<br />\r\n<strong>Сардор:</strong><br />\r\nЯ так рад что повстречал вас в своей жизни вы классные и то чем вы занимаетесь это ограмное благо.<br />\r\nБлагодарю вас за то что вы есть</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px"><strong>Нозима Опа:</strong><br />\r\nМуштарий гап йук сизга фейсбукда семинарларизи имкон Борича эшитим. &nbsp;Россалиям боргим келганди боролмадим. Тугриси Ишга уйга жудаям епишвоганман. Лейкин семинарларизда Сирлани стрини Борича очиб берибсиз вазиятлани &nbsp;асосийси онсон ва Енгил Хал килиши ургатибсиз. Сизга каттакон Рахмат. Ман Хар сонияда келажагими тасвирини узим тасвирлашими англаб имкон кадар уй фикрларимдеги хисларими кузатиб англаши бошладим. Тугриси онсон булмаяпти Бир хил холатда хисларими бошкаролмай вазиятга кириб кетвоман. Лейкин хаётим анча Енгил кувончлий ва онсонлашган. Рахмат сизга Муштарий ман сиззи Лолани хурмат киламан ва яхши кураман. 😘😘😘🌈🌈🌈🌈🌈💝💝💝😘👍🏻👍🏻👍🏻😘💐💐💐💐💐😊😊😊</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px"><strong>Бахытли:</strong><br />\r\nMenda borib uzimdagi savolga otvet oldim.Tugrisin aytsam Mushtariy opa klientlar bilan ishlasa ildizin topib uzar ekan</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px"><strong>Нозима Опа:</strong><br />\r\nТушинтириб огир вазиятга Назаризи узгартириб онсон Хал кибераила</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Ман Муштарийни 1- семинаридан танийман Муштарий жудаям котта узгаришла ютукла кивотила. Ман узим кизикувчанман шу сабаб куп психологлани биламан Ман билган психологлани Ичида Муштарий Ва М. Норбеков Узбекистонда &nbsp;номер 1 психолог деб тан оламан</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px"><strong>Бахытли:</strong><br />\r\n100% emas 1000% qushilaman.Men chunsha psixologlarni kurdim unga teng keladigani yuq.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px"><strong>Нозима Опа:</strong><br />\r\nЛола сиздаям котта узгаришла Буган . Эслисизми сиз 1- Гангада булган семинарга келгандиз. Хозир умуман узига ишонган жозибалашган гузалашган Янаям очик ва кувнок Лолага айлангансиз</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">1- курган строгий хаётдан хафа &nbsp;Лолаэмассиз</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px"><strong>Нозима Опа:</strong><br />\r\nМуштарий и Вы настоящий наставницы</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px"><strong>NILUFAR Турдибоева русузб:</strong><br />\r\nДа Нозима опа семинар вообще зур булди ман хам кушиламан фикрларизга<br />\r\nЛола ман сиздан хам миннатдорман борилага шкур</span><br />\r\n<br />\r\n<strong><span style="font-size:14px">Диёра</span></strong></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Mushtariy - mani fikrimcha O&#39;zbekistondagi eng kuchli trener-psihologdir!&nbsp;</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Oxirgi payt butun dunyoda va O&#39;zb.dayam Psihologiya va shahsiy rivoj sohasiga talab kuchayib juda rivojlanib ketdi!&nbsp;</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Mushtariy ham bir kunlik masterklasslardan boshlab ko&#39;pkunlik Pul oqimini oshirish, qalbga yo&#39;l, oila munosabatlari va boshqa mavzularda seminarlar o&#39;tadi. Eng zo&#39;ri, seminarlar &nbsp;o&#39;zbek ham rus tilida bir xilda o&#39;tiladi.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">&nbsp;Mushtariyni seminarlariga &nbsp;kimlar keladi?</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Uning treninglarga jamiyatning eng ilg&#39;or, o&#39;z hayotlarini va sevimli kasblarini yanada mazmun va samara bilan to&#39;ldirishni xohlovchi va yanada yuksak cho&#39;qqilarga erishmoqchi bo&#39;lgan insonlar keladi: shaxsan o&#39;zim Mushtariyni seminarlarida uy bekalaridan tortib show biznes yulduzlarini, biznesmenlar, xususiy bog&#39;cha va maktab direktorlari va boshqa shunga o&#39;xshash faol insonlarni uchratdim!</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Bugungi trening VIZUALIZATSIYA SIRLARIGA bag&#39;ishlangan)</span><br />\r\n&nbsp;</p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/T-ymg1NN984" width="480"></iframe></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Новый семинар &quot;Активный образ жизни&quot; ну реально крутой!!!! я когда послушала его, ощутила волну новизны! такого от Муштарий раньше не слышала!!! сам семинар был проведён в темпе и в ритме!&nbsp;<br />\r\nооочень интересный!!! очень вдохновляющий на действия и вообще&nbsp;на новый ритм жизни. Я уловила самую главную мысль, то что жизнь должна крутится как колесо но в разные стороны! чтобы каждый раз он крутился быстрей и эффективней, и в новые направления😍чтобы никогда не стало скучно жить!!! Я хочу завтра его снова послушать, ну реально классный проект!!!</span><br />\r\n&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong><span style="font-size:14px">Шарофат опа</span></strong></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Ассалому алейкум асалкизларим. Муштарийхон Лолахон. Яхшимисизлар. Илмиларни Аллох зиеда килсин. Якшанба куни семинарда Маззззаааа килдик. Озим кизим набираларим. Бебахо озукалар олдик. Чиройли кизикарли хаетимизда бизга энгосон энг гузал энгмазмунли энг мехр мухаббатга тула йолни топишга катта ердам берасизлар. Хар бир инсон акли онги бор. Лекин ишлатабилиш хаммада эмас экан. Сизни беряткан дарслариз инсонни рагбатлантирар экан. Вдохновление дает поразительные результаты. Вы скезали как то надо работать работать. С собой или над собой. Но главное то что работая повторяя то чему вы учите.обязательно дает хороший результат для самого человека. И жизнь становится легче и лучше. И еще любовь к людям становится большой пребольшой. Я желаю чтобы все кто хоть один раз посетил ваши семинары уходил добрым счастливым уверенным всвои силы и способности. Приходить просто но вот когда уходим от вас Мы уже совсем другие. Фикримни тушинтира олдимми билмиман. Катта рахмат. Аллохдан кайтсин киляпкан яхшиликларингиз. Омад кувонч саломатлик оилавий бахт сизларга.💐💐💐💐&nbsp;Время приходит совсем чужие становятся близкими и наоборот. Илоим хаммамиз факат якин болиб бир биримизни согиниб яшайлик. Бу курслардан шунакв болиб чикамиз Иншааллох. Бахтли болиб хам. Чунки Яратган инсонни бахт учун яратган. Сиз мехнатиз илмиз билан хаммага катта ЕРДАМ БЕРИБ келяпсиз. Аллохдан сизга дилизда ният килган ингизни роебга чикишини сорайман астойдил. У меня все вперемешку получилось.&nbsp;<br />\r\nКрепко кпепко обнимаю всех.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Бу менга юборилган миннатдорчилик хати! Бу иштирокчимиз атига бир маротаба тренигимизга келиб, колган пайт уз устида узи излаган, менинг аудио ва видео дастурларим оркали! Сиздан миннатдорман! Харакат борки- натижа бор!!!</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Салом Группадагилар. Мен Муштарий Юлдашевага ва хар бирингизга миннатдорчилигимни айтмокчиман. Гарчи биргина семинарга катнашсамда Калбга юл, оила ва шахсий хаёт семинарларини ешитиб тураман. Бу семинарлардан жуда катта билимларни олдим. Ниманидур англасам ва ишонсам натижаси зур булаяпти. Бу хаётда борлигимга ва шу инсонларни учратганимга мингдан минг марта шукр. Севги, &nbsp;севилиш &nbsp;нафакат икки калб балки бутун олам ундаги жамики яралган жонли ва жонсиз нарсаларда мужассам еканлигини тушундим. Инсонлар калбига юл топиб уларнинг хаётдаги уз юлида мардонавор, чексиз кувонч, бахт, омад ва фаровонликда яшаши учун уз билимини аямаган Муштарий инсониятга юборилган калб малхами.</span></p>		2018-09-18 07:08:13.71408+05		f
42	Муштарий Юлдашеванинг профессионал курсининг 2 модул иштирокчисини тассуротлари	<p style="text-align:center"><iframe frameborder="0" height="295" src="https://www.youtube.com/embed/zdfnwiuHTGA" width="449"></iframe></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>		2018-09-18 07:08:45.282921+05		f
10	ОТЗЫВЫ УЧАСТНИЦ ВЫЕЗДНОГО СЕМИНАРА "УРОКИ СОВЕРШЕНСТВА ДЛЯ СОВРЕМЕННОЙ ЖЕНЩИНЫ"	<table border="1" cellpadding="1" cellspacing="1" class="table table-borderless" style="width:100%">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:50%">\r\n\t\t\t<p style="text-align:justify"><img src="https://static.wixstatic.com/media/c7735e_3d19b3482e1b4a6c8b8b288e84ca1764.jpg/v1/fill/w_293,h_219,al_c,q_80,usm_0.66_1.00_0.01/c7735e_3d19b3482e1b4a6c8b8b288e84ca1764.webp" style="width:100%" /></p>\r\n\r\n\t\t\t<p style="text-align:justify"><img src="https://static.wixstatic.com/media/c7735e_bcae3742e3ee48999c7b54f227421066.jpg/v1/fill/w_299,h_223,al_c,q_80,usm_0.66_1.00_0.01/c7735e_bcae3742e3ee48999c7b54f227421066.webp" style="width:100%" /></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:50%">\r\n\t\t\t<p style="text-align:justify"><strong>Гульчехра</strong>,&nbsp;[20.04.16 12:00]<br />\r\n\t\t\tМУШТАРИЙ БЛАГОДАРЮ Вас за прекрасную идею про выездной семинар!</p>\r\n\r\n\t\t\t<p style="text-align:justify"><strong>Гульчехра</strong>,&nbsp;[20.04.16 12:01]<br />\r\n\t\t\tЛола а Вас за реализацию и организацию этой идеи и всех участниц семинара кого-то за встряску а кого-то за сказку!!!🙏🙏🙏</p>\r\n\r\n\t\t\t<p style="text-align:justify"><strong>Гульчехра</strong>,&nbsp;[20.04.16 12:05]<br />\r\n\t\t\tУ меня состояние порхания👻👼я всем желаю счастья!!!Моя душа выпригивает от СЧАСТЬЯ и я всех хочу зарядить этим состоянием Души☁☁💫</p>\r\n\r\n\t\t\t<p style="text-align:justify"><strong>Наргиза Усманова</strong>,&nbsp;[20.04.16 12:32]<br />\r\n\t\t\tМуштарий, Мунис, Лола и всем участницам семинара Спасибо за учебу за отдых за развитие за процветание 🌸🌹🌺🌸🌹🌺🌹</p>\r\n\r\n\t\t\t<p style="text-align:justify"><strong>Нозима</strong>,&nbsp;[20.04.16 15:01]<br />\r\n\t\t\tЯ тоже присоединяюсь я вас очень люблю благодарю вас Муштарий ,Муниса вы мои наставники. Лола вам тоже спасибо!</p>\r\n\r\n\t\t\t<p style="text-align:justify"><strong>Гуля</strong>, [20.04.16 15:40]<br />\r\n\t\t\tУ меня чистка пошла и я выросла. я цель поставила когда Муштарий спросила какая цель я её написала в тетради.... а чистка пошла так, у меня друзья появились которые начали одаривать подарками, муж прилетает море любви со всех сторон, света.... и последнее я собираюсь в Питер на тренинги я хочу роста, я наверное не дождусь Муштарий, следующего выездного семинара и решила ускорить процесс так как я хочу очень много денег. И развиваться, а потом мужа обогощать, я так счастлива!!!</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p style="text-align:justify">&nbsp;</p>		2018-09-18 07:26:08.040751+05		f
33	Отзыв участницы семинара-тренинга "Путь к себе"и ретрита Випассана.	<table border="1" cellpadding="1" cellspacing="1" class="table table-borderless" style="width:100%">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td rowspan="2" style="width:50%"><img src="https://static.wixstatic.com/media/c7735e_0ca34fcb90bf4b88b931a14260377d65~mv2.jpg/v1/fill/w_288,h_234,al_c,q_80,usm_0.66_1.00_0.01/c7735e_0ca34fcb90bf4b88b931a14260377d65~mv2.webp" /></td>\r\n\t\t\t<td style="text-align:justify"><span style="font-size:14px">Девочки, семинар Путь к себе- это нечто❤❤❤❤я до сих пор под впечатлением от него!! Многое открыла в себе именно на нем!! Он шикарен! Я помню сказала, что результаты достойны не 350тыс, а 350 млрд долларов😊&nbsp;он тогда стоил так! Вы не пожалеете если пойдете, ваша жизнь и вы сами круто изменитесь, я в этом уверена💃</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:center"><img src="https://static.wixstatic.com/media/c7735e_6c9e6217e6a8401281ac8d496f8f9bfe~mv2.jpg/v1/fill/w_546,h_306,al_c,q_80,usm_0.66_1.00_0.01/c7735e_6c9e6217e6a8401281ac8d496f8f9bfe~mv2.webp" /></td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>		2018-09-18 07:29:08.626274+05		f
44	Дильноза		diyora_-_2.mp3	2018-09-18 07:38:29.696808+05		t
43	Дильноза		diyora_-_1.mp3	2018-09-18 07:38:37.392073+05		t
\.


--
-- Name: basic_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.basic_review_id_seq', 44, true);


--
-- Data for Name: basic_youtubevideo; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.basic_youtubevideo (id, link, created_at, album_id) FROM stdin;
1	https://www.youtube.com/watch?v=8XeQj49l7bs	2018-09-15 17:26:14.225524+05	1
2	https://www.youtube.com/watch?v=_ym9m2AGlfI&feature=youtu.be	2018-09-15 17:32:23.018059+05	2
3	https://youtu.be/ihIteovfEeg	2018-09-15 17:32:52.875859+05	2
4	https://youtu.be/D4s_HJeszzE	2018-09-15 17:33:22.675496+05	2
5	https://youtu.be/OCXTLeKxsGg	2018-09-15 17:33:43.582823+05	2
10		2018-09-18 07:59:15.780817+05	3
11		2018-09-18 07:59:59.9614+05	4
12		2018-09-18 08:00:54.35475+05	5
13		2018-09-18 08:00:54.360867+05	5
14		2018-09-18 08:01:28.679864+05	6
15		2018-09-18 08:03:56.873972+05	7
16		2018-09-18 08:03:56.879456+05	7
17		2018-09-18 08:03:56.883921+05	7
18		2018-09-18 08:03:56.888561+05	7
19		2018-09-18 08:03:56.892958+05	7
20		2018-09-18 08:03:56.897736+05	7
21		2018-09-18 08:03:56.901964+05	7
22		2018-09-18 08:03:56.906555+05	7
23		2018-09-18 08:04:55.666815+05	8
24		2018-09-18 08:05:42.28324+05	9
25		2018-09-18 08:05:42.289529+05	9
26		2018-09-18 08:08:08.788506+05	10
27		2018-09-18 08:08:08.792587+05	10
28		2018-09-18 08:08:08.795425+05	10
29		2018-09-18 08:08:08.799081+05	10
30		2018-09-18 08:08:08.802266+05	10
31		2018-09-18 08:08:08.805405+05	10
32		2018-09-18 08:08:08.809422+05	10
33		2018-09-18 08:08:08.813269+05	10
34		2018-09-18 08:13:41.3542+05	11
35		2018-09-18 08:13:41.37414+05	11
36		2018-09-18 08:13:41.378462+05	11
37		2018-09-18 08:15:34.012111+05	12
38		2018-09-18 08:15:34.032639+05	12
39		2018-09-18 08:15:34.037451+05	12
40		2018-09-18 08:15:34.042113+05	12
41		2018-09-18 08:15:34.046667+05	12
42		2018-09-18 08:15:34.051517+05	12
43		2018-09-18 08:15:34.05658+05	12
44		2018-09-18 08:15:34.061161+05	12
45		2018-09-18 08:17:33.161754+05	13
46		2018-09-18 08:17:33.169734+05	13
47		2018-09-18 08:17:33.174303+05	13
48		2018-09-18 08:17:33.178674+05	13
49		2018-09-18 08:17:33.182792+05	13
50		2018-09-18 08:17:33.186579+05	13
51		2018-09-18 08:17:33.191084+05	13
52		2018-09-18 08:17:33.195591+05	13
53		2018-09-18 08:17:33.199938+05	13
54		2018-09-18 08:19:19.149701+05	14
55		2018-09-18 08:19:19.156149+05	14
56		2018-09-18 08:19:19.160316+05	14
57		2018-09-18 08:19:19.16366+05	14
58		2018-09-18 08:19:19.167721+05	14
59		2018-09-18 08:19:19.171815+05	14
60		2018-09-18 08:19:19.176266+05	14
61		2018-09-18 08:28:34.143739+05	15
62		2018-09-18 08:28:47.60128+05	16
63		2018-09-18 08:29:06.113604+05	17
64		2018-09-18 08:29:30.103608+05	18
65		2018-09-18 08:29:43.365384+05	19
66		2018-09-18 08:30:03.301092+05	20
67		2018-09-18 08:30:16.137045+05	21
\.


--
-- Name: basic_youtubevideo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.basic_youtubevideo_id_seq', 67, true);


--
-- Data for Name: basic_youtubevideo_translation; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.basic_youtubevideo_translation (id, language_code, title, master_id, url) FROM stdin;
1	ru	У ЛЮДЕЙ НЕТ ДРУГОГО ВЫБОРА, ЧЕМ РАЗВИВАТЬСЯ || Интервью с Муштарий Юлдашевой ( на русском языке)	1	https://www.youtube.com/watch?v=8XeQj49l7bs
5	ru	Исцеление боли 4	5	https://youtu.be/OCXTLeKxsGg
4	ru	Исцеление боли 3	4	https://youtu.be/D4s_HJeszzE
3	ru	Исцеление боли 2	3	https://youtu.be/ihIteovfEeg
2	ru	Исцеление боли 1.	2	https://www.youtube.com/watch?v=_ym9m2AGlfI&feature=youtu.be
14	uz	Огрикни даволаш 1.Ogrikni davolash 1.	2	https://www.youtube.com/watch?v=zDiaLmF1GgE
15	uz	Огрикни даволаш 2. Ogrikni davolash 2.	3	https://youtu.be/J6kthy6VF-o
16	uz	Огрикни даволаш 3. Ogrikni davolash 3.	4	https://www.youtube.com/watch?v=PXXvXR71-R4
17	uz	Огрикни даволаш 4.Ogrikni davolash 4.	5	https://www.youtube.com/watch?v=uyui384AlCw
18	ru	Путешествие Домой (аудиокнига, читает Nikosho) | ЭЗОТЕРИКА | Ченнелинг	10	https://youtu.be/9JKBcKm-aIM
19	ru	"ИЛЛЮЗИИ, или Приключения Мессии поневоле"	11	https://youtu.be/xh3m_Fie260
20	ru	Жизнь без ограничений	12	https://youtu.be/3UVQBIufqP0
21	ru	Величайший секрет как делать деньги	13	https://youtu.be/TYmoIqAQSRQ
22	ru	Материнская любовь	14	https://youtu.be/riviejlevIg
23	ru	Осознанность	15	https://youtu.be/TqBns2j_Nzc
24	ru	Техника материализации мыслей. Методики из Книги Тайн.	16	https://youtu.be/rLT8MoAJxcg
25	ru	Разум. Творческий отклик на сейчас.	17	https://youtu.be/Us9sNck613M
26	ru	Любовь. Свобода. Одиночество.	18	https://youtu.be/GLFh7lA3TNA
27	ru	О любви, Любовь начинается с любви к себе	19	https://youtu.be/YZPubcC3CL8
28	ru	О Мужчинах	20	https://youtu.be/skAPAugsQ34
29	ru	О женщинах.	21	https://youtu.be/H1VbV9gkD3I
30	ru	Близость. Доверие к себе и другому.	22	https://youtu.be/h8CSssstiYw
31	ru	Пять травм.	23	https://youtu.be/Mp7YpxDjLgw
32	ru	Подсознание Может Все.	24	https://youtu.be/W104-TetQlU
33	ru	Джон Кехо. Деньги, успех и Вы.	25	https://youtu.be/G1QvSAEv248
34	ru	Раскрытие своего предназначения. Часть 1	26	https://youtu.be/D7jLDsKOJ1w
35	ru	Раскрытие своего предназначения. Часть 2	27	https://youtu.be/d6UrcsfwnjE
36	ru	Как найти и привлечь идеального партнёра.	28	https://youtu.be/v00jfoHreso
37	ru	Обязанности мужчины и женщины. Часть 1	29	https://youtu.be/CWaynUNy3Dk
38	ru	Обязанности мужчины и женщины. Часть 2	30	https://youtu.be/6FcdKV8eiko
39	ru	Правила зачатия и воспитания детей	31	https://youtu.be/e8XuOz3tLFo
40	ru	Сто рецептов от ста болезней.	32	https://youtu.be/W0izxOtBUzU
41	ru	Решение конфликтных ситуаций в семье.	33	https://youtu.be/ECV9c58DYlk
42	ru	Техники по очищению от энергетических блоков и засоров чакр.	34	https://youtu.be/jPiCTpRvE9I
43	ru	Расширение сознания (транс, расслабление) и точка внимания.	35	https://youtu.be/_-ST3lNG314
44	ru	Способности необычайного характера или восприятие что и как работает.	36	https://youtu.be/Y0Jy0UvUiHw
45	ru	Раскрытие своего предназначения. Часть 1	37	https://youtu.be/D7jLDsKOJ1w
46	ru	Раскрытие своего предназначения. Часть 2	38	https://youtu.be/d6UrcsfwnjE
47	ru	Как найти и привлечь идеального партнёра.	39	https://youtu.be/v00jfoHreso
48	ru	Обязанности мужчины и женщины. Часть 1	40	https://youtu.be/CWaynUNy3Dk
49	ru	Обязанности мужчины и женщины. Часть 2	41	https://youtu.be/6FcdKV8eiko
50	ru	Правила зачатия и воспитания детей	42	https://youtu.be/e8XuOz3tLFo
51	ru	Сто рецептов от ста болезней.	43	https://youtu.be/W0izxOtBUzU
52	ru	Решение конфликтных ситуаций в семье.	44	https://youtu.be/ECV9c58DYlk
53	ru	Сценарии жизни или выход из матрицы	45	https://youtu.be/r8MhVDyHRJE
54	ru	Семья от мала до велика (ответы на вопросы)	46	https://youtu.be/GRl0WHCxfu8
55	ru	Семейная Гармония	47	https://youtu.be/NvMvWU-yKKQ
56	ru	О воспитании детей.	48	https://youtu.be/t9i-MiZnUwo
57	ru	Как превратиться из лягушки в царевну?	49	https://youtu.be/N1saSPCy1Eo
58	ru	Быть, а не казаться!	50	https://youtu.be/tuEj_UMkBVY
59	ru	Мужчина и Женщина: Наука понимания	51	https://youtu.be/9QhVg8QFsJU
60	ru	Как находиться в пространстве конфликта? Часть 1	52	https://youtu.be/1L-RLezNUus
61	ru	Как находиться в пространстве конфликта? Часть 2	53	https://youtu.be/mduQZjJf-tA
62	ru	Целостная личность. Урок 1	54	https://youtu.be/Kzx7z9Tzi0s
63	ru	Целостная личность Урок 2	55	https://youtu.be/0UVCpO1F4Us
64	ru	Целостная личность. Урок 3	56	https://youtu.be/fSJVJTjzetI
65	ru	Целостная личность. Урок 4	57	https://youtu.be/tgL5rD7BP_U
66	ru	Целостная личность. Урок 5	58	https://youtu.be/2XtaDk65ung
67	ru	Смысл жизни.	59	https://youtu.be/bwh-tY0CckY
68	ru	Законы процветания.	60	https://youtu.be/TT8IsB1JUyc
69	ru	После фильма начни новую жизнь! Обязательно для просмотра!	61	https://youtu.be/Bt2WnGAvP_k
70	ru	ЛИМОН СИЛЬНЕЕ ХИМИОТЕРАПИИ В        10 000 РАЗ!	62	https://youtu.be/hOl3GjiuFkE
71	ru	ДОБРОВОЛЬНЫЕ РАБЫ СИСТЕМЫ	63	https://youtu.be/5bn0uL2k2yM
72	ru	★ ОБ ЭКСТРАСЕНСОРНЫХ СПОСОБНОСТЯХ★ Нил Доналд Уолш Беседы с Богом	64	https://youtu.be/XZ4Nt7YV5K8
73	ru	Роды в воду.	65	https://youtu.be/JriuRI4I4uw
74	ru	Роды в воду - натуральны и гармоничны.	66	https://youtu.be/XhTUMBM7n40
75	ru	Смерти нет! Исповедь Врача терапевта! Рак. СПИД. Вакцинация. Выдуманные болезни! 6 июня 2017	67	https://youtu.be/OWqxZEzo65E
\.


--
-- Name: basic_youtubevideo_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.basic_youtubevideo_translation_id_seq', 75, true);


--
-- Data for Name: basic_youtubevideoalbum; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.basic_youtubevideoalbum (id, created_at, video_type) FROM stdin;
1	2018-09-15 17:19:27.186629+05	personal
2	2018-09-15 17:34:14.582154+05	personal
3	2018-09-18 07:59:22.182055+05	audio
4	2018-09-18 08:00:09.387991+05	audio
5	2018-09-18 08:00:54.348637+05	audio
6	2018-09-18 08:01:28.673265+05	audio
7	2018-09-18 08:03:56.867759+05	audio
8	2018-09-18 08:04:55.63763+05	audio
9	2018-09-18 08:05:42.27627+05	audio
10	2018-09-18 08:08:08.782426+05	audio
11	2018-09-18 08:13:41.347119+05	video
12	2018-09-18 08:15:34.005828+05	video
13	2018-09-18 08:17:33.154753+05	video
14	2018-09-18 08:19:19.143946+05	video
15	2018-09-18 08:28:34.13647+05	cognitive
16	2018-09-18 08:28:47.594787+05	cognitive
17	2018-09-18 08:29:06.107276+05	cognitive
18	2018-09-18 08:29:30.098143+05	cognitive
19	2018-09-18 08:29:43.35902+05	cognitive
20	2018-09-18 08:30:03.294848+05	cognitive
21	2018-09-18 08:30:16.130493+05	cognitive
\.


--
-- Data for Name: basic_youtubevideoalbum_translation; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.basic_youtubevideoalbum_translation (id, language_code, title, description, master_id) FROM stdin;
1	ru	Авторское видео Муштарий Юлдашевой		1
2	ru	Исцеление боли		2
3	uz	Огрикни даволаш		2
4	ru	Крайон. Ли Кэрролл		3
5	ru	Ричард Бах		4
6	ru	Джо Витале		5
7	ru	Анатолий Некрасов		6
8	ru	Ошо		7
9	ru	Лиз Бурбо		8
10	ru	Джон Кехо		9
11	ru	Торсунов О.Г.		10
12	ru	Анная		11
13	ru	Торсунов О.Г.		12
14	ru	Таргакова M.		13
15	ru	Гадецкий О.		14
16	ru	После фильма начни новую жизнь! Обязательно для просмотра!		15
17	ru	ЛИМОН СИЛЬНЕЕ ХИМИОТЕРАПИИ В        10 000 РАЗ!		16
18	ru	ДОБРОВОЛЬНЫЕ РАБЫ СИСТЕМЫ		17
19	ru	★ ОБ ЭКСТРАСЕНСОРНЫХ СПОСОБНОСТЯХ★ Нил Доналд Уолш Беседы с Богом		18
20	ru	Роды в воду.		19
21	ru	Роды в воду - натуральны и гармоничны.		20
22	ru	Смерти нет! Исповедь Врача терапевта! Рак. СПИД. Вакцинация. Выдуманные болезни! 6 июня 2017		21
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-09-14 02:01:31.852712+05	1	Menu object (1)	1	[{"added": {}}]	7	1
2	2018-09-14 02:02:25.932705+05	2	Menu object (2)	1	[{"added": {}}]	7	1
3	2018-09-14 02:02:59.074375+05	3	Menu object (3)	1	[{"added": {}}]	7	1
4	2018-09-14 02:03:33.373258+05	2	Об авторе	2	[{"changed": {"fields": ["parent"]}}]	7	1
5	2018-09-14 02:03:41.088591+05	3	Основатели	2	[{"changed": {"fields": ["parent"]}}]	7	1
6	2018-09-14 02:04:45.662952+05	4	И методе обучения	1	[{"added": {}}]	7	1
7	2018-09-14 02:07:00.214646+05	5	Обучение	1	[{"added": {}}]	7	1
8	2018-09-14 02:07:31.399005+05	4	И методе обучения	2	[{"changed": {"fields": ["parent"]}}]	7	1
9	2018-09-14 02:11:37.576355+05	6	Индивидуальная консультация	1	[{"added": {}}]	7	1
10	2018-09-14 02:11:40.777257+05	6	Индивидуальная консультация	2	[]	7	1
11	2018-09-14 02:13:00.416073+05	7	Выездные программы	1	[{"added": {}}]	7	1
12	2018-09-14 02:13:51.070704+05	8	Правила и ограничения Ретрита	1	[{"added": {}}]	7	1
13	2018-09-14 02:14:34.61878+05	9	Расписание	1	[{"added": {}}]	7	1
14	2018-09-15 11:42:43.590421+05	1		3		7	1
15	2018-09-15 11:49:29.911456+05	2		3		7	1
16	2018-09-15 11:49:34.068126+05	3		3		7	1
17	2018-09-15 11:49:38.331532+05	5		3		7	1
18	2018-09-15 11:49:42.709999+05	4		3		7	1
19	2018-09-15 11:49:46.53093+05	8		3		7	1
20	2018-09-15 11:49:50.417982+05	6		3		7	1
21	2018-09-15 11:49:55.3162+05	7		3		7	1
22	2018-09-15 11:49:59.509075+05	9		3		7	1
23	2018-09-15 11:51:06.219578+05	10	О нас	1	[{"added": {}}]	7	1
24	2018-09-15 11:51:10.985047+05	10	О нас	2	[]	7	1
25	2018-09-15 11:51:34.081667+05	11	Об авторе	1	[{"added": {}}]	7	1
26	2018-09-15 11:52:20.861798+05	12	Оснаватели	1	[{"added": {}}]	7	1
27	2018-09-15 11:52:55.214048+05	13	О методе обучения	1	[{"added": {}}]	7	1
28	2018-09-15 11:53:13.930863+05	14	Обучение	1	[{"added": {}}]	7	1
29	2018-09-15 11:56:41.741447+05	13	О методе обучения	2	[{"changed": {"fields": ["parent"]}}]	7	1
30	2018-09-15 11:56:48.640671+05	15	Индивидуальная консультация	1	[{"added": {}}]	7	1
31	2018-09-15 11:57:03.64378+05	15	Индивидуальная консультация	2	[{"changed": {"fields": ["parent"]}}]	7	1
32	2018-09-15 11:57:32.990557+05	16	Выездные программы	1	[{"added": {}}]	7	1
33	2018-09-15 11:57:58.261561+05	17	Правила и ограничения Ретрита	1	[{"added": {}}]	7	1
34	2018-09-15 11:58:16.311046+05	18	Расписание	1	[{"added": {}}]	7	1
35	2018-09-15 11:59:03.838891+05	19	Видео Муштарий Юлдашевой	1	[{"added": {}}]	7	1
36	2018-09-15 12:00:06.026574+05	20	Рекомендуем	1	[{"added": {}}]	7	1
37	2018-09-15 12:00:22.122035+05	21	Интересное	1	[{"added": {}}]	7	1
38	2018-09-15 12:00:44.93692+05	22	Статьи (скачать бесплатно)	1	[{"added": {}}]	7	1
39	2018-09-15 12:01:08.943166+05	23	Книги	1	[{"added": {}}]	7	1
40	2018-09-15 12:01:36.371087+05	24	Аудио материалы	1	[{"added": {}}]	7	1
41	2018-09-15 12:02:13.893198+05	25	Видео материалы	1	[{"added": {}}]	7	1
42	2018-09-15 12:02:29.332051+05	26	Познавательное и интересное видео	1	[{"added": {}}]	7	1
43	2018-09-15 12:02:50.41464+05	27	Кино (фильмы)	1	[{"added": {}}]	7	1
44	2018-09-15 12:03:02.191887+05	26	Познавательное и интересное видео	2	[{"changed": {"fields": ["parent"]}}]	7	1
45	2018-09-15 12:03:47.92507+05	27	Кино (фильмы)	2	[]	7	1
46	2018-09-15 12:04:08.87525+05	28	Также рекомендуем	1	[{"added": {}}]	7	1
47	2018-09-15 12:04:27.468271+05	29	Мы в соц. сетях	1	[{"added": {}}]	7	1
48	2018-09-15 12:04:50.680519+05	30	Отзывы	1	[{"added": {}}]	7	1
49	2018-09-15 12:05:07.952334+05	31	Контакты	1	[{"added": {}}]	7	1
50	2018-09-15 12:17:59.189204+05	29	Мы в соц. сетях	3		7	1
51	2018-09-15 12:28:18.782822+05	1	Об авторе	1	[{"added": {}}]	8	1
52	2018-09-15 12:40:59.173414+05	2	Оснаватели	1	[{"added": {}}]	8	1
53	2018-09-15 12:46:15.02698+05	3	О методе обучения	1	[{"added": {}}]	8	1
54	2018-09-15 12:48:26.473882+05	4	Индивидуальные консультации	1	[{"added": {}}]	8	1
55	2018-09-15 12:48:47.917295+05	4	Индивидуальные консультации	2	[{"changed": {"fields": ["slug"]}}]	8	1
56	2018-09-15 13:05:17.331914+05	5	Правила и ограничения Ретрита	1	[{"added": {}}]	8	1
57	2018-09-15 13:31:47.596388+05	6	Выездные программы	1	[{"added": {}}]	8	1
58	2018-09-15 14:01:08.706162+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
59	2018-09-15 14:09:14.658585+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
60	2018-09-15 14:11:50.909228+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
61	2018-09-15 14:12:51.047247+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
62	2018-09-15 14:15:43.190279+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
63	2018-09-15 14:16:43.756452+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
64	2018-09-15 14:17:13.366886+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
65	2018-09-15 14:17:37.216115+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
66	2018-09-15 14:18:19.533281+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
67	2018-09-15 14:18:47.300646+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
68	2018-09-15 14:19:22.539506+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
69	2018-09-15 14:19:52.594579+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
70	2018-09-15 14:22:07.231893+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
71	2018-09-15 14:23:44.151707+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
72	2018-09-15 14:26:07.79694+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
73	2018-09-15 14:27:38.033698+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
74	2018-09-15 14:28:42.679405+05	6	Выездные программы	2	[{"changed": {"fields": ["body"]}}]	8	1
75	2018-09-15 14:41:09.94809+05	7	Приглашаем ВСЕХ наших Любимых Мужчин и Женщин  23-24-26-27-28-30 Апреля и 1 Мая на долгожданный всеми нами наш Базовый 7-дневный курс (на русском языке)  "Путь к себе”	1	[{"added": {}}]	8	1
76	2018-09-15 14:47:16.039847+05	7	Приглашаем ВСЕХ наших Любимых Мужчин и Женщин  23-24-26-27-28-30 Апреля и 1 Мая на долгожданный всеми нами наш Базовый 7-дневный курс (на русском языке)  "Путь к себе”	2	[{"changed": {"fields": ["body"]}}]	8	1
77	2018-09-15 14:57:59.783041+05	7	Базовый 7-дневный курс "Путь к себе” (на русском языке)	2	[{"changed": {"fields": ["title", "body"]}}]	8	1
78	2018-09-15 15:00:24.249522+05	7	Базовый 7-дневный курс "Путь к себе” (на русском языке)	2	[{"changed": {"fields": ["content_type"]}}]	8	1
79	2018-09-15 15:00:48.354221+05	8	Встреча "Перезагрузка" с Муштарий Юлдашевой	1	[{"added": {}}]	8	1
80	2018-09-15 15:01:00.42478+05	8	Встреча "Перезагрузка" с Муштарий Юлдашевой	2	[]	8	1
81	2018-09-15 15:01:34.065178+05	9	ПРОФКУРС 2 МОДУЛЬ	1	[{"added": {}}]	8	1
82	2018-09-15 15:02:10.375955+05	10	ДЕНЬ ОТКРЫТЫХ ДВЕРЕЙ!	1	[{"added": {}}]	8	1
83	2018-09-15 15:02:38.487939+05	11	Семинар-тренинг "Активный образ жизни"	1	[{"added": {}}]	8	1
84	2018-09-15 15:03:08.789977+05	12	Семинар-тренинг "Сила мысли"	1	[{"added": {}}]	8	1
85	2018-09-15 15:03:32.925195+05	13	РЕТРИТ-ТРЕНИНГ НА острове БАЛИ!	1	[{"added": {}}]	8	1
86	2018-09-15 15:04:05.299492+05	14	Новый пятидневный семинар-тренинг "Открой свой поток Изобилия."	1	[{"added": {}}]	8	1
87	2018-09-15 15:04:40.186377+05	15	Сатсанг-практикум (семинар на основе вопросов-ответов и практикум) с Муштарий Юлдашевой.	1	[{"added": {}}]	8	1
88	2018-09-15 15:05:12.663297+05	16	8-дневный ретрит Випассана с МУШТАРИЙ ЮЛДАШЕВОЙ.	1	[{"added": {}}]	8	1
89	2018-09-15 15:05:41.952758+05	17	Семинар-тренинг "Открой свой поток Изобилия"	1	[{"added": {}}]	8	1
90	2018-09-15 15:06:03.077973+05	18	ВНИМАНИЕ! ВНИМАНИЕ! ВНИМАНИЕ! ПРОФЕССИОНАЛЬНЫЙ КУРС МУШТАРИЙ ЮЛДАШЕВОЙ!	1	[{"added": {}}]	8	1
91	2018-09-15 15:06:41.130394+05	19	Семинар-тренинг "Личная жизнь и Семья"	1	[{"added": {}}]	8	1
92	2018-09-15 15:07:10.150565+05	20	Сатсанг-практикум (семинар на основе вопросов-ответов и практикум) с Муштарий Юлдашевой	1	[{"added": {}}]	8	1
93	2018-09-15 15:07:32.610872+05	21	Семинар-тренинг "Путь к себе"	1	[{"added": {}}]	8	1
94	2018-09-15 15:07:55.501634+05	22	Сатсанг-практикум (семинар на основе вопросов-ответов и практикум) с Муштарий Юлдашевой в Самарканде	1	[{"added": {}}]	8	1
95	2018-09-15 15:08:24.696677+05	23	7-дневный ретрит Випассана с МУШТАРИЙ ЮЛДАШЕВОЙ	1	[{"added": {}}]	8	1
96	2018-09-15 15:08:51.710896+05	24	Сатсанг-практикум (семинар на основе вопросов-ответов и практикум) с Муштарий Юлдашевой	1	[{"added": {}}]	8	1
97	2018-09-15 15:09:18.008188+05	25	Мастер-класс от Муштарий Юлдашевой	1	[{"added": {}}]	8	1
98	2018-09-15 15:09:52.234693+05	26	Сатсанг-практикум (семинар на основе вопросов-ответов и практикум) с Муштарий Юлдашевой	1	[{"added": {}}]	8	1
99	2018-09-15 15:10:15.823425+05	27	РЕТРИТ-САТСАНГ МУШТАРИЙ ЮЛДАШЕВОЙ	1	[{"added": {}}]	8	1
100	2018-09-15 15:10:34.619972+05	28	Встреча на тему "Что такое Любовь- чувство или состояние Души?"	1	[{"added": {}}]	8	1
101	2018-09-15 15:10:51.316721+05	29	ПРАКТИКУМ МУШТАРИЙ ЮЛДАШЕВОЙ	1	[{"added": {}}]	8	1
102	2018-09-15 15:11:33.329816+05	30	Сатсанг с Муштарий Юлдашевой.	1	[{"added": {}}]	8	1
103	2018-09-15 15:12:04.480564+05	31	Семинар-практикум	1	[{"added": {}}]	8	1
104	2018-09-15 15:12:29.537148+05	32	Встреча с Муштарий на свободную тему!	1	[{"added": {}}]	8	1
105	2018-09-15 15:12:48.405755+05	33	Семинар – тренинг “Путь к Себе”	1	[{"added": {}}]	8	1
106	2018-09-15 15:13:13.042879+05	34	Мастер-класс от Муштарий Юлдашевой.	1	[{"added": {}}]	8	1
107	2018-09-15 15:13:43.231998+05	35	Семинар-тренинг "Искусство вдохновлять Мужчину"!!!	1	[{"added": {}}]	8	1
108	2018-09-15 15:14:01.710407+05	36	Семинар-тренинг "ОТКРОВЕННЫЙ И ДУШЕВНЫЙ РАЗГОВОР С МУЖЧИНАМИ"	1	[{"added": {}}]	8	1
109	2018-09-15 15:14:19.838965+05	37	Семинар-тренинг "Искусство вдохновлять Мужчину"!!!	1	[{"added": {}}]	8	1
110	2018-09-15 15:14:46.550092+05	38	Встреча "ОТКРОВЕННЫЙ РАЗГОВОР ПО ДУШАМ"	1	[{"added": {}}]	8	1
111	2018-09-15 15:15:09.111293+05	39	Однодневный семинар-тренинг «Для чего мы болеем»	1	[{"added": {}}]	8	1
112	2018-09-15 15:15:30.785177+05	40	Семинар-тренинг "От Эго к Сердцу"	1	[{"added": {}}]	8	1
113	2018-09-15 15:15:55.329917+05	41	Новый мастер-класс от Муштарий Юлдашевой.	1	[{"added": {}}]	8	1
114	2018-09-15 15:16:12.583465+05	42	Семинар-тренинг "Уроки совершенства для современной женщины"	1	[{"added": {}}]	8	1
115	2018-09-15 15:16:32.46051+05	43	7-дневный семинар – тренинг «Личная жизнь и Семья.»	1	[{"added": {}}]	8	1
116	2018-09-15 15:18:09.465885+05	44	Выездной семинар-тренинг "Уроки совершенства для современной женщины"	1	[{"added": {}}]	8	1
117	2018-09-15 15:18:38.655816+05	45	Однодневный семинар-тренинг "Включи свой поток Изобилия!!!"	1	[{"added": {}}]	8	1
118	2018-09-15 15:18:58.452802+05	46	Мастер-класс от Муштарий Юлдашевой.	1	[{"added": {}}]	8	1
119	2018-09-15 15:19:17.855825+05	47	Встреча по теме "Что такое Любовь- чувство или состояние Души?"	1	[{"added": {}}]	8	1
120	2018-09-15 15:19:42.91327+05	48	БЛАГОТВОРИТЕЛЬНЫЙ ДЕНЬ ОТКРЫТЫХ ДВЕРЕЙ	1	[{"added": {}}]	8	1
121	2018-09-15 15:20:06.418537+05	49	Курс#01-"Путь к Себе".	1	[{"added": {}}]	8	1
122	2018-09-15 15:20:28.740413+05	50	Муштарий приглашает всех на тематическую встречу "Родителям о Детях" !!!	1	[{"added": {}}]	8	1
123	2018-09-15 15:20:49.062165+05	51	Курс#01-"Путь к Себе".	1	[{"added": {}}]	8	1
124	2018-09-15 15:23:01.437571+05	52	Курс#01 - “Путь к Себе”.	1	[{"added": {}}]	8	1
125	2018-09-15 15:24:37.311108+05	53	Курс#02 - “Жизнь и Семья. И то что между Жизнью и Семьей”	1	[{"added": {}}]	8	1
126	2018-09-15 15:28:57.060199+05	18	Расписание	2	[{"changed": {"fields": ["slug"]}}]	7	1
127	2018-09-15 16:20:36.557704+05	1	Об авторе	2	[{"changed": {"fields": ["body"]}}]	8	1
128	2018-09-15 16:22:08.124108+05	1	Об авторе	2	[{"changed": {"fields": ["body"]}}]	8	1
129	2018-09-15 16:22:51.278303+05	1	Об авторе	2	[{"changed": {"fields": ["body"]}}]	8	1
130	2018-09-15 16:23:02.404397+05	1	Об авторе	2	[{"changed": {"fields": ["body"]}}]	8	1
131	2018-09-15 16:59:54.83093+05	1	YouTubeVideo object (1)	1	[{"added": {}}]	14	1
132	2018-09-15 17:00:44.636972+05	2	YouTubeVideo object (2)	1	[{"added": {}}]	14	1
133	2018-09-15 17:01:17.690711+05	3	YouTubeVideo object (3)	1	[{"added": {}}]	14	1
134	2018-09-15 17:07:19.694426+05	4	Исцеление боли 3	1	[{"added": {}}]	14	1
135	2018-09-15 17:07:31.660142+05	5	Исцеление боли 4	1	[{"added": {}}]	14	1
136	2018-09-15 17:07:50.892773+05	6	Огрикни даволаш 1.Ogrikni davolash 1.	1	[{"added": {}}]	14	1
137	2018-09-15 17:08:48.15174+05	7	Огрикни даволаш 2. Ogrikni davolash 2.	1	[{"added": {}}]	14	1
138	2018-09-15 17:09:11.4299+05	8	Огрикни даволаш 3. Ogrikni davolash 3.	1	[{"added": {}}]	14	1
139	2018-09-15 17:09:27.220924+05	9	Огрикни даволаш 4.Ogrikni davolash 4.	1	[{"added": {}}]	14	1
140	2018-09-15 17:09:48.022567+05	6	Огрикни даволаш 1.Ogrikni davolash 1.	2	[{"changed": {"fields": ["title"]}}]	14	1
141	2018-09-15 17:19:27.223856+05	1	Авторское видео Муштарий Юлдашевой	1	[{"added": {}}]	12	1
142	2018-09-15 17:19:37.82082+05	1	У ЛЮДЕЙ НЕТ ДРУГОГО ВЫБОРА, ЧЕМ РАЗВИВАТЬСЯ || Интервью с Муштарий Юлдашевой ( на русском языке)	2	[{"changed": {"fields": ["album"]}}]	14	1
143	2018-09-15 17:21:47.120486+05	2	Исцеление боли	1	[{"added": {}}]	12	1
144	2018-09-15 17:21:59.05594+05	5	Исцеление боли 4	2	[{"changed": {"fields": ["album"]}}]	14	1
145	2018-09-15 17:22:03.494696+05	4	Исцеление боли 3	2	[{"changed": {"fields": ["album"]}}]	14	1
146	2018-09-15 17:22:07.77469+05	3	Исцеление боли 2	2	[{"changed": {"fields": ["album"]}}]	14	1
147	2018-09-15 17:22:11.934633+05	2	Исцеление боли 1.	2	[{"changed": {"fields": ["album"]}}]	14	1
148	2018-09-15 17:28:52.729759+05	9	Огрикни даволаш 4.Ogrikni davolash 4.	2	[{"changed": {"fields": ["url"]}}]	14	1
149	2018-09-15 17:28:59.733801+05	8	Огрикни даволаш 3. Ogrikni davolash 3.	2	[{"changed": {"fields": ["url"]}}]	14	1
150	2018-09-15 17:29:13.310965+05	7	Огрикни даволаш 2. Ogrikni davolash 2.	2	[{"changed": {"fields": ["url"]}}]	14	1
151	2018-09-15 17:29:22.814212+05	6	Огрикни даволаш 1.Ogrikni davolash 1.	2	[{"changed": {"fields": ["url"]}}]	14	1
152	2018-09-15 17:32:23.024022+05	2	Огрикни даволаш 1.Ogrikni davolash 1.	2	[{"changed": {"fields": ["title", "url"]}}]	14	1
153	2018-09-15 17:32:27.99646+05	6	Огрикни даволаш 1.Ogrikni davolash 1.	3		14	1
154	2018-09-15 17:32:52.882773+05	3	Огрикни даволаш 2. Ogrikni davolash 2.	2	[{"changed": {"fields": ["title", "url"]}}]	14	1
155	2018-09-15 17:33:02.586604+05	7	Video	3		14	1
156	2018-09-15 17:33:22.681694+05	4	Огрикни даволаш 3. Ogrikni davolash 3.	2	[{"changed": {"fields": ["title", "url"]}}]	14	1
157	2018-09-15 17:33:26.342452+05	8	Video	3		14	1
158	2018-09-15 17:33:43.588833+05	5	Огрикни даволаш 4.Ogrikni davolash 4.	2	[{"changed": {"fields": ["title", "url"]}}]	14	1
159	2018-09-15 17:33:46.946834+05	9	Video	3		14	1
160	2018-09-15 17:34:14.588742+05	2	Огрикни даволаш	2	[{"changed": {"fields": ["title"]}}]	12	1
161	2018-09-15 18:08:53.115402+05	19	Видео Муштарий Юлдашевой	2	[{"changed": {"fields": ["slug"]}}]	7	1
162	2018-09-16 21:33:40.286296+05	54	Причины нарушения потока Изобилия	1	[{"added": {}}]	8	1
163	2018-09-16 21:34:04.016745+05	54	Причины нарушения потока Изобилия	2	[{"changed": {"fields": ["image"]}}]	8	1
164	2018-09-16 21:35:06.827434+05	55	Молитва "О Любви к Себе"..	1	[{"added": {}}]	8	1
165	2018-09-16 21:36:40.247765+05	56	Живот - место накопления женской энергии	1	[{"added": {}}]	8	1
166	2018-09-16 22:00:29.196149+05	21	Интересное	2	[{"changed": {"fields": ["slug"]}}]	7	1
167	2018-09-16 22:17:00.062251+05	57	Статьи (скачать бесплатно)	1	[{"added": {}}]	8	1
168	2018-09-16 22:24:31.657225+05	57	Статьи (скачать бесплатно)	2	[{"changed": {"fields": ["body"]}}]	8	1
169	2018-09-16 22:25:32.28533+05	57	Статьи (скачать бесплатно)	2	[{"changed": {"fields": ["body"]}}]	8	1
170	2018-09-16 22:25:53.899068+05	57	Статьи (скачать бесплатно)	2	[]	8	1
171	2018-09-16 22:27:56.131135+05	57	Статьи (скачать бесплатно)	2	[{"changed": {"fields": ["body"]}}]	8	1
172	2018-09-16 22:28:14.77889+05	57	Статьи (скачать бесплатно)	2	[]	8	1
173	2018-09-16 22:29:17.337629+05	57	Статьи (скачать бесплатно)	2	[{"changed": {"fields": ["body"]}}]	8	1
174	2018-09-16 22:31:32.201469+05	57	Статьи (скачать бесплатно)	2	[{"changed": {"fields": ["body"]}}]	8	1
175	2018-09-16 22:51:49.314602+05	1	Library object (1)	1	[{"added": {}}, {"added": {"name": "book", "object": "Book object (1)"}}, {"added": {"name": "book", "object": "Book object (2)"}}, {"added": {"name": "book", "object": "Book object (3)"}}]	16	1
176	2018-09-16 22:53:18.558228+05	1	Library object (1)	2	[{"added": {"name": "book", "object": "Book object (4)"}}, {"added": {"name": "book", "object": "Book object (5)"}}, {"added": {"name": "book", "object": "Book object (6)"}}]	16	1
177	2018-09-16 22:54:35.070734+05	1	Library object (1)	2	[{"added": {"name": "book", "object": "Book object (7)"}}, {"added": {"name": "book", "object": "Book object (8)"}}, {"added": {"name": "book", "object": "Book object (9)"}}]	16	1
178	2018-09-16 22:55:37.327611+05	1	Library object (1)	2	[{"added": {"name": "book", "object": "Book object (10)"}}, {"added": {"name": "book", "object": "Book object (11)"}}, {"added": {"name": "book", "object": "Book object (12)"}}]	16	1
179	2018-09-16 22:57:26.707635+05	1	Некрасова А.	2	[{"changed": {"fields": ["title"]}}]	16	1
180	2018-09-16 23:04:13.135169+05	5	Владимир Мегре	1	[{"added": {}}]	16	1
181	2018-09-16 23:08:47.946384+05	5	Владимир Мегре	2	[{"added": {"name": "book", "object": "\\u0410\\u043d\\u0430\\u0441\\u0442\\u0430\\u0441\\u0438\\u044f (\\u0417\\u0432\\u0435\\u043d\\u044f\\u0449\\u0438\\u0435 \\u043a\\u0435\\u0434\\u0440\\u044b \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438 - 1)"}}]	16	1
182	2018-09-16 23:15:36.077809+05	5	Владимир Мегре	2	[{"added": {"name": "book", "object": "asasas"}}]	16	1
183	2018-09-16 23:16:19.67132+05	5	Владимир Мегре	2	[{"added": {"name": "book", "object": "\\u041f\\u0440\\u043e\\u0441\\u0442\\u0440\\u0430\\u043d\\u0441\\u0442\\u0432\\u043e \\u041b\\u044e\\u0431\\u0432\\u0438 (\\u0417\\u0432\\u0435\\u043d\\u044f\\u0449\\u0438\\u0435 \\u043a\\u0435\\u0434\\u0440\\u044b \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438 - 3)"}}, {"added": {"name": "book", "object": "\\u0442\\u0432\\u043e\\u0440\\u0435\\u043d\\u0438\\u0435 (\\u0417\\u0432\\u0435\\u043d\\u044f\\u0449\\u0438\\u0435 \\u043a\\u0435\\u0434\\u0440\\u044b \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438 - 4)"}}, {"changed": {"name": "book", "object": "\\u0417\\u0432\\u0435\\u043d\\u044f\\u0449\\u0438\\u0435 \\u043a\\u0435\\u0434\\u0440\\u044b \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438 (\\u0417\\u0432\\u0435\\u043d\\u044f\\u0449\\u0438\\u0435 \\u043a\\u0435\\u0434\\u0440\\u044b \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438 - 2)", "fields": ["title"]}}]	16	1
184	2018-09-16 23:17:08.680227+05	5	Владимир Мегре	2	[{"added": {"name": "book", "object": "\\u041a\\u0442\\u043e \\u0436\\u0435 \\u043c\\u044b (\\u0417\\u0432\\u0435\\u043d\\u044f\\u0449\\u0438\\u0435 \\u043a\\u0435\\u0434\\u0440\\u044b \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438 - 5)"}}]	16	1
185	2018-09-16 23:17:35.964424+05	5	Владимир Мегре	2	[{"added": {"name": "book", "object": "\\u0420\\u043e\\u0434\\u043e\\u0432\\u0430\\u044f \\u043a\\u043d\\u0438\\u0433\\u0430 (\\u0417\\u0432\\u0435\\u043d\\u044f\\u0449\\u0438\\u0435 \\u043a\\u0435\\u0434\\u0440\\u044b \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438 - 6)"}}]	16	1
186	2018-09-16 23:17:54.051025+05	5	Владимир Мегре	2	[{"added": {"name": "book", "object": "\\u042d\\u043d\\u0435\\u0440\\u0433\\u0438\\u044f \\u0436\\u0438\\u0437\\u043d\\u0438 (\\u0417\\u0432\\u0435\\u043d\\u044f\\u0449\\u0438\\u0435 \\u043a\\u0435\\u0434\\u0440\\u044b \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438 - 7)"}}]	16	1
187	2018-09-16 23:18:34.053787+05	5	Владимир Мегре	2	[]	16	1
188	2018-09-16 23:20:07.033992+05	6	Валерий Синельников	1	[{"added": {}}]	16	1
189	2018-09-16 23:20:56.047579+05	6	Валерий Синельников	2	[{"added": {"name": "book", "object": "\\u0412\\u043e\\u0437\\u043b\\u044e\\u0431\\u0438 \\u0431\\u043e\\u043b\\u0435\\u0437\\u043d\\u044c \\u0441\\u0432\\u043e\\u044e"}}]	16	1
190	2018-09-16 23:21:31.016177+05	6	Валерий Синельников	2	[{"added": {"name": "book", "object": "\\u0421\\u0438\\u043b\\u0430 \\u041d\\u0430\\u043c\\u0435\\u0440\\u0435\\u043d\\u0438\\u044f"}}]	16	1
191	2018-09-16 23:22:12.972635+05	6	Валерий Синельников	2	[{"added": {"name": "book", "object": "\\u0422\\u0430\\u0438\\u043d\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u0430\\u044f \\u0441\\u0438\\u043b\\u0430 \\u0441\\u043b\\u043e\\u0432\\u0430"}}]	16	1
192	2018-09-16 23:22:47.301691+05	6	Валерий Синельников	2	[{"added": {"name": "book", "object": "\\u0424\\u043e\\u0440\\u043c\\u0443\\u043b\\u0430 \\u0416\\u0438\\u0437\\u043d\\u0438. \\u041a\\u0430\\u043a \\u043e\\u0431\\u0440\\u0435\\u0441\\u0442\\u0438 \\u041b\\u0438\\u0447\\u043d\\u0443\\u044e \\u0421\\u0438\\u043b\\u0443"}}]	16	1
193	2018-09-16 23:24:53.479248+05	6	Валерий Синельников	2	[{"added": {"name": "book", "object": "\\u041f\\u0443\\u0442\\u044c \\u043a \\u0431\\u043e\\u0433\\u0430\\u0442\\u0441\\u0442\\u0432\\u0443 \\u0438\\u043b\\u0438 \\u0433\\u0434\\u0435 \\u0437\\u0430\\u0440\\u044b\\u0442\\u044b \\u0441\\u043e\\u043a\\u0440\\u043e\\u0432\\u0438\\u0449\\u0430"}}, {"added": {"name": "book", "object": "\\u041f\\u0440\\u0438\\u0432\\u0438\\u0432\\u043a\\u0430 \\u043e\\u0442 \\u0441\\u0442\\u0440\\u0435\\u0441\\u0441\\u0430 \\u0438\\u043b\\u0438 \\u043f\\u0441\\u0438\\u0445\\u043e\\u044d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0435 \\u0430\\u0438\\u0306\\u043a\\u0438\\u0434\\u043e"}}, {"added": {"name": "book", "object": "\\u041f\\u0440\\u0430\\u043a\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0438\\u0306 \\u043a\\u0443\\u0440\\u0441 \\u0434\\u043e\\u043a\\u0442\\u043e\\u0440\\u0430 \\u0421\\u0438\\u043d\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a\\u043e\\u0432\\u0430"}}, {"added": {"name": "book", "object": "\\u0423\\u0447\\u0435\\u0431\\u043d\\u0438\\u043a \\u0425\\u043e\\u0437\\u044f\\u0438\\u043d\\u0430 \\u0436\\u0438\\u0437\\u043d\\u0438."}}]	16	1
194	2018-09-16 23:27:53.59115+05	7	Лиз Бурбо	1	[{"added": {}}, {"added": {"name": "book", "object": "\\u0411\\u043e\\u043b\\u044c\\u0448\\u0430\\u044f \\u0438\\u043d\\u0446\\u0438\\u043a\\u043b\\u043e\\u043f\\u0435\\u0434\\u0438\\u0430 \\u0441\\u0443\\u0449\\u043d\\u043e\\u0441\\u0442\\u0438"}}, {"added": {"name": "book", "object": "\\u0414\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0438 \\u0438\\u0437\\u043e\\u0431\\u0438\\u043b\\u0438\\u0435"}}, {"added": {"name": "book", "object": "\\u041a\\u0442\\u043e \\u0442\\u044b"}}, {"added": {"name": "book", "object": "\\u041b\\u044e\\u0431\\u043e\\u0432\\u044c \\u041b\\u044e\\u0431\\u043e\\u0432\\u044c \\u041b\\u044e\\u0431\\u043e\\u0432\\u044c"}}, {"added": {"name": "book", "object": "\\u041e\\u0442\\u0432\\u0435\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u041e\\u0431\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u043e \\u0447\\u0443\\u0432\\u0441\\u0442\\u0432\\u043e \\u0432\\u0438\\u043d\\u044b"}}, {"added": {"name": "book", "object": "\\u0421\\u043b\\u0443\\u0448\\u0430\\u0438\\u0306 \\u0441\\u0432\\u043e\\u0435 \\u0442\\u0435\\u043b\\u043e \\u0441\\u043d\\u043e\\u0432\\u0430 \\u0438 \\u0441\\u043d\\u043e\\u0432\\u0430"}}, {"added": {"name": "book", "object": "\\u0421\\u0442\\u0440\\u0430\\u0445\\u0438 \\u0438 \\u0432\\u0435\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435"}}]	16	1
195	2018-09-16 23:28:47.85133+05	7	Лиз Бурбо	2	[{"added": {"name": "book", "object": "\\u0422\\u0432\\u043e\\u0435 \\u0442\\u0435\\u043b\\u043e \\u0433\\u043e\\u0432\\u043e\\u0440\\u0438\\u0442 \\u043b\\u044e\\u0431\\u0438 \\u0441\\u0435\\u0431\\u044f"}}, {"added": {"name": "book", "object": "\\u0427\\u0443\\u0432\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u0438 \\u0421\\u0435\\u043a\\u0441\\u0443\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c"}}, {"added": {"name": "book", "object": "\\u0418\\u043d\\u0442\\u0438\\u043c\\u043d\\u044b\\u0435 \\u043e\\u0442\\u043d\\u043e\\u0448\\u0435\\u043d\\u0438\\u044f"}}]	16	1
196	2018-09-17 01:38:40.32268+05	23	Книги	2	[{"changed": {"fields": ["slug"]}}]	7	1
197	2018-09-17 23:06:19.713563+05	31	Контакты	2	[{"changed": {"fields": ["slug"]}}]	7	1
198	2018-09-18 06:19:34.832703+05	1	Review object (1)	1	[{"added": {}}]	19	1
199	2018-09-18 06:19:49.634066+05	2	Review object (2)	1	[{"added": {}}]	19	1
200	2018-09-18 06:20:08.012599+05	3	Review object (3)	1	[{"added": {}}]	19	1
201	2018-09-18 06:20:41.925469+05	4	Review object (4)	1	[{"added": {}}]	19	1
202	2018-09-18 06:21:36.244561+05	5	Review object (5)	1	[{"added": {}}]	19	1
203	2018-09-18 06:21:59.534578+05	6	Review object (6)	1	[{"added": {}}]	19	1
204	2018-09-18 06:23:40.066583+05	7	Review object (7)	1	[{"added": {}}]	19	1
205	2018-09-18 06:23:56.510591+05	8	Review object (8)	1	[{"added": {}}]	19	1
206	2018-09-18 06:24:24.822774+05	9	Review object (9)	1	[{"added": {}}]	19	1
207	2018-09-18 06:27:57.399025+05	10	Review object (10)	1	[{"added": {}}]	19	1
208	2018-09-18 06:28:21.312497+05	11	Review object (11)	1	[{"added": {}}]	19	1
209	2018-09-18 06:29:27.175038+05	12	Review object (12)	1	[{"added": {}}]	19	1
210	2018-09-18 06:29:47.835886+05	13	Review object (13)	1	[{"added": {}}]	19	1
211	2018-09-18 06:30:05.598584+05	14	Review object (14)	1	[{"added": {}}]	19	1
212	2018-09-18 06:30:41.491719+05	15	Review object (15)	1	[{"added": {}}]	19	1
213	2018-09-18 06:32:31.679006+05	16	Review object (16)	1	[{"added": {}}]	19	1
214	2018-09-18 06:32:59.056657+05	17	Review object (17)	1	[{"added": {}}]	19	1
215	2018-09-18 06:33:35.621179+05	18	Review object (18)	1	[{"added": {}}]	19	1
216	2018-09-18 06:33:51.173967+05	19	Review object (19)	1	[{"added": {}}]	19	1
217	2018-09-18 06:34:10.689614+05	20	Review object (20)	1	[{"added": {}}]	19	1
218	2018-09-18 06:34:31.283458+05	21	Review object (21)	1	[{"added": {}}]	19	1
219	2018-09-18 06:34:56.140833+05	22	Review object (22)	1	[{"added": {}}]	19	1
220	2018-09-18 06:35:18.404881+05	23	Review object (23)	1	[{"added": {}}]	19	1
221	2018-09-18 06:35:35.300648+05	24	Review object (24)	1	[{"added": {}}]	19	1
222	2018-09-18 06:43:56.78548+05	25	Review object (25)	1	[{"added": {}}]	19	1
223	2018-09-18 06:44:25.818894+05	26	Review object (26)	1	[{"added": {}}]	19	1
224	2018-09-18 06:44:42.5003+05	27	Review object (27)	1	[{"added": {}}]	19	1
225	2018-09-18 06:44:56.657024+05	28	Review object (28)	1	[{"added": {}}]	19	1
226	2018-09-18 06:45:13.460952+05	29	Review object (29)	1	[{"added": {}}]	19	1
227	2018-09-18 06:45:41.391565+05	30	Review object (30)	1	[{"added": {}}]	19	1
228	2018-09-18 06:45:57.129095+05	31	Review object (31)	1	[{"added": {}}]	19	1
229	2018-09-18 06:46:11.492335+05	32	Review object (32)	1	[{"added": {}}]	19	1
230	2018-09-18 06:48:15.526775+05	33	Review object (33)	1	[{"added": {}}]	19	1
231	2018-09-18 06:49:15.935465+05	34	Review object (34)	1	[{"added": {}}]	19	1
232	2018-09-18 06:55:09.344316+05	35	Review object (35)	1	[{"added": {}}]	19	1
233	2018-09-18 06:56:00.505113+05	36	Review object (36)	1	[{"added": {}}]	19	1
234	2018-09-18 06:57:01.893861+05	37	Review object (37)	1	[{"added": {}}]	19	1
235	2018-09-18 07:00:11.514341+05	38	Review object (38)	1	[{"added": {}}]	19	1
236	2018-09-18 07:00:51.709543+05	39	Review object (39)	1	[{"added": {}}]	19	1
237	2018-09-18 07:01:24.875238+05	40	Review object (40)	1	[{"added": {}}]	19	1
238	2018-09-18 07:02:22.91483+05	40	Review object (40)	2	[{"changed": {"fields": ["comment"]}}]	19	1
239	2018-09-18 07:03:49.971637+05	41	Review object (41)	1	[{"added": {}}]	19	1
240	2018-09-18 07:08:13.720841+05	41	Review object (41)	2	[{"changed": {"fields": ["comment"]}}]	19	1
241	2018-09-18 07:08:45.286207+05	42	Review object (42)	1	[{"added": {}}]	19	1
242	2018-09-18 07:14:23.023071+05	43	Review object (43)	1	[{"added": {}}]	19	1
243	2018-09-18 07:24:03.314715+05	25	ОТЗЫВЫ УЧАСТНИКОВ РЕТРИТА	2	[{"changed": {"fields": ["comment"]}}]	19	1
244	2018-09-18 07:24:53.42637+05	10	ОТЗЫВЫ УЧАСТНИЦ ВЫЕЗДНОГО СЕМИНАРА "УРОКИ СОВЕРШЕНСТВА ДЛЯ СОВРЕМЕННОЙ ЖЕНЩИНЫ"	2	[{"changed": {"fields": ["comment"]}}]	19	1
245	2018-09-18 07:25:42.036782+05	10	ОТЗЫВЫ УЧАСТНИЦ ВЫЕЗДНОГО СЕМИНАРА "УРОКИ СОВЕРШЕНСТВА ДЛЯ СОВРЕМЕННОЙ ЖЕНЩИНЫ"	2	[{"changed": {"fields": ["comment"]}}]	19	1
246	2018-09-18 07:26:08.063972+05	10	ОТЗЫВЫ УЧАСТНИЦ ВЫЕЗДНОГО СЕМИНАРА "УРОКИ СОВЕРШЕНСТВА ДЛЯ СОВРЕМЕННОЙ ЖЕНЩИНЫ"	2	[{"changed": {"fields": ["comment"]}}]	19	1
247	2018-09-18 07:29:08.648987+05	33	Отзыв участницы семинара-тренинга "Путь к себе"и ретрита Випассана.	2	[{"changed": {"fields": ["comment"]}}]	19	1
248	2018-09-18 07:29:51.965169+05	35	Mening uyg’onishim	2	[{"changed": {"fields": ["comment"]}}]	19	1
249	2018-09-18 07:33:46.75359+05	43	Дильноза	2	[{"changed": {"fields": ["comment", "file"]}}]	19	1
250	2018-09-18 07:33:51.767411+05	43	Дильноза	2	[]	19	1
251	2018-09-18 07:33:59.567965+05	44	Дильноза	1	[{"added": {}}]	19	1
252	2018-09-18 07:38:29.70064+05	44	Дильноза	2	[{"changed": {"fields": ["is_top"]}}]	19	1
253	2018-09-18 07:38:37.395601+05	43	Дильноза	2	[{"changed": {"fields": ["is_top"]}}]	19	1
254	2018-09-18 07:40:27.29528+05	30	Отзывы	2	[{"changed": {"fields": ["slug"]}}]	7	1
255	2018-09-18 07:59:15.816213+05	3	Крайон. Ли Кэрролл	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u041f\\u0443\\u0442\\u0435\\u0448\\u0435\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0414\\u043e\\u043c\\u043e\\u0439 (\\u0430\\u0443\\u0434\\u0438\\u043e\\u043a\\u043d\\u0438\\u0433\\u0430, \\u0447\\u0438\\u0442\\u0430\\u0435\\u0442 Nikosho) | \\u042d\\u0417\\u041e\\u0422\\u0415\\u0420\\u0418\\u041a\\u0410 | \\u0427\\u0435\\u043d\\u043d\\u0435\\u043b\\u0438\\u043d\\u0433"}}]	12	1
256	2018-09-18 07:59:22.185787+05	3	Крайон. Ли Кэрролл	2	[]	12	1
257	2018-09-18 07:59:59.967049+05	4	Ричард Бах	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\"\\u0418\\u041b\\u041b\\u042e\\u0417\\u0418\\u0418, \\u0438\\u043b\\u0438 \\u041f\\u0440\\u0438\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u044f \\u041c\\u0435\\u0441\\u0441\\u0438\\u0438 \\u043f\\u043e\\u043d\\u0435\\u0432\\u043e\\u043b\\u0435\\""}}]	12	1
258	2018-09-18 08:00:09.391747+05	4	Ричард Бах	2	[]	12	1
259	2018-09-18 08:00:54.365129+05	5	Джо Витале	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u0416\\u0438\\u0437\\u043d\\u044c \\u0431\\u0435\\u0437 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u0439"}}, {"added": {"name": "you tube video", "object": "\\u0412\\u0435\\u043b\\u0438\\u0447\\u0430\\u0439\\u0448\\u0438\\u0439 \\u0441\\u0435\\u043a\\u0440\\u0435\\u0442 \\u043a\\u0430\\u043a \\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438"}}]	12	1
260	2018-09-18 08:01:28.686055+05	6	Анатолий Некрасов	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u041c\\u0430\\u0442\\u0435\\u0440\\u0438\\u043d\\u0441\\u043a\\u0430\\u044f \\u043b\\u044e\\u0431\\u043e\\u0432\\u044c"}}]	12	1
274	2018-09-18 08:29:30.130381+05	18	★ ОБ ЭКСТРАСЕНСОРНЫХ СПОСОБНОСТЯХ★ Нил Доналд Уолш Беседы с Богом	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u2605 \\u041e\\u0411 \\u042d\\u041a\\u0421\\u0422\\u0420\\u0410\\u0421\\u0415\\u041d\\u0421\\u041e\\u0420\\u041d\\u042b\\u0425 \\u0421\\u041f\\u041e\\u0421\\u041e\\u0411\\u041d\\u041e\\u0421\\u0422\\u042f\\u0425\\u2605 \\u041d\\u0438\\u043b \\u0414\\u043e\\u043d\\u0430\\u043b\\u0434 \\u0423\\u043e\\u043b\\u0448 \\u0411\\u0435\\u0441\\u0435\\u0434\\u044b \\u0441 \\u0411\\u043e\\u0433\\u043e\\u043c"}}]	12	1
275	2018-09-18 08:29:43.370015+05	19	Роды в воду.	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u0420\\u043e\\u0434\\u044b \\u0432 \\u0432\\u043e\\u0434\\u0443."}}]	12	1
276	2018-09-18 08:30:03.306776+05	20	Роды в воду - натуральны и гармоничны.	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u0420\\u043e\\u0434\\u044b \\u0432 \\u0432\\u043e\\u0434\\u0443 - \\u043d\\u0430\\u0442\\u0443\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b \\u0438 \\u0433\\u0430\\u0440\\u043c\\u043e\\u043d\\u0438\\u0447\\u043d\\u044b."}}]	12	1
261	2018-09-18 08:03:56.911151+05	7	Ошо	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u041e\\u0441\\u043e\\u0437\\u043d\\u0430\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c"}}, {"added": {"name": "you tube video", "object": "\\u0422\\u0435\\u0445\\u043d\\u0438\\u043a\\u0430 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u043c\\u044b\\u0441\\u043b\\u0435\\u0439. \\u041c\\u0435\\u0442\\u043e\\u0434\\u0438\\u043a\\u0438 \\u0438\\u0437 \\u041a\\u043d\\u0438\\u0433\\u0438 \\u0422\\u0430\\u0439\\u043d."}}, {"added": {"name": "you tube video", "object": "\\u0420\\u0430\\u0437\\u0443\\u043c. \\u0422\\u0432\\u043e\\u0440\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u043e\\u0442\\u043a\\u043b\\u0438\\u043a \\u043d\\u0430 \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441."}}, {"added": {"name": "you tube video", "object": "\\u041b\\u044e\\u0431\\u043e\\u0432\\u044c. \\u0421\\u0432\\u043e\\u0431\\u043e\\u0434\\u0430. \\u041e\\u0434\\u0438\\u043d\\u043e\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e."}}, {"added": {"name": "you tube video", "object": "\\u041e \\u043b\\u044e\\u0431\\u0432\\u0438, \\u041b\\u044e\\u0431\\u043e\\u0432\\u044c \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0435\\u0442\\u0441\\u044f \\u0441 \\u043b\\u044e\\u0431\\u0432\\u0438 \\u043a \\u0441\\u0435\\u0431\\u0435"}}, {"added": {"name": "you tube video", "object": "\\u041e \\u041c\\u0443\\u0436\\u0447\\u0438\\u043d\\u0430\\u0445"}}, {"added": {"name": "you tube video", "object": "\\u041e \\u0436\\u0435\\u043d\\u0449\\u0438\\u043d\\u0430\\u0445."}}, {"added": {"name": "you tube video", "object": "\\u0411\\u043b\\u0438\\u0437\\u043e\\u0441\\u0442\\u044c. \\u0414\\u043e\\u0432\\u0435\\u0440\\u0438\\u0435 \\u043a \\u0441\\u0435\\u0431\\u0435 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u043e\\u043c\\u0443."}}]	12	1
262	2018-09-18 08:04:55.674964+05	8	Лиз Бурбо	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u041f\\u044f\\u0442\\u044c \\u0442\\u0440\\u0430\\u0432\\u043c."}}]	12	1
263	2018-09-18 08:05:42.293343+05	9	Джон Кехо	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u041f\\u043e\\u0434\\u0441\\u043e\\u0437\\u043d\\u0430\\u043d\\u0438\\u0435 \\u041c\\u043e\\u0436\\u0435\\u0442 \\u0412\\u0441\\u0435."}}, {"added": {"name": "you tube video", "object": "\\u0414\\u0436\\u043e\\u043d \\u041a\\u0435\\u0445\\u043e. \\u0414\\u0435\\u043d\\u044c\\u0433\\u0438, \\u0443\\u0441\\u043f\\u0435\\u0445 \\u0438 \\u0412\\u044b."}}]	12	1
264	2018-09-18 08:08:08.817468+05	10	Торсунов О.Г.	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u0420\\u0430\\u0441\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0441\\u0432\\u043e\\u0435\\u0433\\u043e \\u043f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d\\u0438\\u044f. \\u0427\\u0430\\u0441\\u0442\\u044c 1"}}, {"added": {"name": "you tube video", "object": "\\u0420\\u0430\\u0441\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0441\\u0432\\u043e\\u0435\\u0433\\u043e \\u043f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d\\u0438\\u044f. \\u0427\\u0430\\u0441\\u0442\\u044c 2"}}, {"added": {"name": "you tube video", "object": "\\u041a\\u0430\\u043a \\u043d\\u0430\\u0439\\u0442\\u0438 \\u0438 \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u0447\\u044c \\u0438\\u0434\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043f\\u0430\\u0440\\u0442\\u043d\\u0451\\u0440\\u0430."}}, {"added": {"name": "you tube video", "object": "\\u041e\\u0431\\u044f\\u0437\\u0430\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u043c\\u0443\\u0436\\u0447\\u0438\\u043d\\u044b \\u0438 \\u0436\\u0435\\u043d\\u0449\\u0438\\u043d\\u044b. \\u0427\\u0430\\u0441\\u0442\\u044c 1"}}, {"added": {"name": "you tube video", "object": "\\u041e\\u0431\\u044f\\u0437\\u0430\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u043c\\u0443\\u0436\\u0447\\u0438\\u043d\\u044b \\u0438 \\u0436\\u0435\\u043d\\u0449\\u0438\\u043d\\u044b. \\u0427\\u0430\\u0441\\u0442\\u044c 2"}}, {"added": {"name": "you tube video", "object": "\\u041f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430 \\u0437\\u0430\\u0447\\u0430\\u0442\\u0438\\u044f \\u0438 \\u0432\\u043e\\u0441\\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f \\u0434\\u0435\\u0442\\u0435\\u0439"}}, {"added": {"name": "you tube video", "object": "\\u0421\\u0442\\u043e \\u0440\\u0435\\u0446\\u0435\\u043f\\u0442\\u043e\\u0432 \\u043e\\u0442 \\u0441\\u0442\\u0430 \\u0431\\u043e\\u043b\\u0435\\u0437\\u043d\\u0435\\u0439."}}, {"added": {"name": "you tube video", "object": "\\u0420\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435 \\u043a\\u043e\\u043d\\u0444\\u043b\\u0438\\u043a\\u0442\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0442\\u0443\\u0430\\u0446\\u0438\\u0439 \\u0432 \\u0441\\u0435\\u043c\\u044c\\u0435."}}]	12	1
265	2018-09-18 08:11:42.710013+05	24	Аудио материалы	2	[{"changed": {"fields": ["slug"]}}]	7	1
266	2018-09-18 08:13:41.382834+05	11	Анная	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u0422\\u0435\\u0445\\u043d\\u0438\\u043a\\u0438 \\u043f\\u043e \\u043e\\u0447\\u0438\\u0449\\u0435\\u043d\\u0438\\u044e \\u043e\\u0442 \\u044d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u0431\\u043b\\u043e\\u043a\\u043e\\u0432 \\u0438 \\u0437\\u0430\\u0441\\u043e\\u0440\\u043e\\u0432 \\u0447\\u0430\\u043a\\u0440."}}, {"added": {"name": "you tube video", "object": "\\u0420\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u0435 \\u0441\\u043e\\u0437\\u043d\\u0430\\u043d\\u0438\\u044f (\\u0442\\u0440\\u0430\\u043d\\u0441, \\u0440\\u0430\\u0441\\u0441\\u043b\\u0430\\u0431\\u043b\\u0435\\u043d\\u0438\\u0435) \\u0438 \\u0442\\u043e\\u0447\\u043a\\u0430 \\u0432\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u044f."}}, {"added": {"name": "you tube video", "object": "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431\\u043d\\u043e\\u0441\\u0442\\u0438 \\u043d\\u0435\\u043e\\u0431\\u044b\\u0447\\u0430\\u0439\\u043d\\u043e\\u0433\\u043e \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0430 \\u0438\\u043b\\u0438 \\u0432\\u043e\\u0441\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u0435 \\u0447\\u0442\\u043e \\u0438 \\u043a\\u0430\\u043a \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u0442."}}]	12	1
267	2018-09-18 08:15:34.06479+05	12	Торсунов О.Г.	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u0420\\u0430\\u0441\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0441\\u0432\\u043e\\u0435\\u0433\\u043e \\u043f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d\\u0438\\u044f. \\u0427\\u0430\\u0441\\u0442\\u044c 1"}}, {"added": {"name": "you tube video", "object": "\\u0420\\u0430\\u0441\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0441\\u0432\\u043e\\u0435\\u0433\\u043e \\u043f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d\\u0438\\u044f. \\u0427\\u0430\\u0441\\u0442\\u044c 2"}}, {"added": {"name": "you tube video", "object": "\\u041a\\u0430\\u043a \\u043d\\u0430\\u0439\\u0442\\u0438 \\u0438 \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u0447\\u044c \\u0438\\u0434\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043f\\u0430\\u0440\\u0442\\u043d\\u0451\\u0440\\u0430."}}, {"added": {"name": "you tube video", "object": "\\u041e\\u0431\\u044f\\u0437\\u0430\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u043c\\u0443\\u0436\\u0447\\u0438\\u043d\\u044b \\u0438 \\u0436\\u0435\\u043d\\u0449\\u0438\\u043d\\u044b. \\u0427\\u0430\\u0441\\u0442\\u044c 1"}}, {"added": {"name": "you tube video", "object": "\\u041e\\u0431\\u044f\\u0437\\u0430\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u043c\\u0443\\u0436\\u0447\\u0438\\u043d\\u044b \\u0438 \\u0436\\u0435\\u043d\\u0449\\u0438\\u043d\\u044b. \\u0427\\u0430\\u0441\\u0442\\u044c 2"}}, {"added": {"name": "you tube video", "object": "\\u041f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430 \\u0437\\u0430\\u0447\\u0430\\u0442\\u0438\\u044f \\u0438 \\u0432\\u043e\\u0441\\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f \\u0434\\u0435\\u0442\\u0435\\u0439"}}, {"added": {"name": "you tube video", "object": "\\u0421\\u0442\\u043e \\u0440\\u0435\\u0446\\u0435\\u043f\\u0442\\u043e\\u0432 \\u043e\\u0442 \\u0441\\u0442\\u0430 \\u0431\\u043e\\u043b\\u0435\\u0437\\u043d\\u0435\\u0439."}}, {"added": {"name": "you tube video", "object": "\\u0420\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435 \\u043a\\u043e\\u043d\\u0444\\u043b\\u0438\\u043a\\u0442\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0442\\u0443\\u0430\\u0446\\u0438\\u0439 \\u0432 \\u0441\\u0435\\u043c\\u044c\\u0435."}}]	12	1
268	2018-09-18 08:17:33.204245+05	13	Таргакова M.	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u0421\\u0446\\u0435\\u043d\\u0430\\u0440\\u0438\\u0438 \\u0436\\u0438\\u0437\\u043d\\u0438 \\u0438\\u043b\\u0438 \\u0432\\u044b\\u0445\\u043e\\u0434 \\u0438\\u0437 \\u043c\\u0430\\u0442\\u0440\\u0438\\u0446\\u044b"}}, {"added": {"name": "you tube video", "object": "\\u0421\\u0435\\u043c\\u044c\\u044f \\u043e\\u0442 \\u043c\\u0430\\u043b\\u0430 \\u0434\\u043e \\u0432\\u0435\\u043b\\u0438\\u043a\\u0430 (\\u043e\\u0442\\u0432\\u0435\\u0442\\u044b \\u043d\\u0430 \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b)"}}, {"added": {"name": "you tube video", "object": "\\u0421\\u0435\\u043c\\u0435\\u0439\\u043d\\u0430\\u044f \\u0413\\u0430\\u0440\\u043c\\u043e\\u043d\\u0438\\u044f"}}, {"added": {"name": "you tube video", "object": "\\u041e \\u0432\\u043e\\u0441\\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0438 \\u0434\\u0435\\u0442\\u0435\\u0439."}}, {"added": {"name": "you tube video", "object": "\\u041a\\u0430\\u043a \\u043f\\u0440\\u0435\\u0432\\u0440\\u0430\\u0442\\u0438\\u0442\\u044c\\u0441\\u044f \\u0438\\u0437 \\u043b\\u044f\\u0433\\u0443\\u0448\\u043a\\u0438 \\u0432 \\u0446\\u0430\\u0440\\u0435\\u0432\\u043d\\u0443?"}}, {"added": {"name": "you tube video", "object": "\\u0411\\u044b\\u0442\\u044c, \\u0430 \\u043d\\u0435 \\u043a\\u0430\\u0437\\u0430\\u0442\\u044c\\u0441\\u044f!"}}, {"added": {"name": "you tube video", "object": "\\u041c\\u0443\\u0436\\u0447\\u0438\\u043d\\u0430 \\u0438 \\u0416\\u0435\\u043d\\u0449\\u0438\\u043d\\u0430: \\u041d\\u0430\\u0443\\u043a\\u0430 \\u043f\\u043e\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u044f"}}, {"added": {"name": "you tube video", "object": "\\u041a\\u0430\\u043a \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u044c\\u0441\\u044f \\u0432 \\u043f\\u0440\\u043e\\u0441\\u0442\\u0440\\u0430\\u043d\\u0441\\u0442\\u0432\\u0435 \\u043a\\u043e\\u043d\\u0444\\u043b\\u0438\\u043a\\u0442\\u0430? \\u0427\\u0430\\u0441\\u0442\\u044c 1"}}, {"added": {"name": "you tube video", "object": "\\u041a\\u0430\\u043a \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u044c\\u0441\\u044f \\u0432 \\u043f\\u0440\\u043e\\u0441\\u0442\\u0440\\u0430\\u043d\\u0441\\u0442\\u0432\\u0435 \\u043a\\u043e\\u043d\\u0444\\u043b\\u0438\\u043a\\u0442\\u0430? \\u0427\\u0430\\u0441\\u0442\\u044c 2"}}]	12	1
269	2018-09-18 08:19:19.181171+05	14	Гадецкий О.	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u0426\\u0435\\u043b\\u043e\\u0441\\u0442\\u043d\\u0430\\u044f \\u043b\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c. \\u0423\\u0440\\u043e\\u043a 1"}}, {"added": {"name": "you tube video", "object": "\\u0426\\u0435\\u043b\\u043e\\u0441\\u0442\\u043d\\u0430\\u044f \\u043b\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0423\\u0440\\u043e\\u043a 2"}}, {"added": {"name": "you tube video", "object": "\\u0426\\u0435\\u043b\\u043e\\u0441\\u0442\\u043d\\u0430\\u044f \\u043b\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c. \\u0423\\u0440\\u043e\\u043a 3"}}, {"added": {"name": "you tube video", "object": "\\u0426\\u0435\\u043b\\u043e\\u0441\\u0442\\u043d\\u0430\\u044f \\u043b\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c. \\u0423\\u0440\\u043e\\u043a 4"}}, {"added": {"name": "you tube video", "object": "\\u0426\\u0435\\u043b\\u043e\\u0441\\u0442\\u043d\\u0430\\u044f \\u043b\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c. \\u0423\\u0440\\u043e\\u043a 5"}}, {"added": {"name": "you tube video", "object": "\\u0421\\u043c\\u044b\\u0441\\u043b \\u0436\\u0438\\u0437\\u043d\\u0438."}}, {"added": {"name": "you tube video", "object": "\\u0417\\u0430\\u043a\\u043e\\u043d\\u044b \\u043f\\u0440\\u043e\\u0446\\u0432\\u0435\\u0442\\u0430\\u043d\\u0438\\u044f."}}]	12	1
270	2018-09-18 08:21:14.155314+05	25	Видео материалы	2	[{"changed": {"fields": ["slug"]}}]	7	1
271	2018-09-18 08:28:34.174712+05	15	После фильма начни новую жизнь! Обязательно для просмотра!	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u041f\\u043e\\u0441\\u043b\\u0435 \\u0444\\u0438\\u043b\\u044c\\u043c\\u0430 \\u043d\\u0430\\u0447\\u043d\\u0438 \\u043d\\u043e\\u0432\\u0443\\u044e \\u0436\\u0438\\u0437\\u043d\\u044c! \\u041e\\u0431\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0434\\u043b\\u044f \\u043f\\u0440\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0430!"}}]	12	1
272	2018-09-18 08:28:47.606193+05	16	ЛИМОН СИЛЬНЕЕ ХИМИОТЕРАПИИ В        10 000 РАЗ!	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u041b\\u0418\\u041c\\u041e\\u041d \\u0421\\u0418\\u041b\\u042c\\u041d\\u0415\\u0415 \\u0425\\u0418\\u041c\\u0418\\u041e\\u0422\\u0415\\u0420\\u0410\\u041f\\u0418\\u0418 \\u0412        10 000 \\u0420\\u0410\\u0417!"}}]	12	1
273	2018-09-18 08:29:06.118943+05	17	ДОБРОВОЛЬНЫЕ РАБЫ СИСТЕМЫ	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u0414\\u041e\\u0411\\u0420\\u041e\\u0412\\u041e\\u041b\\u042c\\u041d\\u042b\\u0415 \\u0420\\u0410\\u0411\\u042b \\u0421\\u0418\\u0421\\u0422\\u0415\\u041c\\u042b"}}]	12	1
277	2018-09-18 08:30:16.143494+05	21	Смерти нет! Исповедь Врача терапевта! Рак. СПИД. Вакцинация. Выдуманные болезни! 6 июня 2017	1	[{"added": {}}, {"added": {"name": "you tube video", "object": "\\u0421\\u043c\\u0435\\u0440\\u0442\\u0438 \\u043d\\u0435\\u0442! \\u0418\\u0441\\u043f\\u043e\\u0432\\u0435\\u0434\\u044c \\u0412\\u0440\\u0430\\u0447\\u0430 \\u0442\\u0435\\u0440\\u0430\\u043f\\u0435\\u0432\\u0442\\u0430! \\u0420\\u0430\\u043a. \\u0421\\u041f\\u0418\\u0414. \\u0412\\u0430\\u043a\\u0446\\u0438\\u043d\\u0430\\u0446\\u0438\\u044f. \\u0412\\u044b\\u0434\\u0443\\u043c\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0431\\u043e\\u043b\\u0435\\u0437\\u043d\\u0438! 6 \\u0438\\u044e\\u043d\\u044f 2017"}}]	12	1
278	2018-09-18 08:31:47.234393+05	26	Познавательное и интересное видео	2	[{"changed": {"fields": ["slug"]}}]	7	1
279	2018-09-18 08:34:32.26552+05	58	Рекомендуемые фильмы	1	[{"added": {}}]	8	1
280	2018-09-18 08:34:51.939354+05	27	Кино (фильмы)	2	[{"changed": {"fields": ["slug"]}}]	7	1
281	2018-09-18 08:47:22.057899+05	58	Рекомендуемые фильмы	2	[{"changed": {"fields": ["body"]}}]	8	1
282	2018-09-18 08:50:02.425025+05	58	Рекомендуемые фильмы	2	[{"changed": {"fields": ["body"]}}]	8	1
283	2018-09-18 08:53:49.820494+05	58	Рекомендуемые фильмы	2	[{"changed": {"fields": ["body"]}}]	8	1
284	2018-09-18 08:58:14.414601+05	59	Также рекомендуем	1	[{"added": {}}]	8	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 284, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	basic	menu
8	basic	content
9	basic	category
10	basic	contenttranslation
11	basic	menutranslation
14	basic	youtubevideo
15	basic	youtubevideotranslation
12	basic	youtubevideoalbum
13	basic	youtubevideoalbumtranslation
16	basic	library
17	basic	book
18	basic	contact
19	basic	review
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-09-14 01:47:57.145511+05
2	auth	0001_initial	2018-09-14 01:47:58.077351+05
3	admin	0001_initial	2018-09-14 01:47:58.320077+05
4	admin	0002_logentry_remove_auto_add	2018-09-14 01:47:58.352642+05
5	admin	0003_logentry_add_action_flag_choices	2018-09-14 01:47:58.416691+05
6	contenttypes	0002_remove_content_type_name	2018-09-14 01:47:58.48508+05
7	auth	0002_alter_permission_name_max_length	2018-09-14 01:47:58.518496+05
8	auth	0003_alter_user_email_max_length	2018-09-14 01:47:58.562265+05
9	auth	0004_alter_user_username_opts	2018-09-14 01:47:58.596474+05
10	auth	0005_alter_user_last_login_null	2018-09-14 01:47:58.64037+05
11	auth	0006_require_contenttypes_0002	2018-09-14 01:47:58.651496+05
12	auth	0007_alter_validators_add_error_messages	2018-09-14 01:47:58.687004+05
13	auth	0008_alter_user_username_max_length	2018-09-14 01:47:58.77395+05
14	auth	0009_alter_user_last_name_max_length	2018-09-14 01:47:58.817788+05
15	sessions	0001_initial	2018-09-14 01:47:59.017615+05
16	basic	0001_initial	2018-09-14 01:56:32.170881+05
17	basic	0002_category_content	2018-09-14 12:31:14.026893+05
18	basic	0003_auto_20180914_0732	2018-09-14 12:32:19.403994+05
19	basic	0004_auto_20180915_0016	2018-09-15 00:16:09.396099+05
20	basic	0005_contenttranslation_slug	2018-09-15 00:17:43.653873+05
21	basic	0006_auto_20180915_1130	2018-09-15 11:30:23.176887+05
22	basic	0007_auto_20180915_1133	2018-09-15 11:34:01.971669+05
23	basic	0008_auto_20180915_1137	2018-09-15 11:37:40.216228+05
24	basic	0009_auto_20180915_1240	2018-09-15 12:40:22.787845+05
25	basic	0010_content_content_type	2018-09-15 14:37:38.818984+05
26	basic	0011_content_date	2018-09-15 14:38:26.327275+05
27	basic	0012_auto_20180915_1657	2018-09-15 16:58:05.189877+05
28	basic	0013_auto_20180915_1718	2018-09-15 17:19:02.290869+05
29	basic	0014_youtubevideotranslation_url	2018-09-15 17:24:11.910062+05
30	basic	0015_auto_20180915_1800	2018-09-15 18:00:37.954602+05
31	basic	0016_auto_20180916_2131	2018-09-16 21:31:07.853372+05
32	basic	0017_books_library	2018-09-16 22:45:24.822693+05
33	basic	0018_auto_20180916_2245	2018-09-16 22:45:25.178084+05
34	basic	0019_auto_20180916_2246	2018-09-16 22:46:28.168315+05
35	basic	0020_auto_20180916_2311	2018-09-16 23:11:20.505018+05
36	basic	0021_auto_20180916_2318	2018-09-16 23:18:22.624337+05
37	basic	0022_auto_20180917_1717	2018-09-17 17:17:07.445362+05
38	basic	0023_contact	2018-09-17 19:28:03.343181+05
39	basic	0024_auto_20180918_0617	2018-09-18 06:17:41.537092+05
40	basic	0025_auto_20180918_0731	2018-09-18 07:31:20.866228+05
41	basic	0026_review_is_top	2018-09-18 07:38:09.103897+05
42	basic	0027_youtubevideoalbum_video_type	2018-09-18 07:52:01.739029+05
43	basic	0028_auto_20180918_0826	2018-09-18 08:26:52.552825+05
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smp
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 43, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: smp
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
fudt789iow54uoi11b1hw5z740x8ccvq	NGNhZTQ4OWMzYWNiZmI0MjJiZTc1ODAwNjNmYmQxZDY3NTQ4MzFmMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNDNkNGM0NjM0OGEwOWM5NGJhOWVlMzkyMmFhOWQxNTg5ZjBkODc3In0=	2018-09-28 01:48:42.068531+05
pc5w63i69euvnmsoq71mnr5n48efipfg	NGNhZTQ4OWMzYWNiZmI0MjJiZTc1ODAwNjNmYmQxZDY3NTQ4MzFmMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNDNkNGM0NjM0OGEwOWM5NGJhOWVlMzkyMmFhOWQxNTg5ZjBkODc3In0=	2018-09-28 23:36:48.08647+05
bdbu4dcizd4q82hh3dc3774ep6evwbir	NGNhZTQ4OWMzYWNiZmI0MjJiZTc1ODAwNjNmYmQxZDY3NTQ4MzFmMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNDNkNGM0NjM0OGEwOWM5NGJhOWVlMzkyMmFhOWQxNTg5ZjBkODc3In0=	2018-09-30 20:37:12.501968+05
\.


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: basic_youtubevideoalbum basic_album_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_youtubevideoalbum
    ADD CONSTRAINT basic_album_pkey PRIMARY KEY (id);


--
-- Name: basic_youtubevideoalbum_translation basic_album_translation_language_code_master_id_74c1fec5_uniq; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_youtubevideoalbum_translation
    ADD CONSTRAINT basic_album_translation_language_code_master_id_74c1fec5_uniq UNIQUE (language_code, master_id);


--
-- Name: basic_youtubevideoalbum_translation basic_album_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_youtubevideoalbum_translation
    ADD CONSTRAINT basic_album_translation_pkey PRIMARY KEY (id);


--
-- Name: basic_book basic_book_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_book
    ADD CONSTRAINT basic_book_pkey PRIMARY KEY (id);


--
-- Name: basic_contact basic_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_contact
    ADD CONSTRAINT basic_contact_pkey PRIMARY KEY (id);


--
-- Name: basic_content basic_content_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_content
    ADD CONSTRAINT basic_content_pkey PRIMARY KEY (id);


--
-- Name: basic_content_translation basic_content_translation_language_code_master_id_a71451d4_uniq; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_content_translation
    ADD CONSTRAINT basic_content_translation_language_code_master_id_a71451d4_uniq UNIQUE (language_code, master_id);


--
-- Name: basic_content_translation basic_content_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_content_translation
    ADD CONSTRAINT basic_content_translation_pkey PRIMARY KEY (id);


--
-- Name: basic_library basic_library_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_library
    ADD CONSTRAINT basic_library_pkey PRIMARY KEY (id);


--
-- Name: basic_menu basic_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_menu
    ADD CONSTRAINT basic_menu_pkey PRIMARY KEY (id);


--
-- Name: basic_menu_translation basic_menu_translation_language_code_master_id_c1c28a2f_uniq; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_menu_translation
    ADD CONSTRAINT basic_menu_translation_language_code_master_id_c1c28a2f_uniq UNIQUE (language_code, master_id);


--
-- Name: basic_menu_translation basic_menu_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_menu_translation
    ADD CONSTRAINT basic_menu_translation_pkey PRIMARY KEY (id);


--
-- Name: basic_review basic_review_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_review
    ADD CONSTRAINT basic_review_pkey PRIMARY KEY (id);


--
-- Name: basic_youtubevideo basic_youtubevideo_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_youtubevideo
    ADD CONSTRAINT basic_youtubevideo_pkey PRIMARY KEY (id);


--
-- Name: basic_youtubevideo_translation basic_youtubevideo_trans_language_code_master_id_0a5d2484_uniq; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_youtubevideo_translation
    ADD CONSTRAINT basic_youtubevideo_trans_language_code_master_id_0a5d2484_uniq UNIQUE (language_code, master_id);


--
-- Name: basic_youtubevideo_translation basic_youtubevideo_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_youtubevideo_translation
    ADD CONSTRAINT basic_youtubevideo_translation_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: basic_album_translation_language_code_955c736a; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_album_translation_language_code_955c736a ON public.basic_youtubevideoalbum_translation USING btree (language_code);


--
-- Name: basic_album_translation_language_code_955c736a_like; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_album_translation_language_code_955c736a_like ON public.basic_youtubevideoalbum_translation USING btree (language_code varchar_pattern_ops);


--
-- Name: basic_album_translation_master_id_02a0369b; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_album_translation_master_id_02a0369b ON public.basic_youtubevideoalbum_translation USING btree (master_id);


--
-- Name: basic_book_library_id_5a5a9b33; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_book_library_id_5a5a9b33 ON public.basic_book USING btree (library_id);


--
-- Name: basic_content_translation_language_code_46d4b023; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_content_translation_language_code_46d4b023 ON public.basic_content_translation USING btree (language_code);


--
-- Name: basic_content_translation_language_code_46d4b023_like; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_content_translation_language_code_46d4b023_like ON public.basic_content_translation USING btree (language_code varchar_pattern_ops);


--
-- Name: basic_content_translation_master_id_82f881ec; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_content_translation_master_id_82f881ec ON public.basic_content_translation USING btree (master_id);


--
-- Name: basic_content_translation_slug_3e9f3707; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_content_translation_slug_3e9f3707 ON public.basic_content_translation USING btree (slug);


--
-- Name: basic_content_translation_slug_3e9f3707_like; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_content_translation_slug_3e9f3707_like ON public.basic_content_translation USING btree (slug varchar_pattern_ops);


--
-- Name: basic_menu_level_fc2441db; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_menu_level_fc2441db ON public.basic_menu USING btree (mptt_level);


--
-- Name: basic_menu_lft_7bf5316b; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_menu_lft_7bf5316b ON public.basic_menu USING btree (lft);


--
-- Name: basic_menu_parent_id_3b77cbaa; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_menu_parent_id_3b77cbaa ON public.basic_menu USING btree (parent_id);


--
-- Name: basic_menu_rght_e570c3e3; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_menu_rght_e570c3e3 ON public.basic_menu USING btree (rght);


--
-- Name: basic_menu_translation_language_code_6b460a10; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_menu_translation_language_code_6b460a10 ON public.basic_menu_translation USING btree (language_code);


--
-- Name: basic_menu_translation_language_code_6b460a10_like; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_menu_translation_language_code_6b460a10_like ON public.basic_menu_translation USING btree (language_code varchar_pattern_ops);


--
-- Name: basic_menu_translation_master_id_26be8ecc; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_menu_translation_master_id_26be8ecc ON public.basic_menu_translation USING btree (master_id);


--
-- Name: basic_menu_tree_id_0716ab3b; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_menu_tree_id_0716ab3b ON public.basic_menu USING btree (tree_id);


--
-- Name: basic_youtubevideo_album_id_a33aaa20; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_youtubevideo_album_id_a33aaa20 ON public.basic_youtubevideo USING btree (album_id);


--
-- Name: basic_youtubevideo_translation_language_code_034ab6ef; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_youtubevideo_translation_language_code_034ab6ef ON public.basic_youtubevideo_translation USING btree (language_code);


--
-- Name: basic_youtubevideo_translation_language_code_034ab6ef_like; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_youtubevideo_translation_language_code_034ab6ef_like ON public.basic_youtubevideo_translation USING btree (language_code varchar_pattern_ops);


--
-- Name: basic_youtubevideo_translation_master_id_42eef314; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX basic_youtubevideo_translation_master_id_42eef314 ON public.basic_youtubevideo_translation USING btree (master_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: smp
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: basic_youtubevideoalbum_translation basic_album_translat_master_id_02a0369b_fk_basic_you; Type: FK CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_youtubevideoalbum_translation
    ADD CONSTRAINT basic_album_translat_master_id_02a0369b_fk_basic_you FOREIGN KEY (master_id) REFERENCES public.basic_youtubevideoalbum(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: basic_book basic_book_library_id_5a5a9b33_fk_basic_library_id; Type: FK CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_book
    ADD CONSTRAINT basic_book_library_id_5a5a9b33_fk_basic_library_id FOREIGN KEY (library_id) REFERENCES public.basic_library(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: basic_content_translation basic_content_transl_master_id_82f881ec_fk_basic_con; Type: FK CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_content_translation
    ADD CONSTRAINT basic_content_transl_master_id_82f881ec_fk_basic_con FOREIGN KEY (master_id) REFERENCES public.basic_content(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: basic_menu basic_menu_parent_id_3b77cbaa_fk_basic_menu_id; Type: FK CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_menu
    ADD CONSTRAINT basic_menu_parent_id_3b77cbaa_fk_basic_menu_id FOREIGN KEY (parent_id) REFERENCES public.basic_menu(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: basic_menu_translation basic_menu_translation_master_id_26be8ecc_fk_basic_menu_id; Type: FK CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_menu_translation
    ADD CONSTRAINT basic_menu_translation_master_id_26be8ecc_fk_basic_menu_id FOREIGN KEY (master_id) REFERENCES public.basic_menu(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: basic_youtubevideo basic_youtubevideo_album_id_a33aaa20_fk_basic_you; Type: FK CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_youtubevideo
    ADD CONSTRAINT basic_youtubevideo_album_id_a33aaa20_fk_basic_you FOREIGN KEY (album_id) REFERENCES public.basic_youtubevideoalbum(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: basic_youtubevideo_translation basic_youtubevideo_t_master_id_42eef314_fk_basic_you; Type: FK CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.basic_youtubevideo_translation
    ADD CONSTRAINT basic_youtubevideo_t_master_id_42eef314_fk_basic_you FOREIGN KEY (master_id) REFERENCES public.basic_youtubevideo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: smp
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

