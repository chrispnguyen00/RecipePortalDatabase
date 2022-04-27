--
-- PostgreSQL database dump
--

-- Dumped from database version 13.5 (Ubuntu 13.5-2.pgdg20.04+1)
-- Dumped by pg_dump version 13.5 (Ubuntu 13.5-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO chrispnguyen;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: chrispnguyen
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO chrispnguyen;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chrispnguyen
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO chrispnguyen;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: chrispnguyen
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO chrispnguyen;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chrispnguyen
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO chrispnguyen;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: chrispnguyen
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO chrispnguyen;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chrispnguyen
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO chrispnguyen;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO chrispnguyen;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: chrispnguyen
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO chrispnguyen;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chrispnguyen
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: chrispnguyen
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO chrispnguyen;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chrispnguyen
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO chrispnguyen;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: chrispnguyen
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO chrispnguyen;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chrispnguyen
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: chrispnguyen
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


ALTER TABLE public.django_admin_log OWNER TO chrispnguyen;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: chrispnguyen
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO chrispnguyen;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chrispnguyen
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO chrispnguyen;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: chrispnguyen
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO chrispnguyen;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chrispnguyen
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO chrispnguyen;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: chrispnguyen
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO chrispnguyen;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chrispnguyen
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO chrispnguyen;

--
-- Name: recipeportaldb_category; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.recipeportaldb_category (
    categoryid integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.recipeportaldb_category OWNER TO chrispnguyen;

--
-- Name: recipeportaldb_categoryrecipe; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.recipeportaldb_categoryrecipe (
    id bigint NOT NULL,
    categoryid_id integer NOT NULL,
    recipeid_id integer
);


ALTER TABLE public.recipeportaldb_categoryrecipe OWNER TO chrispnguyen;

--
-- Name: recipeportaldb_categoryrecipe_id_seq; Type: SEQUENCE; Schema: public; Owner: chrispnguyen
--

CREATE SEQUENCE public.recipeportaldb_categoryrecipe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipeportaldb_categoryrecipe_id_seq OWNER TO chrispnguyen;

--
-- Name: recipeportaldb_categoryrecipe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chrispnguyen
--

ALTER SEQUENCE public.recipeportaldb_categoryrecipe_id_seq OWNED BY public.recipeportaldb_categoryrecipe.id;


--
-- Name: recipeportaldb_ingredient; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.recipeportaldb_ingredient (
    ingredientid integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL
);


ALTER TABLE public.recipeportaldb_ingredient OWNER TO chrispnguyen;

--
-- Name: recipeportaldb_ingredientnutrition; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.recipeportaldb_ingredientnutrition (
    nutritionid integer NOT NULL,
    portionsize double precision NOT NULL,
    calories integer NOT NULL,
    fat integer NOT NULL,
    protein integer NOT NULL,
    sodium integer NOT NULL,
    carbs integer NOT NULL,
    ingredientid_id integer
);


ALTER TABLE public.recipeportaldb_ingredientnutrition OWNER TO chrispnguyen;

--
-- Name: recipeportaldb_ingredientrecipe; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.recipeportaldb_ingredientrecipe (
    id bigint NOT NULL,
    amount character varying(255) NOT NULL,
    ingredientid_id integer,
    recipeid_id integer
);


ALTER TABLE public.recipeportaldb_ingredientrecipe OWNER TO chrispnguyen;

--
-- Name: recipeportaldb_ingredientrecipe_id_seq; Type: SEQUENCE; Schema: public; Owner: chrispnguyen
--

CREATE SEQUENCE public.recipeportaldb_ingredientrecipe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipeportaldb_ingredientrecipe_id_seq OWNER TO chrispnguyen;

--
-- Name: recipeportaldb_ingredientrecipe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chrispnguyen
--

ALTER SEQUENCE public.recipeportaldb_ingredientrecipe_id_seq OWNED BY public.recipeportaldb_ingredientrecipe.id;


--
-- Name: recipeportaldb_recipe; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.recipeportaldb_recipe (
    recipeid integer NOT NULL,
    description text NOT NULL,
    steps text NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.recipeportaldb_recipe OWNER TO chrispnguyen;

--
-- Name: recipeportaldb_utensil; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.recipeportaldb_utensil (
    utensilid integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.recipeportaldb_utensil OWNER TO chrispnguyen;

--
-- Name: recipeportaldb_utensilrecipe; Type: TABLE; Schema: public; Owner: chrispnguyen
--

CREATE TABLE public.recipeportaldb_utensilrecipe (
    id bigint NOT NULL,
    recipeid_id integer,
    utensilid_id integer
);


ALTER TABLE public.recipeportaldb_utensilrecipe OWNER TO chrispnguyen;

--
-- Name: recipeportaldb_utensilrecipe_id_seq; Type: SEQUENCE; Schema: public; Owner: chrispnguyen
--

CREATE SEQUENCE public.recipeportaldb_utensilrecipe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipeportaldb_utensilrecipe_id_seq OWNER TO chrispnguyen;

--
-- Name: recipeportaldb_utensilrecipe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chrispnguyen
--

ALTER SEQUENCE public.recipeportaldb_utensilrecipe_id_seq OWNED BY public.recipeportaldb_utensilrecipe.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: recipeportaldb_categoryrecipe id; Type: DEFAULT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_categoryrecipe ALTER COLUMN id SET DEFAULT nextval('public.recipeportaldb_categoryrecipe_id_seq'::regclass);


--
-- Name: recipeportaldb_ingredientrecipe id; Type: DEFAULT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_ingredientrecipe ALTER COLUMN id SET DEFAULT nextval('public.recipeportaldb_ingredientrecipe_id_seq'::regclass);


--
-- Name: recipeportaldb_utensilrecipe id; Type: DEFAULT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_utensilrecipe ALTER COLUMN id SET DEFAULT nextval('public.recipeportaldb_utensilrecipe_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
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
25	Can add recipe	7	add_recipe
26	Can change recipe	7	change_recipe
27	Can delete recipe	7	delete_recipe
28	Can view recipe	7	view_recipe
29	Can add category	8	add_category
30	Can change category	8	change_category
31	Can delete category	8	delete_category
32	Can view category	8	view_category
33	Can add ingredient	9	add_ingredient
34	Can change ingredient	9	change_ingredient
35	Can delete ingredient	9	delete_ingredient
36	Can view ingredient	9	view_ingredient
37	Can add utensil	10	add_utensil
38	Can change utensil	10	change_utensil
39	Can delete utensil	10	delete_utensil
40	Can view utensil	10	view_utensil
41	Can add ingredient nutrition	11	add_ingredientnutrition
42	Can change ingredient nutrition	11	change_ingredientnutrition
43	Can delete ingredient nutrition	11	delete_ingredientnutrition
44	Can view ingredient nutrition	11	view_ingredientnutrition
45	Can add utensil recipe	12	add_utensilrecipe
46	Can change utensil recipe	12	change_utensilrecipe
47	Can delete utensil recipe	12	delete_utensilrecipe
48	Can view utensil recipe	12	view_utensilrecipe
49	Can add ingredient recipe	13	add_ingredientrecipe
50	Can change ingredient recipe	13	change_ingredientrecipe
51	Can delete ingredient recipe	13	delete_ingredientrecipe
52	Can view ingredient recipe	13	view_ingredientrecipe
53	Can add category recipe	14	add_categoryrecipe
54	Can change category recipe	14	change_categoryrecipe
55	Can delete category recipe	14	delete_categoryrecipe
56	Can view category recipe	14	view_categoryrecipe
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$JpWyCM4YgobIxea6MLYu3a$dCskPoFqbQ9n2u2dpaQ9FtMu1QfHys2Bq1e5bHYx3TQ=	2022-04-21 21:02:03.075973-07	t	admin			chrisphannguyen@gmail.com	t	t	2022-03-22 22:20:48.100078-07
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-03-22 22:21:45.524004-07	1	Recipe object (1)	1	[{"added": {}}]	7	1
2	2022-03-22 22:21:57.535603-07	2	Recipe object (2)	1	[{"added": {}}]	7	1
3	2022-03-23 15:41:01.11635-07	1	Category object (1)	1	[{"added": {}}]	8	1
4	2022-03-23 15:41:14.752776-07	1	CategoryRecipe object (1)	1	[{"added": {}}]	14	1
5	2022-03-23 15:41:30.137544-07	2	CategoryRecipe object (2)	1	[{"added": {}}]	14	1
6	2022-03-23 15:42:58.964612-07	1	Utensil object (1)	1	[{"added": {}}]	10	1
7	2022-03-23 15:43:26.242702-07	1	UtensilRecipe object (1)	1	[{"added": {}}]	12	1
8	2022-03-23 15:43:43.899503-07	1	Ingredient object (1)	1	[{"added": {}}]	9	1
9	2022-03-23 15:43:55.543292-07	2	Ingredient object (2)	1	[{"added": {}}]	9	1
10	2022-03-23 15:44:02.997709-07	3	Ingredient object (3)	1	[{"added": {}}]	9	1
11	2022-03-23 15:44:34.840971-07	1	IngredientRecipe object (1)	1	[{"added": {}}]	13	1
12	2022-03-23 15:44:55.131847-07	2	IngredientRecipe object (2)	1	[{"added": {}}]	13	1
13	2022-03-23 15:45:04.327093-07	3	IngredientRecipe object (3)	1	[{"added": {}}]	13	1
14	2022-03-23 15:46:21.616146-07	1	IngredientNutrition object (1)	1	[{"added": {}}]	11	1
15	2022-03-24 17:03:28.649529-07	2	Category object (2)	2	[{"changed": {"fields": ["Name"]}}]	8	1
16	2022-03-24 17:03:40.400924-07	3	Category object (3)	1	[{"added": {}}]	8	1
17	2022-03-24 17:03:45.904714-07	4	Category object (4)	1	[{"added": {}}]	8	1
18	2022-03-24 17:07:23.267703-07	1	Recipe object (1)	2	[{"changed": {"fields": ["Steps"]}}]	7	1
19	2022-03-24 17:07:32.834517-07	2	Recipe object (2)	2	[{"changed": {"fields": ["Steps"]}}]	7	1
20	2022-03-24 17:07:57.458427-07	3	Recipe object (3)	1	[{"added": {}}]	7	1
21	2022-03-24 17:09:01.205356-07	4	Recipe object (4)	1	[{"added": {}}]	7	1
22	2022-03-24 17:09:47.037047-07	5	Recipe object (5)	1	[{"added": {}}]	7	1
23	2022-03-24 17:10:29.300189-07	6	Recipe object (6)	1	[{"added": {}}]	7	1
24	2022-03-24 17:11:17.285722-07	7	Recipe object (7)	1	[{"added": {}}]	7	1
25	2022-03-24 17:11:45.281384-07	8	Recipe object (8)	1	[{"added": {}}]	7	1
26	2022-03-24 17:12:06.743845-07	9	Recipe object (9)	1	[{"added": {}}]	7	1
27	2022-03-24 17:12:53.862425-07	3	CategoryRecipe object (3)	1	[{"added": {}}]	14	1
28	2022-03-24 17:13:01.748737-07	4	CategoryRecipe object (4)	1	[{"added": {}}]	14	1
29	2022-03-24 17:13:07.438506-07	5	CategoryRecipe object (5)	1	[{"added": {}}]	14	1
30	2022-03-24 17:13:12.064239-07	6	CategoryRecipe object (6)	1	[{"added": {}}]	14	1
31	2022-03-24 17:13:16.886357-07	7	CategoryRecipe object (7)	1	[{"added": {}}]	14	1
32	2022-03-24 17:13:23.209718-07	8	CategoryRecipe object (8)	1	[{"added": {}}]	14	1
33	2022-03-24 17:13:28.286865-07	9	CategoryRecipe object (9)	1	[{"added": {}}]	14	1
34	2022-03-24 17:13:41.655291-07	1	Utensil object (1)	2	[]	10	1
35	2022-03-24 17:13:46.459449-07	2	Utensil object (2)	1	[{"added": {}}]	10	1
36	2022-03-24 17:13:50.223519-07	3	Utensil object (3)	1	[{"added": {}}]	10	1
37	2022-03-24 17:13:56.854686-07	4	Utensil object (4)	1	[{"added": {}}]	10	1
38	2022-03-24 17:14:03.226636-07	5	Utensil object (5)	1	[{"added": {}}]	10	1
39	2022-03-24 17:14:10.188416-07	6	Utensil object (6)	1	[{"added": {}}]	10	1
40	2022-03-24 17:14:18.669595-07	7	Utensil object (7)	1	[{"added": {}}]	10	1
41	2022-03-24 17:14:29.880183-07	1	UtensilRecipe object (1)	2	[]	12	1
42	2022-03-24 17:14:40.68404-07	2	UtensilRecipe object (2)	1	[{"added": {}}]	12	1
43	2022-03-24 17:14:46.394508-07	3	UtensilRecipe object (3)	1	[{"added": {}}]	12	1
44	2022-03-24 17:14:50.188304-07	4	UtensilRecipe object (4)	1	[{"added": {}}]	12	1
45	2022-03-24 17:14:54.919873-07	5	UtensilRecipe object (5)	1	[{"added": {}}]	12	1
46	2022-03-24 17:14:58.799239-07	6	UtensilRecipe object (6)	1	[{"added": {}}]	12	1
47	2022-03-24 17:15:03.696323-07	7	UtensilRecipe object (7)	1	[{"added": {}}]	12	1
48	2022-03-24 17:15:08.855839-07	8	UtensilRecipe object (8)	1	[{"added": {}}]	12	1
49	2022-03-24 17:15:14.193582-07	9	UtensilRecipe object (9)	1	[{"added": {}}]	12	1
50	2022-03-24 17:15:38.120083-07	1	Ingredient object (1)	2	[]	9	1
51	2022-03-24 17:16:05.715902-07	4	Ingredient object (4)	1	[{"added": {}}]	9	1
52	2022-03-24 17:16:16.708267-07	5	Ingredient object (5)	1	[{"added": {}}]	9	1
53	2022-03-24 17:16:22.76342-07	6	Ingredient object (6)	1	[{"added": {}}]	9	1
54	2022-03-24 17:16:31.820288-07	7	Ingredient object (7)	1	[{"added": {}}]	9	1
55	2022-03-24 17:16:37.338353-07	8	Ingredient object (8)	1	[{"added": {}}]	9	1
56	2022-03-24 17:16:51.357435-07	9	Ingredient object (9)	1	[{"added": {}}]	9	1
57	2022-03-24 17:16:59.239313-07	10	Ingredient object (10)	1	[{"added": {}}]	9	1
58	2022-03-24 17:17:04.969187-07	11	Ingredient object (11)	1	[{"added": {}}]	9	1
59	2022-03-24 17:17:12.272341-07	12	Ingredient object (12)	1	[{"added": {}}]	9	1
60	2022-03-24 17:17:20.666036-07	13	Ingredient object (13)	1	[{"added": {}}]	9	1
61	2022-03-24 17:17:26.575971-07	14	Ingredient object (14)	1	[{"added": {}}]	9	1
62	2022-03-24 17:17:32.565444-07	15	Ingredient object (15)	1	[{"added": {}}]	9	1
63	2022-03-24 17:17:40.258908-07	16	Ingredient object (16)	1	[{"added": {}}]	9	1
64	2022-03-24 17:17:49.315608-07	17	Ingredient object (17)	1	[{"added": {}}]	9	1
65	2022-03-24 17:17:57.568577-07	18	Ingredient object (18)	1	[{"added": {}}]	9	1
66	2022-03-24 17:18:15.814265-07	19	Ingredient object (19)	1	[{"added": {}}]	9	1
67	2022-03-24 17:18:27.98741-07	20	Ingredient object (20)	1	[{"added": {}}]	9	1
68	2022-03-24 17:20:24.457521-07	3	IngredientRecipe object (3)	2	[{"changed": {"fields": ["Ingredientid", "Recipeid", "Amount"]}}]	13	1
69	2022-03-24 17:20:43.957348-07	4	IngredientRecipe object (4)	1	[{"added": {}}]	13	1
70	2022-03-24 17:20:53.348639-07	5	IngredientRecipe object (5)	1	[{"added": {}}]	13	1
71	2022-03-24 17:21:01.726025-07	6	IngredientRecipe object (6)	1	[{"added": {}}]	13	1
72	2022-03-24 17:21:10.089998-07	7	IngredientRecipe object (7)	1	[{"added": {}}]	13	1
73	2022-03-24 17:21:20.801735-07	8	IngredientRecipe object (8)	1	[{"added": {}}]	13	1
74	2022-03-24 17:21:34.959262-07	9	IngredientRecipe object (9)	1	[{"added": {}}]	13	1
75	2022-03-24 17:21:49.872198-07	10	IngredientRecipe object (10)	1	[{"added": {}}]	13	1
76	2022-03-24 17:22:12.652077-07	11	IngredientRecipe object (11)	1	[{"added": {}}]	13	1
77	2022-03-24 17:22:29.526553-07	12	IngredientRecipe object (12)	1	[{"added": {}}]	13	1
78	2022-03-24 17:22:50.971207-07	13	IngredientRecipe object (13)	1	[{"added": {}}]	13	1
79	2022-03-24 17:23:01.723444-07	14	IngredientRecipe object (14)	1	[{"added": {}}]	13	1
80	2022-03-24 17:23:14.75661-07	15	IngredientRecipe object (15)	1	[{"added": {}}]	13	1
81	2022-03-24 17:24:13.403049-07	16	IngredientRecipe object (16)	1	[{"added": {}}]	13	1
82	2022-03-24 17:24:25.002027-07	17	IngredientRecipe object (17)	1	[{"added": {}}]	13	1
83	2022-03-24 17:24:35.857515-07	18	IngredientRecipe object (18)	1	[{"added": {}}]	13	1
84	2022-03-24 17:24:49.42409-07	19	IngredientRecipe object (19)	1	[{"added": {}}]	13	1
85	2022-03-24 17:24:59.257126-07	20	IngredientRecipe object (20)	1	[{"added": {}}]	13	1
86	2022-03-24 17:25:11.262542-07	21	IngredientRecipe object (21)	1	[{"added": {}}]	13	1
87	2022-03-24 17:25:21.590707-07	22	IngredientRecipe object (22)	1	[{"added": {}}]	13	1
88	2022-03-24 17:25:33.388798-07	23	IngredientRecipe object (23)	1	[{"added": {}}]	13	1
89	2022-03-24 17:25:42.066204-07	24	IngredientRecipe object (24)	1	[{"added": {}}]	13	1
90	2022-03-24 17:25:56.53591-07	25	IngredientRecipe object (25)	1	[{"added": {}}]	13	1
91	2022-03-24 17:26:43.769406-07	1	IngredientNutrition object (1)	2	[{"changed": {"fields": ["Portionsize"]}}]	11	1
92	2022-03-24 17:27:05.038281-07	2	IngredientNutrition object (2)	1	[{"added": {}}]	11	1
93	2022-03-24 17:27:22.081442-07	3	IngredientNutrition object (3)	1	[{"added": {}}]	11	1
94	2022-03-24 17:29:31.419016-07	4	IngredientNutrition object (4)	1	[{"added": {}}]	11	1
95	2022-03-24 17:29:47.196404-07	5	IngredientNutrition object (5)	1	[{"added": {}}]	11	1
96	2022-03-24 17:30:12.112436-07	6	IngredientNutrition object (6)	1	[{"added": {}}]	11	1
97	2022-03-24 17:30:35.475508-07	7	IngredientNutrition object (7)	1	[{"added": {}}]	11	1
98	2022-03-24 17:30:50.527109-07	8	IngredientNutrition object (8)	1	[{"added": {}}]	11	1
99	2022-03-24 17:31:05.964759-07	9	IngredientNutrition object (9)	1	[{"added": {}}]	11	1
100	2022-03-24 17:31:28.389716-07	10	IngredientNutrition object (10)	1	[{"added": {}}]	11	1
101	2022-03-24 17:31:41.629304-07	11	IngredientNutrition object (11)	1	[{"added": {}}]	11	1
102	2022-03-24 17:31:57.167876-07	12	IngredientNutrition object (12)	1	[{"added": {}}]	11	1
103	2022-03-24 17:32:15.949975-07	13	IngredientNutrition object (13)	1	[{"added": {}}]	11	1
104	2022-03-24 17:32:31.50635-07	14	IngredientNutrition object (14)	1	[{"added": {}}]	11	1
105	2022-03-24 17:32:46.141687-07	15	IngredientNutrition object (15)	1	[{"added": {}}]	11	1
106	2022-03-24 17:33:03.022288-07	16	IngredientNutrition object (16)	1	[{"added": {}}]	11	1
107	2022-03-24 17:33:25.247774-07	17	IngredientNutrition object (17)	1	[{"added": {}}]	11	1
108	2022-03-24 17:33:40.590149-07	18	IngredientNutrition object (18)	1	[{"added": {}}]	11	1
109	2022-03-24 17:33:56.10975-07	19	IngredientNutrition object (19)	1	[{"added": {}}]	11	1
110	2022-03-24 17:34:08.628346-07	20	IngredientNutrition object (20)	1	[{"added": {}}]	11	1
111	2022-03-24 17:46:02.30112-07	4	Recipe object (4)	2	[{"changed": {"fields": ["Steps"]}}]	7	1
112	2022-03-24 17:46:10.522996-07	5	Recipe object (5)	2	[{"changed": {"fields": ["Steps"]}}]	7	1
113	2022-03-24 17:46:16.645873-07	6	Recipe object (6)	2	[{"changed": {"fields": ["Steps"]}}]	7	1
114	2022-03-24 17:46:22.553162-07	7	Recipe object (7)	2	[{"changed": {"fields": ["Steps"]}}]	7	1
115	2022-03-24 17:46:26.647642-07	8	Recipe object (8)	2	[]	7	1
116	2022-03-24 18:07:55.30231-07	1	Recipe object (1)	2	[{"changed": {"fields": ["Steps"]}}]	7	1
117	2022-03-24 18:08:00.375634-07	2	Recipe object (2)	2	[{"changed": {"fields": ["Steps"]}}]	7	1
118	2022-03-24 18:08:09.658168-07	3	Recipe object (3)	2	[{"changed": {"fields": ["Steps"]}}]	7	1
119	2022-03-24 18:08:26.585723-07	4	Recipe object (4)	2	[{"changed": {"fields": ["Steps"]}}]	7	1
120	2022-03-24 18:08:42.927904-07	5	Recipe object (5)	2	[{"changed": {"fields": ["Steps"]}}]	7	1
121	2022-03-24 18:08:55.53304-07	6	Recipe object (6)	2	[{"changed": {"fields": ["Steps"]}}]	7	1
122	2022-03-24 18:09:09.490762-07	7	Recipe object (7)	2	[{"changed": {"fields": ["Steps"]}}]	7	1
123	2022-03-24 18:09:14.829156-07	9	Recipe object (9)	2	[{"changed": {"fields": ["Steps"]}}]	7	1
124	2022-03-24 18:09:45.150914-07	8	Recipe object (8)	2	[{"changed": {"fields": ["Steps"]}}]	7	1
125	2022-03-27 15:24:12.524309-07	20	Ingredient object (20)	3		9	1
126	2022-03-27 15:26:37.378956-07	20	Ingredient object (20)	1	[{"added": {}}]	9	1
127	2022-03-27 15:27:00.863103-07	20	IngredientNutrition object (20)	1	[{"added": {}}]	11	1
128	2022-03-27 15:27:26.565165-07	20	Ingredient object (20)	3		9	1
129	2022-03-27 15:27:52.217929-07	20	Ingredient object (20)	1	[{"added": {}}]	9	1
130	2022-03-27 15:28:06.202838-07	20	IngredientNutrition object (20)	1	[{"added": {}}]	11	1
131	2022-04-21 22:12:41.827723-07	10	Recipe object (10)	1	[{"added": {}}]	7	1
132	2022-04-24 20:14:48.954055-07	5	Category object (5)	1	[{"added": {}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	recipeportaldb	recipe
8	recipeportaldb	category
9	recipeportaldb	ingredient
10	recipeportaldb	utensil
11	recipeportaldb	ingredientnutrition
12	recipeportaldb	utensilrecipe
13	recipeportaldb	ingredientrecipe
14	recipeportaldb	categoryrecipe
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-03-22 22:19:40.920456-07
2	auth	0001_initial	2022-03-22 22:19:41.022581-07
3	admin	0001_initial	2022-03-22 22:19:41.04589-07
4	admin	0002_logentry_remove_auto_add	2022-03-22 22:19:41.052046-07
5	admin	0003_logentry_add_action_flag_choices	2022-03-22 22:19:41.057942-07
6	contenttypes	0002_remove_content_type_name	2022-03-22 22:19:41.070867-07
7	auth	0002_alter_permission_name_max_length	2022-03-22 22:19:41.077467-07
8	auth	0003_alter_user_email_max_length	2022-03-22 22:19:41.084386-07
9	auth	0004_alter_user_username_opts	2022-03-22 22:19:41.093011-07
10	auth	0005_alter_user_last_login_null	2022-03-22 22:19:41.100222-07
11	auth	0006_require_contenttypes_0002	2022-03-22 22:19:41.10217-07
12	auth	0007_alter_validators_add_error_messages	2022-03-22 22:19:41.108145-07
13	auth	0008_alter_user_username_max_length	2022-03-22 22:19:41.119378-07
14	auth	0009_alter_user_last_name_max_length	2022-03-22 22:19:41.128447-07
15	auth	0010_alter_group_name_max_length	2022-03-22 22:19:41.136461-07
16	auth	0011_update_proxy_permissions	2022-03-22 22:19:41.14248-07
17	auth	0012_alter_user_first_name_max_length	2022-03-22 22:19:41.151175-07
18	recipeportaldb	0001_initial	2022-03-22 22:19:41.162262-07
19	recipeportaldb	0002_category	2022-03-22 22:19:41.171417-07
20	recipeportaldb	0003_ingredient_utensil_remove_category_id_and_more	2022-03-22 22:19:41.269389-07
21	sessions	0001_initial	2022-03-22 22:19:41.286472-07
22	recipeportaldb	0004_rename_categoryid_category_categoryid_and_more	2022-03-23 16:12:51.49931-07
23	recipeportaldb	0005_rename_categoryid_categoryrecipe_category_id_and_more	2022-03-23 16:22:11.139634-07
24	recipeportaldb	0006_rename_category_id_categoryrecipe_categoryid_and_more	2022-03-23 16:23:16.829567-07
25	recipeportaldb	0007_rename_foodtype_ingredient_type_and_more	2022-03-25 19:52:43.048053-07
26	recipeportaldb	0008_alter_ingredientnutrition_ingredientid	2022-03-25 21:16:20.436559-07
27	recipeportaldb	0009_alter_ingredientnutrition_ingredientid_and_more	2022-03-25 21:17:43.157957-07
28	recipeportaldb	0008_alter_ingredientnutrition_unique_together	2022-03-25 21:32:43.646556-07
29	recipeportaldb	0009_alter_ingredientnutrition_unique_together	2022-03-25 21:34:49.653908-07
30	recipeportaldb	0008_alter_ingredientnutrition_ingredientid_and_more	2022-03-25 21:42:16.571922-07
31	recipeportaldb	0005_alter_ingredientrecipe_ingredientid_and_more	2022-03-25 22:04:50.966534-07
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
brcwzl0839mwt0b818daib0o0yq5sz2i	.eJxVjMEOwiAQRP-FsyFAoUWP3v0GssvuStXQpLQn47_bJj3obTLvzbxVgnUpaW08p5HURVl1-u0Q8pPrDugB9T7pPNVlHlHvij5o07eJ-HU93L-DAq1sa0OevQ0GWAhDlr5DGexgmYQETA4Rt-xDjt4bFnEB3dkaiIgud9CrzxcTETkJ:1nWtQc:gkEbnC08aG29bpb7NZ4NmTIXQfcVO7LAj5S4MvpUa3o	2022-04-05 22:21:02.55419-07
lav980xkzdhtm8xbtetg44tgstc8u3p1	.eJxVjMEOwiAQRP-FsyFAoUWP3v0GssvuStXQpLQn47_bJj3obTLvzbxVgnUpaW08p5HURVl1-u0Q8pPrDugB9T7pPNVlHlHvij5o07eJ-HU93L-DAq1sa0OevQ0GWAhDlr5DGexgmYQETA4Rt-xDjt4bFnEB3dkaiIgud9CrzxcTETkJ:1nhkUd:JT-Oi5T6gbNRtaPBzAV5Yy7EMMgWYK92MvjI9ajKkAg	2022-05-05 21:02:03.081202-07
\.


--
-- Data for Name: recipeportaldb_category; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.recipeportaldb_category (categoryid, name) FROM stdin;
1	American
2	Mexican
3	Italian
4	Asian
\.


--
-- Data for Name: recipeportaldb_categoryrecipe; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.recipeportaldb_categoryrecipe (id, categoryid_id, recipeid_id) FROM stdin;
1	1	1
2	1	2
3	2	7
4	1	3
5	3	4
6	1	5
7	1	6
8	4	8
9	4	9
\.


--
-- Data for Name: recipeportaldb_ingredient; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.recipeportaldb_ingredient (ingredientid, name, type) FROM stdin;
1	Cheese	American
4	Tomato	Red
5	Ground Beef	7% Fat
6	Lettuce	Romane
7	Hamburger Bun	White Bread
8	Salt	Kosher
9	Pre-made Box	Whichever kind you want
10	Milk	Any percent
11	Water	N/A
12	Paste	Your Choice
13	Tomato Sauce	N/A
14	Pepper	N/A
15	Chicken	Wings
16	Hot Sauce	Any brand
17	Tortillas	Flour or Corn
18	Steak	Top Sirlion
19	Broccoli	N/A
2	Pickles	Dill
3	Potato	Yukon Gold
20	Corn Starch	N/A
21	Strawberry Milk	Any percent
\.


--
-- Data for Name: recipeportaldb_ingredientnutrition; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.recipeportaldb_ingredientnutrition (nutritionid, portionsize, calories, fat, protein, sodium, carbs, ingredientid_id) FROM stdin;
1	13	5	9	4	10	45	1
2	12	7	4	1	13	48	2
3	9	1	19	8	15	35	3
4	11	1	2	9	13	56	4
5	8	1	3	5	14	54	5
6	7	9	2	4	13	35	6
7	12	6	8	2	14	47	7
8	9	5	7	3	5	24	8
9	10	6	2	3	2	53	9
10	9	3	4	5	11	32	10
11	8	2	5	3	11	46	11
12	10	2	5	6	13	42	12
13	10.4	2	6	3	11	47	13
14	4.5	1	3	6	14	47	14
15	10	8	9	4	10	45	15
16	14.5	7	2	6	5	25	16
17	13	7	9	1	14	35	17
18	10.1	6	2	6	8	37	18
19	6.1	6	2	6	15	25	19
20	3	3	3	3	3	3	20
\.


--
-- Data for Name: recipeportaldb_ingredientrecipe; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.recipeportaldb_ingredientrecipe (id, amount, ingredientid_id, recipeid_id) FROM stdin;
1	One Slice	1	1
2	2	2	1
3	1 Pound	5	1
4	1 leaf	6	1
5	2 Buns	7	1
6	2	3	2
7	2	8	2
8	1 Pound	5	3
9	1 Box	9	3
10	1 Cup	10	3
11	1 and quarter cup	11	3
12	1 Pound	5	4
13	To liking	8	4
14	1 Box	12	4
15	1 Jar	13	4
16	To liking	14	4
17	1 Bag	15	5
18	Depends on how saucy	16	5
19	However many you want cup up	4	7
20	1 Pound ground up	5	7
21	To liking	14	7
22	To liking	8	7
23	However many tacos you want	17	7
24	1	18	8
25	However much you want	19	8
\.


--
-- Data for Name: recipeportaldb_recipe; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.recipeportaldb_recipe (recipeid, description, steps, name) FROM stdin;
3	Quick meal for dinner	Read box instructions	Hamburger Helper
4	Feeds 2!	1. Cook pasta 2. Cook choice of meat 3. Season	Spaghetti
5	Pick your own sauce!	1. Make batter 2. Roll wings in batter 3. Throw in fryer until cooked	Wings
6	Takes a while to cook, but it's worth it!	1. Season pork 2. Cook in slow cooker until cooked	Pulled Pork
7	Your choice of soft or hard shells!	1. Prep veggies 2. Cook choice of meat (or not meat)	Tacos
9	Yummy	Cook food	Chow Mein
8	Yummy	Cook food	Beef and Broccoli
1	Quick tasty burger!	1. Season meat 2. Cook each side of meat for 5 minutes	Burger
2	Good side for a burger!	1. Season fries 2. Cook in fryer until done to liking	Fries
10	Lots of testing here	1) Test 2) More Tests	Testing
\.


--
-- Data for Name: recipeportaldb_utensil; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.recipeportaldb_utensil (utensilid, name) FROM stdin;
1	Spatula
2	Tongs
3	Ladle
4	Cheese Grater
5	Measuring Cup
6	Pizza Cutter
7	Can Opener
\.


--
-- Data for Name: recipeportaldb_utensilrecipe; Type: TABLE DATA; Schema: public; Owner: chrispnguyen
--

COPY public.recipeportaldb_utensilrecipe (id, recipeid_id, utensilid_id) FROM stdin;
1	1	1
2	3	1
3	3	5
4	4	1
5	4	4
6	5	2
7	6	2
8	7	4
9	7	2
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chrispnguyen
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chrispnguyen
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chrispnguyen
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chrispnguyen
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chrispnguyen
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chrispnguyen
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chrispnguyen
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 132, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chrispnguyen
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chrispnguyen
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- Name: recipeportaldb_categoryrecipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chrispnguyen
--

SELECT pg_catalog.setval('public.recipeportaldb_categoryrecipe_id_seq', 9, true);


--
-- Name: recipeportaldb_ingredientrecipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chrispnguyen
--

SELECT pg_catalog.setval('public.recipeportaldb_ingredientrecipe_id_seq', 25, true);


--
-- Name: recipeportaldb_utensilrecipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chrispnguyen
--

SELECT pg_catalog.setval('public.recipeportaldb_utensilrecipe_id_seq', 9, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: recipeportaldb_category recipeportaldb_category_categoryID_1cbad2a0_pk; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_category
    ADD CONSTRAINT "recipeportaldb_category_categoryID_1cbad2a0_pk" PRIMARY KEY (categoryid);


--
-- Name: recipeportaldb_category recipeportaldb_category_categoryID_1cbad2a0_uniq; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_category
    ADD CONSTRAINT "recipeportaldb_category_categoryID_1cbad2a0_uniq" UNIQUE (categoryid);


--
-- Name: recipeportaldb_categoryrecipe recipeportaldb_categoryr__categoryID_id__recipeID_7d7b49da_uniq; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_categoryrecipe
    ADD CONSTRAINT "recipeportaldb_categoryr__categoryID_id__recipeID_7d7b49da_uniq" UNIQUE (categoryid_id, recipeid_id);


--
-- Name: recipeportaldb_categoryrecipe recipeportaldb_categoryrecipe_pkey; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_categoryrecipe
    ADD CONSTRAINT recipeportaldb_categoryrecipe_pkey PRIMARY KEY (id);


--
-- Name: recipeportaldb_ingredientrecipe recipeportaldb_ingredien__ingredientID_id__recipe_39d9b67e_uniq; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_ingredientrecipe
    ADD CONSTRAINT "recipeportaldb_ingredien__ingredientID_id__recipe_39d9b67e_uniq" UNIQUE (ingredientid_id, recipeid_id);


--
-- Name: recipeportaldb_ingredientnutrition recipeportaldb_ingredien_ingredientid_id_dca8a48f_uniq; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_ingredientnutrition
    ADD CONSTRAINT recipeportaldb_ingredien_ingredientid_id_dca8a48f_uniq UNIQUE (ingredientid_id);


--
-- Name: recipeportaldb_ingredientnutrition recipeportaldb_ingredien_nutritionid_ingredientid_02a2a853_uniq; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_ingredientnutrition
    ADD CONSTRAINT recipeportaldb_ingredien_nutritionid_ingredientid_02a2a853_uniq UNIQUE (nutritionid, ingredientid_id);


--
-- Name: recipeportaldb_ingredient recipeportaldb_ingredient_pkey; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_ingredient
    ADD CONSTRAINT recipeportaldb_ingredient_pkey PRIMARY KEY (ingredientid);


--
-- Name: recipeportaldb_ingredientnutrition recipeportaldb_ingredientnutrition_nutritionid_5c5d6656_pk; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_ingredientnutrition
    ADD CONSTRAINT recipeportaldb_ingredientnutrition_nutritionid_5c5d6656_pk PRIMARY KEY (nutritionid);


--
-- Name: recipeportaldb_ingredientrecipe recipeportaldb_ingredientrecipe_pkey; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_ingredientrecipe
    ADD CONSTRAINT recipeportaldb_ingredientrecipe_pkey PRIMARY KEY (id);


--
-- Name: recipeportaldb_recipe recipeportaldb_recipe_recipeID_a240fbc6_pk; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_recipe
    ADD CONSTRAINT "recipeportaldb_recipe_recipeID_a240fbc6_pk" PRIMARY KEY (recipeid);


--
-- Name: recipeportaldb_recipe recipeportaldb_recipe_recipeID_a240fbc6_uniq; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_recipe
    ADD CONSTRAINT "recipeportaldb_recipe_recipeID_a240fbc6_uniq" UNIQUE (recipeid);


--
-- Name: recipeportaldb_utensil recipeportaldb_utensil_pkey; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_utensil
    ADD CONSTRAINT recipeportaldb_utensil_pkey PRIMARY KEY (utensilid);


--
-- Name: recipeportaldb_utensilrecipe recipeportaldb_utensilre__utensilID_id__recipeID__f12b2611_uniq; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_utensilrecipe
    ADD CONSTRAINT "recipeportaldb_utensilre__utensilID_id__recipeID__f12b2611_uniq" UNIQUE (utensilid_id, recipeid_id);


--
-- Name: recipeportaldb_utensilrecipe recipeportaldb_utensilrecipe_pkey; Type: CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_utensilrecipe
    ADD CONSTRAINT recipeportaldb_utensilrecipe_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: recipeportaldb_categoryrecipe__categoryID_id_4879bfa6; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX "recipeportaldb_categoryrecipe__categoryID_id_4879bfa6" ON public.recipeportaldb_categoryrecipe USING btree (categoryid_id);


--
-- Name: recipeportaldb_categoryrecipe__recipeID_id_12d78058; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX "recipeportaldb_categoryrecipe__recipeID_id_12d78058" ON public.recipeportaldb_categoryrecipe USING btree (recipeid_id);


--
-- Name: recipeportaldb_ingredientnutrition__ingredientID_id_7778714d; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX "recipeportaldb_ingredientnutrition__ingredientID_id_7778714d" ON public.recipeportaldb_ingredientnutrition USING btree (ingredientid_id);


--
-- Name: recipeportaldb_ingredientnutrition_ingredientid_id_dca8a48f; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX recipeportaldb_ingredientnutrition_ingredientid_id_dca8a48f ON public.recipeportaldb_ingredientnutrition USING btree (ingredientid_id);


--
-- Name: recipeportaldb_ingredientrecipe__ingredientID_id_fcc84aa1; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX "recipeportaldb_ingredientrecipe__ingredientID_id_fcc84aa1" ON public.recipeportaldb_ingredientrecipe USING btree (ingredientid_id);


--
-- Name: recipeportaldb_ingredientrecipe__recipeID_id_d36ecb28; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX "recipeportaldb_ingredientrecipe__recipeID_id_d36ecb28" ON public.recipeportaldb_ingredientrecipe USING btree (recipeid_id);


--
-- Name: recipeportaldb_utensilrecipe__recipeID_id_d602662d; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX "recipeportaldb_utensilrecipe__recipeID_id_d602662d" ON public.recipeportaldb_utensilrecipe USING btree (recipeid_id);


--
-- Name: recipeportaldb_utensilrecipe__utensilID_id_6b5a9e64; Type: INDEX; Schema: public; Owner: chrispnguyen
--

CREATE INDEX "recipeportaldb_utensilrecipe__utensilID_id_6b5a9e64" ON public.recipeportaldb_utensilrecipe USING btree (utensilid_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipeportaldb_categoryrecipe recipeportaldb_categ_categoryid_id_2eaf1fda_fk_recipepor; Type: FK CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_categoryrecipe
    ADD CONSTRAINT recipeportaldb_categ_categoryid_id_2eaf1fda_fk_recipepor FOREIGN KEY (categoryid_id) REFERENCES public.recipeportaldb_category(categoryid) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipeportaldb_categoryrecipe recipeportaldb_categ_recipeid_id_20610df2_fk_recipepor; Type: FK CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_categoryrecipe
    ADD CONSTRAINT recipeportaldb_categ_recipeid_id_20610df2_fk_recipepor FOREIGN KEY (recipeid_id) REFERENCES public.recipeportaldb_recipe(recipeid) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipeportaldb_ingredientrecipe recipeportaldb_ingre_ingredientid_id_5e0ccdcb_fk_recipepor; Type: FK CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_ingredientrecipe
    ADD CONSTRAINT recipeportaldb_ingre_ingredientid_id_5e0ccdcb_fk_recipepor FOREIGN KEY (ingredientid_id) REFERENCES public.recipeportaldb_ingredient(ingredientid) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipeportaldb_ingredientnutrition recipeportaldb_ingre_ingredientid_id_dca8a48f_fk_recipepor; Type: FK CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_ingredientnutrition
    ADD CONSTRAINT recipeportaldb_ingre_ingredientid_id_dca8a48f_fk_recipepor FOREIGN KEY (ingredientid_id) REFERENCES public.recipeportaldb_ingredient(ingredientid) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipeportaldb_ingredientrecipe recipeportaldb_ingre_recipeid_id_f2b356ad_fk_recipepor; Type: FK CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_ingredientrecipe
    ADD CONSTRAINT recipeportaldb_ingre_recipeid_id_f2b356ad_fk_recipepor FOREIGN KEY (recipeid_id) REFERENCES public.recipeportaldb_recipe(recipeid) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipeportaldb_utensilrecipe recipeportaldb_utens_recipeid_id_aa0300bc_fk_recipepor; Type: FK CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_utensilrecipe
    ADD CONSTRAINT recipeportaldb_utens_recipeid_id_aa0300bc_fk_recipepor FOREIGN KEY (recipeid_id) REFERENCES public.recipeportaldb_recipe(recipeid) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipeportaldb_utensilrecipe recipeportaldb_utens_utensilid_id_0dca57a7_fk_recipepor; Type: FK CONSTRAINT; Schema: public; Owner: chrispnguyen
--

ALTER TABLE ONLY public.recipeportaldb_utensilrecipe
    ADD CONSTRAINT recipeportaldb_utens_utensilid_id_0dca57a7_fk_recipepor FOREIGN KEY (utensilid_id) REFERENCES public.recipeportaldb_utensil(utensilid) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

