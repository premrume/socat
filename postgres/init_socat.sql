--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Debian 11.5-1.pgdg90+1)
-- Dumped by pg_dump version 11.3

-- Started on 2019-08-28 19:06:18 UTC

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

SET default_with_oids = false;

--
-- TOC entry 203 (class 1259 OID 16415)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16413)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3147 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 205 (class 1259 OID 16425)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16423)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3148 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 201 (class 1259 OID 16407)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16405)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3149 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 207 (class 1259 OID 16433)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16443)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16441)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3150 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 206 (class 1259 OID 16431)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3151 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 211 (class 1259 OID 16451)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16449)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3152 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 213 (class 1259 OID 16511)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16509)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3153 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 199 (class 1259 OID 16397)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16395)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3154 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 197 (class 1259 OID 16386)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16384)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3155 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 214 (class 1259 OID 16539)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16551)
-- Name: socat_capability; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socat_capability (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    observation text,
    category_id integer NOT NULL,
    survey_id integer NOT NULL
);


ALTER TABLE public.socat_capability OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16549)
-- Name: socat_capability_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socat_capability_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socat_capability_id_seq OWNER TO postgres;

--
-- TOC entry 3156 (class 0 OID 0)
-- Dependencies: 215
-- Name: socat_capability_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socat_capability_id_seq OWNED BY public.socat_capability.id;


--
-- TOC entry 218 (class 1259 OID 16562)
-- Name: socat_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socat_category (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    category character varying(80) NOT NULL,
    observation_help text NOT NULL,
    category_order integer NOT NULL,
    questionnaire_id integer NOT NULL
);


ALTER TABLE public.socat_category OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16560)
-- Name: socat_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socat_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socat_category_id_seq OWNER TO postgres;

--
-- TOC entry 3157 (class 0 OID 0)
-- Dependencies: 217
-- Name: socat_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socat_category_id_seq OWNED BY public.socat_category.id;


--
-- TOC entry 232 (class 1259 OID 16641)
-- Name: socat_category_question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socat_category_question (
    id integer NOT NULL,
    category_id integer NOT NULL,
    question_id integer NOT NULL
);


ALTER TABLE public.socat_category_question OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16639)
-- Name: socat_category_question_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socat_category_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socat_category_question_id_seq OWNER TO postgres;

--
-- TOC entry 3158 (class 0 OID 0)
-- Dependencies: 231
-- Name: socat_category_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socat_category_question_id_seq OWNED BY public.socat_category_question.id;


--
-- TOC entry 220 (class 1259 OID 16573)
-- Name: socat_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socat_item (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    item_order character varying(1) NOT NULL,
    item_weight integer NOT NULL,
    item text NOT NULL,
    question_id integer NOT NULL
);


ALTER TABLE public.socat_item OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16571)
-- Name: socat_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socat_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socat_item_id_seq OWNER TO postgres;

--
-- TOC entry 3159 (class 0 OID 0)
-- Dependencies: 219
-- Name: socat_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socat_item_id_seq OWNED BY public.socat_item.id;


--
-- TOC entry 222 (class 1259 OID 16584)
-- Name: socat_question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socat_question (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    question_order integer NOT NULL,
    question_display character varying(15) NOT NULL,
    question text NOT NULL,
    questionnaire_id integer NOT NULL
);


ALTER TABLE public.socat_question OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16582)
-- Name: socat_question_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socat_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socat_question_id_seq OWNER TO postgres;

--
-- TOC entry 3160 (class 0 OID 0)
-- Dependencies: 221
-- Name: socat_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socat_question_id_seq OWNED BY public.socat_question.id;


--
-- TOC entry 224 (class 1259 OID 16595)
-- Name: socat_questionnaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socat_questionnaire (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    version character varying(6),
    questionnaire character varying(25) NOT NULL,
    description text
);


ALTER TABLE public.socat_questionnaire OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16593)
-- Name: socat_questionnaire_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socat_questionnaire_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socat_questionnaire_id_seq OWNER TO postgres;

--
-- TOC entry 3161 (class 0 OID 0)
-- Dependencies: 223
-- Name: socat_questionnaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socat_questionnaire_id_seq OWNED BY public.socat_questionnaire.id;


--
-- TOC entry 226 (class 1259 OID 16608)
-- Name: socat_response; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socat_response (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    narrative text,
    item_id integer,
    question_id integer NOT NULL,
    survey_id integer NOT NULL
);


ALTER TABLE public.socat_response OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16606)
-- Name: socat_response_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socat_response_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socat_response_id_seq OWNER TO postgres;

--
-- TOC entry 3162 (class 0 OID 0)
-- Dependencies: 225
-- Name: socat_response_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socat_response_id_seq OWNED BY public.socat_response.id;


--
-- TOC entry 228 (class 1259 OID 16619)
-- Name: socat_survey; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socat_survey (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    survey_date timestamp with time zone NOT NULL,
    state character varying(10) NOT NULL,
    name character varying(80) NOT NULL,
    last_name character varying(25) NOT NULL,
    first_name character varying(25) NOT NULL,
    rank character varying(10) NOT NULL,
    "position" character varying(10) NOT NULL,
    reporting character varying(25) NOT NULL,
    prior_aor integer NOT NULL,
    prior_engagement boolean NOT NULL,
    mission_start timestamp with time zone NOT NULL,
    mission_end timestamp with time zone NOT NULL,
    mission_type character varying(10) NOT NULL,
    mission_objective text NOT NULL,
    end_state text NOT NULL,
    gaps text NOT NULL,
    notes text NOT NULL,
    questionnaire_id integer NOT NULL,
    unit_id integer NOT NULL
);


ALTER TABLE public.socat_survey OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16617)
-- Name: socat_survey_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socat_survey_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socat_survey_id_seq OWNER TO postgres;

--
-- TOC entry 3163 (class 0 OID 0)
-- Dependencies: 227
-- Name: socat_survey_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socat_survey_id_seq OWNED BY public.socat_survey.id;


--
-- TOC entry 230 (class 1259 OID 16630)
-- Name: socat_unit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socat_unit (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    unit character varying(80) NOT NULL,
    unit_abbrev character varying(20) NOT NULL,
    unit_description text,
    unit_type character varying(10) NOT NULL,
    engagement character varying(10) NOT NULL,
    engagement_type character varying(65) NOT NULL,
    affiliation character varying(45) NOT NULL,
    region character varying(45) NOT NULL,
    leader_text text NOT NULL,
    country character varying(25) NOT NULL,
    location_1 text NOT NULL,
    mgrs_1 text NOT NULL,
    location_2 text NOT NULL,
    mgrs_2 text NOT NULL,
    location_3 text NOT NULL,
    mgrs_3 text NOT NULL,
    force text NOT NULL,
    weapons text NOT NULL,
    comms text NOT NULL,
    mobility text NOT NULL,
    night_vision text NOT NULL,
    mission text NOT NULL,
    country_objectives text NOT NULL,
    southcom_objectives text NOT NULL,
    embassy_objectives text NOT NULL,
    socsouth_objectives text NOT NULL,
    diagram character varying(120) NOT NULL
);


ALTER TABLE public.socat_unit OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16628)
-- Name: socat_unit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socat_unit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socat_unit_id_seq OWNER TO postgres;

--
-- TOC entry 3164 (class 0 OID 0)
-- Dependencies: 229
-- Name: socat_unit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socat_unit_id_seq OWNED BY public.socat_unit.id;


--
-- TOC entry 2861 (class 2604 OID 16418)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2862 (class 2604 OID 16428)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2860 (class 2604 OID 16410)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2863 (class 2604 OID 16436)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2864 (class 2604 OID 16446)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2865 (class 2604 OID 16454)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2866 (class 2604 OID 16514)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2859 (class 2604 OID 16400)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2858 (class 2604 OID 16389)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2868 (class 2604 OID 16554)
-- Name: socat_capability id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_capability ALTER COLUMN id SET DEFAULT nextval('public.socat_capability_id_seq'::regclass);


--
-- TOC entry 2869 (class 2604 OID 16565)
-- Name: socat_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_category ALTER COLUMN id SET DEFAULT nextval('public.socat_category_id_seq'::regclass);


--
-- TOC entry 2876 (class 2604 OID 16644)
-- Name: socat_category_question id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_category_question ALTER COLUMN id SET DEFAULT nextval('public.socat_category_question_id_seq'::regclass);


--
-- TOC entry 2870 (class 2604 OID 16576)
-- Name: socat_item id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_item ALTER COLUMN id SET DEFAULT nextval('public.socat_item_id_seq'::regclass);


--
-- TOC entry 2871 (class 2604 OID 16587)
-- Name: socat_question id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_question ALTER COLUMN id SET DEFAULT nextval('public.socat_question_id_seq'::regclass);


--
-- TOC entry 2872 (class 2604 OID 16598)
-- Name: socat_questionnaire id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_questionnaire ALTER COLUMN id SET DEFAULT nextval('public.socat_questionnaire_id_seq'::regclass);


--
-- TOC entry 2873 (class 2604 OID 16611)
-- Name: socat_response id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_response ALTER COLUMN id SET DEFAULT nextval('public.socat_response_id_seq'::regclass);


--
-- TOC entry 2874 (class 2604 OID 16622)
-- Name: socat_survey id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_survey ALTER COLUMN id SET DEFAULT nextval('public.socat_survey_id_seq'::regclass);


--
-- TOC entry 2875 (class 2604 OID 16633)
-- Name: socat_unit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_unit ALTER COLUMN id SET DEFAULT nextval('public.socat_unit_id_seq'::regclass);


--
-- TOC entry 3112 (class 0 OID 16415)
-- Dependencies: 203
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3114 (class 0 OID 16425)
-- Dependencies: 205
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3110 (class 0 OID 16407)
-- Dependencies: 201
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
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
25	Can add capability	7	add_capability
26	Can change capability	7	change_capability
27	Can delete capability	7	delete_capability
28	Can view capability	7	view_capability
29	Can add category	8	add_category
30	Can change category	8	change_category
31	Can delete category	8	delete_category
32	Can view category	8	view_category
33	Can add item	9	add_item
34	Can change item	9	change_item
35	Can delete item	9	delete_item
36	Can view item	9	view_item
37	Can add question	10	add_question
38	Can change question	10	change_question
39	Can delete question	10	delete_question
40	Can view question	10	view_question
41	Can add questionnaire	11	add_questionnaire
42	Can change questionnaire	11	change_questionnaire
43	Can delete questionnaire	11	delete_questionnaire
44	Can view questionnaire	11	view_questionnaire
45	Can add response	12	add_response
46	Can change response	12	change_response
47	Can delete response	12	delete_response
48	Can view response	12	view_response
49	Can add survey	13	add_survey
50	Can change survey	13	change_survey
51	Can delete survey	13	delete_survey
52	Can view survey	13	view_survey
53	Can add unit	14	add_unit
54	Can change unit	14	change_unit
55	Can delete unit	14	delete_unit
56	Can view unit	14	view_unit
\.


--
-- TOC entry 3116 (class 0 OID 16433)
-- Dependencies: 207
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$bacxYiMfKgKj$4P6jatMs2WPIEdVsYd5acx6XIh2Swtut+KNL4mezlH0=	\N	t	admin			admin@nowhere.com	t	t	2019-08-28 18:44:45.61975+00
\.


--
-- TOC entry 3118 (class 0 OID 16443)
-- Dependencies: 209
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3120 (class 0 OID 16451)
-- Dependencies: 211
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3122 (class 0 OID 16511)
-- Dependencies: 213
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3108 (class 0 OID 16397)
-- Dependencies: 199
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	socat	capability
8	socat	category
9	socat	item
10	socat	question
11	socat	questionnaire
12	socat	response
13	socat	survey
14	socat	unit
\.


--
-- TOC entry 3106 (class 0 OID 16386)
-- Dependencies: 197
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-08-28 18:43:56.467471+00
2	auth	0001_initial	2019-08-28 18:43:56.633111+00
3	admin	0001_initial	2019-08-28 18:43:56.674746+00
4	admin	0002_logentry_remove_auto_add	2019-08-28 18:43:56.688289+00
5	admin	0003_logentry_add_action_flag_choices	2019-08-28 18:43:56.70223+00
6	contenttypes	0002_remove_content_type_name	2019-08-28 18:43:56.731463+00
7	auth	0002_alter_permission_name_max_length	2019-08-28 18:43:56.739592+00
8	auth	0003_alter_user_email_max_length	2019-08-28 18:43:56.752702+00
9	auth	0004_alter_user_username_opts	2019-08-28 18:43:56.766965+00
10	auth	0005_alter_user_last_login_null	2019-08-28 18:43:56.78229+00
11	auth	0006_require_contenttypes_0002	2019-08-28 18:43:56.786224+00
12	auth	0007_alter_validators_add_error_messages	2019-08-28 18:43:56.800111+00
13	auth	0008_alter_user_username_max_length	2019-08-28 18:43:56.817188+00
14	auth	0009_alter_user_last_name_max_length	2019-08-28 18:43:56.83018+00
15	sessions	0001_initial	2019-08-28 18:43:56.858581+00
16	socat	0001_initial	2019-08-28 18:43:57.229171+00
\.


--
-- TOC entry 3123 (class 0 OID 16539)
-- Dependencies: 214
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 3125 (class 0 OID 16551)
-- Dependencies: 216
-- Data for Name: socat_capability; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socat_capability (id, created, updated, observation, category_id, survey_id) FROM stdin;
\.


--
-- TOC entry 3127 (class 0 OID 16562)
-- Dependencies: 218
-- Data for Name: socat_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socat_category (id, created, updated, category, observation_help, category_order, questionnaire_id) FROM stdin;
1	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Operational Effects / Operational Skills	todo	1	1
2	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Readiness / Alert Posture	todo	2	1
3	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Planning / Intellegince / Targeting	todo	3	1
4	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Self-Sustainment Training / Professionalism	todo	4	1
5	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Communications / Command and Control	todo	5	1
6	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Self-Sustainment Logistics	todo	6	1
7	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Medical	todo	7	1
8	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Operational Effects / Operational Skills	todo	1	3
9	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Readiness / Alert Posture	todo	2	3
10	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Planning / Intellegince / Targeting	todo	3	3
11	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Self-Sustainment Training / Professionalism	todo	4	3
12	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Communications / Command and Control	todo	5	3
13	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Self-Sustainment Logistics	todo	6	3
14	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Medical	todo	7	3
15	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Operational Effects / Operational Skills	todo	1	2
16	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Readiness / Alert Posture	todo	2	2
17	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Planning / Intellegince / Targeting	todo	3	2
18	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Self-Sustainment Training / Professionalism	todo	4	2
19	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Communications / Command and Control	todo	5	2
20	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Self-Sustainment Logistics	todo	6	2
21	2019-08-28 18:49:19.853158+00	2019-08-28 18:49:19.853158+00	Medical	todo	7	2
\.


--
-- TOC entry 3141 (class 0 OID 16641)
-- Dependencies: 232
-- Data for Name: socat_category_question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socat_category_question (id, category_id, question_id) FROM stdin;
1	1	1
2	2	2
3	3	3
4	4	4
5	5	1
6	6	2
7	7	3
8	8	3004
9	9	3001
10	10	3002
11	11	3003
12	12	3004
13	13	3001
14	14	3002
15	15	2030
16	16	2040
17	17	2010
18	18	2020
19	19	2030
20	20	2040
21	21	2010
\.


--
-- TOC entry 3129 (class 0 OID 16573)
-- Dependencies: 220
-- Data for Name: socat_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socat_item (id, created, updated, item_order, item_weight, item, question_id) FROM stdin;
1	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Conduct communication in an unsecure environment, susceptible to intrusion, jamming, or collection.	1
2	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Conduct limited secure communications on critical systems only at the operational level or above.	1
3	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Conduct communications in a secure environment at all levels.	1
4	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Interoperable with allied standards and tactics, techniques, and procedures (current_timestamp,current_timestamp,TTPs).	1
5	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	1
6	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	1
7	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	PN possesses extremely limited optics and night vision capability.	2
8	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	PN possesses some optics and night vision capability, but systems are not compatible with NATOSOF.	2
9	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	PN possesses some optics and night vision capability, and some equipment is compatible with NATOSOF.	2
10	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	PN possesses optics and night vision equipment that is completely interoperable with NATOSOF.	2
11	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	2
12	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	2
13	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	PN possesses extremely limited tactical communications capability.	3
14	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	PN possesses some tactical communications capability, but systems are not compatible with NATOSOF.	3
15	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	PN possesses some tactical communications capability, and some equipment is compatible with NATOSOF.	3
16	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	PN possesses  tactical communications equipment that is completely interoperable with NATOSOF.	3
17	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	3
18	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	3
19	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Very little planning conducted; most operations are conducted ad hoc, placing NATOSOF at extreme risk in combined operations. 	4
20	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Conducts limited, ineffective planning, resulting in excessive risk to NATOSOF during combined operations. 	4
21	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Conducts planning, but lacks key information to allow for combined operations with NATOSOF. 	4
22	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Conducts planning in a manner that supports operating in a combined environment with NATOSOF. 	4
23	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	4
24	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	4
25	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	PN TTPs do not exist, placing NATOSOF at unacceptable risk during most aspects of combined operations. 	5
26	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	PN TTPs are inadequate, placing NATOSOF at unacceptable risk during some aspects of combined operations. 	5
27	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	PN TTPs are adequate, placing NATOSOF at acceptable risk during most aspects of combined operations. 	5
28	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	PN TTPs are completely compatible, placing NATOSOF at an acceptable risk during all aspects of combined operations. 	5
29	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	5
30	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	5
31	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Not capable. 	6
32	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Limited capability and is not compatible. 	6
33	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Limited capability and is compatible. 	6
34	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Can provide adequate logistic support. 	6
35	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	6
36	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	6
37	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No equipment. 	7
38	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Outdated equipment. 	7
39	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Limited current equipment. 	7
40	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Adequate current equipment. 	7
41	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	7
42	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	7
43	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Almost no ability to rapidly deploy reaction forces. 	8
44	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Limited ability to rapidly deploy reaction forces. 	8
45	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Can generally deploy reaction forces, but gaps exist. 	8
46	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Can adequately deploy reaction forces within their borders.	8
47	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	8
48	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	8
49	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No I&W capability. 	9
50	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Minimal I&W planning and monitoring; low likelihood that PN will anticipate crises. 	9
51	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Limited I&W planning and monitoring; PN likely to anticipate only major events. 	9
52	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Adequate I&W planning and monitoring; PN likely to receive adequate warning of events that could lead to crisis.	9
53	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	9
54	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	9
55	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No capability. 	10
56	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Minimal planning and monitoring; low likelihood that PN will be able to protect. 	10
57	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Limited planning and monitoring; PN likely to anticipate only major attacks. 	10
58	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Adequate planning and monitoring; PN likely to receive adequate warning of events that could lead to attacks. 	10
59	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	10
187	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Unit is combat ineffective. 	32
60	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	10
61	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No control measures and monitoring are established, VEOs routinely have easy access to weapons. 	11
62	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Minimal control measures and monitoring established, VEOs routinely have easy access to weapons. 	11
63	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Limited Minimal control measures and monitoring established, VEOs have limited access to weapons. 	11
64	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Adequate control measures and monitoring exists; and VEOs have difficult access to weapons. 	11
65	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	11
66	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	11
67	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Rarely demonstrate or comply. 	12
68	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Occasionally demonstrate and comply. 	12
69	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Generally demonstrate and comply, but gaps exist. 	12
70	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Consistently demonstrate and comply. 	12
71	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	12
72	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	12
73	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Unit has failed vetting process due to Human Rights issues. 	13
74	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Unit has pending Human Rights issues, but has not been submitted for vetting process. 	13
75	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Unit has no current Human Rights issues, and has passed recent vetting process. 	13
76	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Unit has no current Human Rights issues, and has consistently passed vetting process. 	13
77	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	13
78	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	13
79	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Policies and processes for reporting suspected violations do not exist and no accountability for suspected violations is evident. 	14
80	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Policies and processes for reporting suspected violations exist but are not adhered to by security forces.	14
81	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Policies and processes for reporting suspected violations exist and are generally sufficient and adhered to. 	14
82	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Policies and processes exist for reporting suspected violations and reported abuses are investigated and adjudicated IAW internationally accepted standards. 	14
83	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	14
84	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	14
85	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No HR training is conducted. 	15
86	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Very little HR training is conducted. 	15
87	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	A moderate amount of HR training is conducted, with limited effectiveness. 	15
88	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	An adequate amount of HR training is conducted and PN has an effective HR training program. 	15
89	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	15
90	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	15
91	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Vast majority of local population is openly unsupportive. 	16
92	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Majority of local population is unsupportive, but not overtly.	16
93	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Majority of local population is supportive, but not overtly.	16
94	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Majority of local population is overly supportive. 	16
95	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	16
96	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	16
97	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No arrest authority. 	17
98	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Has arrest authority, marginally effective due to shortfalls in the justice system. 	17
99	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Has established arrest authority, VEO have not been effectively prosecuted in the justice system. 	17
100	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Established arrest authority, effectively leads to VEO prosecution in the justice system. 	17
101	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	17
102	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	17
103	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Security forces are not properly trained to conduct any operations against VEOs. 	18
104	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Security forces have minimal training to conduct operations against VEOs, and major gaps exist. 	18
105	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Security forces are trained to conduct operations against, VEOs, but there are minor gaps. 	18
106	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Security forces are adequately trained to conduct persistent operations against VEOs. 	18
107	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	18
108	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	18
109	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Security forces are not properly manned to counter VEOs. 	19
110	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Security forces have minimal manning to counter VEOs, and major gaps exist. 	19
111	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Security forces are generally manned to counter VEOs; minor gaps exist. 	19
112	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Security forces are adequately manned to counter VEOs. 	19
113	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	19
114	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	19
115	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Security forces are not adequately resourced to conduct operations against VEOs of any duration. 	20
116	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Security forces are only resourced to conduct short-duration operations (current_timestamp,current_timestamp,less than 48 hours) against VEOs. 	20
117	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Security forces are resourced to conduct some sustained operations against VEOs, but there are gaps. 	20
118	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Security forces are adequately resourced to conduct persistent operations against VEOs. 	20
119	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	20
120	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	20
121	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Completely incapable. 	21
122	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Some capability but highly inconsistent. 	21
123	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Adequate capability. 	21
124	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Highly capable.	21
125	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	21
126	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	21
127	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Completely incapable. 	22
128	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Some capability but highly inconsistent. 	22
129	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Adequate capability. 	22
130	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Highly capable.	22
131	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	22
132	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	22
133	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Completely incapable. 	23
134	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Some capability but highly inconsistent. 	23
135	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Adequate capability. 	23
136	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Highly capable.	23
137	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	23
138	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	23
139	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Completely incapable. 	24
140	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Some capability but highly inconsistent. 	24
141	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Adequate capability. 	24
142	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Highly capable.	24
143	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	24
144	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	24
145	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Does not properly plan or employ a fixing effect; no operational success. 	25
146	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Inconsistently plans for or employs a fixing effect with very limited operational success.	25
147	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Usually plans for or employs a fixing effect with moderate success. 	25
148	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Can successfully plan and conduct a fixing operation. 	25
149	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	25
150	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	25
151	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Does not properly plan or employ a finishing effect; no operational success. 	26
152	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Inconsistently plans for or employs a finishing effect with very limited operational success.	26
153	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Usually plans for or employs a finishing effect with moderate success. 	26
154	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Can successfully plan and conduct a finishing operation. 	26
155	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	26
156	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	26
157	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Incapable. 	27
158	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Some capability but highly inconsistent. 	27
159	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Adequate capability. 	27
160	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Highly capable.	27
161	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	27
162	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	27
163	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Incapable. 	28
164	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Some capability but highly inconsistent. 	28
165	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Adequate capability. 	28
166	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Highly capable.	28
167	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	28
168	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	28
169	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Members of the security sector have no capability or will work together. 	29
170	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Members of the security sector are willing to work together but do not possess adequate information sharing systems or procedures to effectively share information or intelligence. 	29
171	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Members of the security sector are willing to work together, and have basic information sharing systems and procedures, but there are gaps. 	29
172	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Members of the security sector have the capability and will to work together and adequately share information and intelligence. 	29
173	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	29
174	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	29
175	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Incapable. 	30
176	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Some capability but highly inconsistent. 	30
177	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Adequate capability. 	30
178	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Highly capable.	30
179	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	30
180	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	30
181	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Consistently too late to be useful. 	31
182	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Disseminated in a timely manner about half the time or less. 	31
183	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Disseminated in a timely manner more than half the time. 	31
184	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Consistently disseminated in a timely manner. 	31
185	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	31
186	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	31
188	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Unit has limited operational capability. 	32
189	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Unit can conduct operations, but has shortcomings in some mission essential tasks. 	32
190	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Unit is fully mission capable, across all mission essential tasks. 	32
191	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	32
192	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	32
193	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Does not conduct night operations. 	33
194	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Rarely demonstrates the will or capability to conduct night operations. 	33
195	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Usually demonstrates willingness, but conducts night operations with minor limitations/deviation. 	33
196	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Consistently demonstrates the willingness and conducts night operations regularly. 	33
197	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	33
198	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	33
199	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Does not have readiness cycle/alert procedures; crisis response will be ad hoc. 	34
200	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Has a readiness cycle/alert procedure, but it is not followed. 	34
201	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Has a readiness cycle/alert procedure, but it is not consistently followed. 	34
202	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Has a readiness cycle/alert procedure and it is routinely followed. 	34
203	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	34
204	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	34
205	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Does not demonstrate the will. 	38
206	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Rarely demonstrates the will. 	38
207	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Usually demonstrates willingness, with minor limitations/deviation. 	38
208	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Consistently demonstrates the will. 	38
209	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	38
210	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	38
211	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Unit is not improving or it has insurmountable issues; should have no future engagement. 	39
212	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Unit is improving and demonstrated improved will; should have persistent engagement to improve capability. 	39
213	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Unit is mostly capable and has demonstrated will to operate; should have episodic engagement to improve capability. 	39
214	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Unit is fully capable and has sustained operational will; should have episodic engagement to maintain relations/interoperability. 	39
215	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	39
216	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	39
217	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No procedures or guidelines exist. 	40
218	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Limited procedures for requesting security forces assistance but not specific to HA/DR operations 	40
219	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Procedures established for requesting security force assistance but details lacking in HA/DR response plans. 	40
220	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Procedures established for requesting security forces in HA/DR plan. 	40
221	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	40
222	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	40
223	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Security forces do not conduct training to support their employment during HA/DR events. 	41
224	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Security forces conduct training, but it is sporadic and ineffective. 	41
225	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Security forces conduct training, but are not prepared to respond. 	41
226	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Security forces conduct training and are prepared to respond. 	41
227	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	41
228	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	41
229	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No capability. 	42
230	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Can conduct limited HA/DR in support of localized disasters/catastrophes. 	42
231	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Can conduct HA/DR within its own borders in response to most potential disasters/catastrophes. 	42
232	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Can support HA/DR regionally. 	42
233	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	42
234	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	42
235	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No capability to counter VEO exploitation during an HA/DR event. 	43
236	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Minimal capability to counter VEO exploitation during an HA/DR event; very few assets available and little preparation. 	43
237	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Some capability to counter VEO exploitation during an HA/DR event; some preparation and some assets available. 	43
238	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Capable of countering VEO exploitation an HA/DR event. 	43
239	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	43
240	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	43
241	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No role in enforcement. 	44
242	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Limited role in enforcement.	44
243	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Have a role but limited capability. 	44
244	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Have a role and are capable.	44
245	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	44
246	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	44
247	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Not linked into maritime surveillance and response systems. 	45
248	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Have limited access to maritime surveillance and response systems. 	45
249	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Have access to maritime surveillance and response systems but for monitoring only. 	45
250	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Fully integrated into maritime surveillance and response systems. 	45
251	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	45
252	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	45
253	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Not equipped or trained. 	46
254	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Marginally equipped and trained. 	46
255	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Equipped and trained, but gaps exist. 	46
256	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Adequately equipped and trained. 	46
257	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	46
258	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	46
259	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Incapable. 	47
260	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Some capability but highly inconsistent. 	47
261	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Adequate capability. 	47
262	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Highly capable.	47
263	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	47
264	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	47
265	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Incapable. 	48
266	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Some capability but highly inconsistent. 	48
267	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Adequate capability. 	48
268	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Highly capable.	48
269	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	48
270	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	48
271	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No will; border security forces only conduct interdiction operations as a means of self-defense. 	49
272	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Limited will; border security forces only conduct interdiction operations when directly attacked or leader's interests are impacted. 	49
273	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Moderate will; border security forces conduct interdiction operations, but mostly reactionary in nature. 	49
274	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	High levels of will; border security forces are proactive in the conduct of interdiction operations. 	49
275	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	49
276	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	49
277	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Incapable. 	50
278	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Some capability but highly inconsistent. 	50
279	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Adequate capability. 	50
280	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Highly capable.	50
281	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	50
282	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	50
283	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No controls.	51
284	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Some controls, but not consistently enforced. 	51
285	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Adequate controls that are usually enforced.	51
286	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Adequate controls, routinely and consistently enforced. 	51
287	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	51
288	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	51
289	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	None.	52
290	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Limited; occasionally shares some limited information, and only with selected neighbors.	52
291	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Some; generally shares significant information, but not consistently. 	52
292	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Routine. 	52
293	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	52
294	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	52
295	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	None.	53
296	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Some policies and procedures in place, but not effective. 	53
297	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Policies and procedures in place, with some effectiveness. 	53
298	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Effective policies and procedures in place, consistently executed. 	53
299	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	53
300	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	53
301	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Very little ability; luck and trafficker mistakes are primary reasons for seizure. 	54
302	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Some ability; accomplished through personal relationships and informal systems. 	54
303	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Moderate ability; a formal system exists, but is rarely utilized. 	54
304	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Adequate ability, using established systems and programs. 	54
305	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	54
306	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	54
307	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Very little ability to detect and/or interdict. 	55
308	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Some ability to detect; interdiction mostly by chance or due to trafficker error. 	55
309	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Moderate ability to detect; majority of interdiction due to proper procedures.	55
310	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Adequate ability to detect and interdict. 	55
311	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	55
312	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	55
313	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Rudimentary planning process but ad hoc and reactive in nature. 	56
314	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Planning process conducted but not for crisis situations. 	56
315	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Planning process in both expected and crisis situations but not for all potential events. 	56
316	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Adequate planning process routinely conducted and exercised. 	56
317	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	56
318	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	56
319	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Basic capability, but significant challenges exist to conducting complex operations. 	57
320	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Moderate capability, but challenges exist in some areas. 	57
321	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Adequate for most but some gaps exist. 	57
322	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Robust and redundant capability exists. 	57
323	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	57
324	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	57
325	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	PN does not utilize TTPs trained by NATOSOF. 	58
326	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	PN utilizes some, but not all TTPs trained by NATOSOF. 	58
327	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	PN utilizes all TTPs trained by NATOSOF. 	58
328	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	PN demonstrates an ability to adapt NATO TTPs to meet their current situation, incorporating their own doctrine and lessons learned. 	58
329	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	58
330	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	58
331	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Minimal capability; routinely subject to major incidents of foreign espionage. 	59
332	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Some capability; occasional occurrence of major incidents of foreign espionage. 	59
333	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Moderate capability; rare instances of major incidents of foreign espionage. 	59
334	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Adequate capability; extremely rare instances of foreign espionage on any scale. 	59
335	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	59
336	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	59
337	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Minimal capability. 	60
338	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Some capability, inconsistently utilized. 	60
339	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Some capability, usually utilized. 	60
340	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Adequate capability, consistently utilized. 	60
341	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	60
342	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	60
343	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Minimal process and capability. 	61
344	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Basic process, with major capability gaps. 	61
345	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Adequate process, with some capability gaps. 	61
346	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Adequate process and some capability. 	61
347	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	61
348	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	61
349	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No organic vehicles, must receive ad-hoc external support for all mobility and transportation tasks. 	62
350	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Limited organic vehicles, requires augmentation from ad-hoc external units to conduct operations. 	62
351	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Adequate amount and type of organic vehicles, but requires augmentation from DESIGNATED (current_timestamp,current_timestamp,pre-planned support/ not ad-hoc) external support units. 	62
352	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Has adequate amount and type of organic vehicles, and routinely operates with organic assets (current_timestamp,current_timestamp,may still require occasional augmentation for special missions).	62
353	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	62
354	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	62
355	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No ability. 	64
356	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Has limited capability; needs extensive augmentation to conduct Combat Casualty Care. 	64
357	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Has moderate capability with organic medics, but needs augmentation to conduct effective Combat Casualty Care. 	64
358	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Fully capable of conducting organic Combat Casualty Care. 	64
359	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	64
360	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	64
361	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No ability. 	65
362	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Has limited capability; needs extensive augmentation to conduct effective casualty evacuation. 	65
363	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Has moderate capability with organic assets, but needs augmentation to conduct effective casualty evacuation planning and coordination. 	65
364	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Fully capable of conducting effective casualty evacuation. 	65
365	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	65
366	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	65
367	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No ability. 	66
368	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Limited ability, and only within a given service or specific unit. 	66
369	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Moderate ability, but still limited between the different services. 	66
370	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Fully capable of communicating from the tactical to operational level and across the services. 	66
371	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	66
372	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	66
373	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	NCOs are not empowered to take a leadership role; all decisions are made by officers. 	67
374	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	NCOs are occasionally empowered to take a leadership role, but it is ad hoc and/or personality-based. 	67
375	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	NCOs are generally empowered to take a leadership role, but there are gaps. 	67
376	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	NCOs are consistently empowered to take a leadership role and it is institutionalized. 	67
377	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	67
378	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	67
379	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No capability to communicate with MPAs during MIOs. 	68
380	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Has no direct communication capability with MPAs during MIOs, but can relay information through external networks. 	68
381	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Can communicate with MPA during MIOs on at least one system (current_timestamp,current_timestamp,HF, UHF, VHF). 	68
382	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Can communicate with MPA during MIOs via full spectrum (current_timestamp,current_timestamp,HF, UHF, VHF) systems. 	68
383	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	68
384	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	68
385	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	No capability to communicate with surface assets during MIOs. 	69
386	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Has no direct communication capability with surface assets during MIOs, but can relay information through external networks. 	69
387	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Can communicate with surface assets during MIOs on at least one system (current_timestamp,current_timestamp,HF, UHF, or VHF). 	69
388	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Can communicate with surface assets during MIOs via full spectrum (current_timestamp,current_timestamp,HF, UHF, or VHF) systems. 	69
389	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	69
390	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	69
391	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Does not conduct long-range MIOs, but it is part of unit's mission. 	70
392	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Conducts long-range MIOs, but does not conduct at-sea resupply. 	70
393	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Conducts long-range MIOs, and rarely conducts at-sea resupply. 	70
394	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Conducts long-range MIOs, and routinely conducts at-sea resupply. 	70
395	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	70
396	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	70
397	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Unit has no capability to conduct OTB amphibious operations. 	71
398	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Unit is partially capable of conducting OTB amphibious operations, but major gaps exist. 	71
399	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Unit is fully capable of conducting OTB amphibious operations, but rarely conducts it. 	71
400	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Unit is capable of conducting OTB amphibious operations, and routinely conducts it. 	71
401	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	71
402	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	71
403	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Unit has no capability to operate maritime interdiction craft. 	72
404	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Unit is partially capable of operating maritime interdiction craft, but major gaps exist. 	72
405	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Unit is fully capable of operating maritime interdiction craft, but rarely conducts it. 	72
406	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Unit is fully capable of operating maritime interdiction craft, and routinely conducts it. 	72
407	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	72
408	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	72
409	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	a	4	Unit has no capability to maintain maritime interdiction craft. 	73
410	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	b	3	Unit is partially capable of maintaining maritime interdiction craft: Operational Readiness Rate below 40%.	73
411	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	c	2	Unit is fully capable of maintaining maritime interdiction craft: Operational Readiness Rate between 40 and 80% (current_timestamp,current_timestamp,inclusive).	73
412	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	d	1	Unit is fully capable of maintaining maritime interdiction craft: Operational Readiness Rate above 80%.	73
413	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	e	0	Not observed or otherwise unable to make an accurate determination.	73
414	2019-08-28 18:49:19.693841+00	2019-08-28 18:49:19.693841+00	f	0	Not applicable or part of the unit's mission.	73
415	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Partner Nation and U.S. forces have strained relationships; they conduct no exchanges or training together.	2010
416	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Partner Nation and U.S. forces have strained relationships; although there are some bilateral discussions, and the U.S conducts less than three military engagements per year. 	2010
417	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Partner Nation and U.S forces have cordial relationships; there are regular bilateral discussions (formal and informal), and the U.S conducts between three and 10 military engagements per year. 	2010
418	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Partner Nation and U.S forces have positive relationships; there are regular bilateral discussions (formal and informal), and the U.S conducts more than 10 military engagements per year. 	2010
419	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2010
420	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2010
421	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Cooperative relationship; substantive exchanges; significant security  cooperation (including weapons systems and professional training); and established foreign access/basing agreements.	2021
422	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Cordial relationship; substantive exchanges; some security cooperation (including weapons systems or professional training); and increasing foreign forces access to military bases.	2021
423	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Cordial relationship; some mil-mil exchanges; no significant security cooperation (including no weapons systems, but may include sporadic professional training); and limited access for foreign troops.	2021
424	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Limited or no contact; no substantive exchanges; no significant security cooperation or technical cooperation. 	2021
425	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2021
426	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2021
472	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Partner Nation cooperates with both the United States; and countries in the region regarding CT.	2090
427	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Cooperative relationship; substantive exchanges; significant security  cooperation (including weapons systems and professional training); and established foreign access/basing agreements.	2022
428	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Cordial relationship; substantive exchanges; some security cooperation (including weapons systems or professional training); and increasing foreign forces access to military bases.	2022
429	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Cordial relationship; some mil-mil exchanges; no significant security cooperation (including no weapons systems, but may include sporadic professional training); and limited access for foreign troops.	2022
430	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Limited or no contact; no substantive exchanges; no significant security cooperation or technical cooperation. 	2022
431	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2022
432	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2022
433	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Cooperative relationship; substantive exchanges; significant security  cooperation (including weapons systems and professional training); and established foreign access/basing agreements.	2023
434	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Cordial relationship; substantive exchanges; some security cooperation (including weapons systems or professional training); and increasing foreign forces access to military bases.	2023
435	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Cordial relationship; some mil-mil exchanges; no significant security cooperation (including no weapons systems, but may include sporadic professional training); and limited access for foreign troops.	2023
436	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Limited or no contact; no substantive exchanges; no significant security cooperation or technical cooperation. 	2023
437	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2023
438	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2023
439	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Cooperative relationship; substantive exchanges; significant security  cooperation (including weapons systems and professional training); and established foreign access/basing agreements.	2024
440	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Cordial relationship; substantive exchanges; some security cooperation (including weapons systems or professional training); and increasing foreign forces access to military bases.	2024
441	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Cordial relationship; some mil-mil exchanges; no significant security cooperation (including no weapons systems, but may include sporadic professional training); and limited access for foreign troops.	2024
442	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Limited or no contact; no substantive exchanges; no significant security cooperation or technical cooperation. 	2024
443	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2024
444	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2024
445	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Partner Nation has no Counter Threat Finance capability. 	2050
446	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Partner Nation is developing a Counter Threat Finance capability. 	2050
447	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Partner Nation has a Counter Threat Finance capability; but it is not consistently used against CTO/VEO targets. 	2050
448	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Partner Nation has a Counter Threat Finance capability; and it is routinely used against CTO/VEO targets.	2050
449	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2050
450	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2050
451	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Partner Nation does not have a national level policy and framework to support CT. 	2060
452	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Partner Nation has a national level policy and framework; but rarely follows established policy and procedures. 	2060
453	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Partner Nation has a national level policy and framework; but does not consistently follow it.	2060
454	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Partner Nation has a national level policy and framework; and effectively follows it. 	2060
455	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2060
456	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2060
457	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Partner Nation does not have a national level strategy and policy to support CT operations.	2070
458	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Partner Nation has a national level CT strategy and policy; but rarely follows established policy and procedures. 4	2070
459	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Partner Nation has a national level CT strategy and policy; but does not consistently follow established policy and procedures	2070
460	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Partner Nation has a national level policy and framework; and effectively follows it. 	2070
461	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2070
462	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2070
463	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Partner Nation does not have national plans that include roles and missions for security forces to conduct CT operations. 	2080
464	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Partner Nation has national plans that include roles and missions for security forces to conduct CT operations; but rarely follows these plans. 	2080
465	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Partner Nation has plans that include roles and missions for security forces to conduct CT operations; but does not consistently follow these plans. 	2080
466	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Partner Nation has plans that include roles and missions for security forces to conduct CT operations; and effectively follows these plans. 	2080
467	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2080
468	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2080
469	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Partner Nation does not cooperate with the United States; and does not cooperate with countries in the region regarding CT. 	2090
470	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Partner Nation does not cooperate with the United States regarding CT; but does cooperate with countries in the region. 	2090
471	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Partner Nation does not cooperate with countries in the region regarding CT; but does cooperate with the United States. 	2090
626	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Covertly supports VEOs/TCOs.	3013
473	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2090
474	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2090
475	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Partner Nation does not have national level plans for crisis situations. National level planning and response will be ad hoc during a crisis. 	2110
476	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Partner Nation has national level plans for crisis situations; but the plans do not define roles and missions for security forces.	2110
477	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Partner Nation has national level plans for crisis situations; and the plans define roles and missions for security forces during some phases of the crisis. 	2110
478	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Partner Nation has national level plans for crisis situations; and the plans clearly define roles and missions for security forces throughout all phases of the crisis. 	2110
479	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2110
480	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2110
481	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Partner Nation does not have designated QRF; and security forces are incapable of rapidly responding during a crisis situation. 	2120
482	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Partner Nation does not have designated QRF; but some security forces have a limited ability to rapidly respond to crisis. 	2120
483	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Partner Nation has designated QRF; but QRF are not trained or prepared to respond. 	2120
484	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Partner Nation has designated QRF; and QRF are trained and prepared to respond to crisis situations. 	2120
485	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2120
486	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2120
487	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Some government services provided but only to selected members of the population. 	2130
488	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	All government services provided to selected members of the local population. 	2130
489	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Some government services provided to local population without regard to race, class, or income. 	2130
490	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	All government services provided to local population without regard to race, class, or income. 	2130
491	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2130
492	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2130
493	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Partner Nation has few plans and has had no / very little effect on unemployment. 	2140
494	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Partner Nation has taken some action but with little effect on unemployment. 	2140
495	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Partner Nation has successfully implemented measures in some areas, but pockets of high unemployment in areas vulnerable to VEO/TCO influence exist. 	2140
496	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Partner Nation has successfully implemented measures to reduce unemployment rates throughout the country. 	2140
497	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2140
498	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2140
499	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	There are no means to formally or informally address grievances. 	2150
500	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	There are only informal means to address grievances and they are inadequate. 	2150
501	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	There are both formal and informal means to address grievances, but the process is inadequate. 	2150
502	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Yes.	2150
503	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2150
504	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2150
505	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	PN does not conduct any CVE activities. 	2160
506	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	PN rarely conducts CVE activities.	2160
507	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	PN conducts episodic or limited CVE activities; but it is not integrated into national plans. 	2160
508	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	PN conducts regular CVE activities; and it is integrated into national plans. 	2160
509	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2160
510	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2160
511	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	PN does not conduct any CVE programs. 	2170
512	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	PN conducts some CVE programs; but it does not target areas where VEO are active. 	2170
513	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	PN conducts limited or episodic CVE programs; and it targets areas where VEO are active.	2170
514	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	PN actively conducts CVE programs; and it targets areas where VEO are active. 	2170
515	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2170
516	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2170
517	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	PN does not have, and is not developing a "Rewards for Justice Program" against VEO. 	2180
518	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	PN is developing a "Rewards for Justice Program" that targets VEO. 	2180
519	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	PN has an active "Rewards for Justice Program" that targets VEO; but it is not well integrated into national plans. 	2180
520	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	PN has an active "Rewards for Justice Program" that targets VEO; and it is integrated into national plans. 	2180
521	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2180
522	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2180
523	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Partner Nation security forces do not conduct any operations to disrupt VEO and TCO freedom of movement. 	2190
524	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Partner Nation security forces rarely conduct operations to disrupt VEO and TCO; and the operations are not part of national CT/CTOC plans. 	2190
525	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Partner Nation security forces conduct episodic or limited operations to disrupt VEO and TCO; and the operations are part of national CT/CTOC plans. 	2190
526	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Partner Nation security forces actively conduct interdiction operations against VEO and TCO; and it is part of National CT/CTOC Plans. 	2190
527	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2190
528	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2190
529	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Partner Nation security forces do not have control of the borders. 	2200
530	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Partner Nation security forces have control of some border areas but other areas remain under-controlled (with few or no operations along the border); and there is little or no information sharing with neighboring country border security forces.	2200
531	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Partner Nation security forces control borders (conduct operations along the border); but do not routinely share information with neighboring country border security forces. 	2200
532	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Partner Nation security forces are proactive in securing borders (conducting operations along the border); and routinely share information with neighboring country border security forces. 	2200
533	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2200
534	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2200
535	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	There are no polices, procedures, in place to control borders/POEs. 	2210
536	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Partner Nation has polices and procedures in place to provide effective border/port of entry (POE) control; but rarely follows them. 	2210
537	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Partner Nation has polices and procedures in place to provide effective border/port of entry (POE) control; but does not consistently follows them. 	2210
538	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Partner Nation has polices and procedures in place to provide effective border/port of entry (POE) control; and effectively follows them. 	2210
539	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2210
540	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2210
541	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Partner Nation has no budget, only ad hoc spending. 	2220
542	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Partner Nation Defense Budget is decreasing. 	2220
543	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Partner Nation Defense Budget is constant (neither increasing nor decreasing).	2220
544	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Partner Nation Defense Budget is increasing. 	2220
545	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2220
546	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2220
547	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Partner Nation's defense budget and authorizations DO NOT  provide sufficient funding to procure and maintain equipment and supplies needed to conduct CT operations. 	2240
548	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Partner Nation's defense budget and authorizations provide resources to procure and maintain a limited amount of equipment and supplies to conduct CT operations. 	2240
549	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Partner Nation's defense budget and authorizations provide resources to procure and maintain the equipment and supplies needed, but can only support limited CT operations. 	2240
550	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Partner Nation's defense budget and authorization provides sufficient funding to procure and maintain equipment and supplies needed to conduct CT operations. 	2240
551	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2240
552	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2240
553	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Partner Nation MOD  has no policies or procedures to procure supplies & equipment; and does not sustain CT operations.	2250
554	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Partner Nation MOD has policies and procedures in place; but DOES NOT provide enough supplies & equipment to sustain CT operations. 	2250
555	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Partner Nation MOD has policies and procedures in place; and provides enough supplies & equipment to sustain limited CT operations. 	2250
556	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Partner Nation MOD has policies and procedures in place; and routinely provides enough supplies & equipment to sustain full spectrum CT operations. 	2250
557	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2250
558	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2250
559	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	a	4	Partner Nation MOD does not provide any funding cover recruiting, basic training and pay for CT forces' personnel. 	2260
560	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	b	3	Partner Nation MOD funding is limited and only partially covers recruiting and pay for CT forces' personnel; basic CT training is not funded. 	2260
561	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	c	2	Partner Nation MOD funding is limited; it covers recruiting and pay for CT forces' personnel; and partially covers basic CT training. 	2260
562	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	d	1	Partner Nation MOD funding is sufficient to cover recruiting, pay, and basic training for CT forces' personnel. 	2260
563	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	e	0	Not observed or otherwise unable to make an accurate determination. 	2260
564	2019-08-28 18:49:19.744915+00	2019-08-28 18:49:19.744915+00	f	0	Not applicable or part of the unit's mission.	2260
565	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	4	PN has no CT or CTOC doctrine. 	3001
566	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	3	PN is formulating doctrine. 	3001
567	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	2	PN has doctrine; but it is not consistently enforced. 	3001
568	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	1	PN has doctrine; and it is routinely followed.	3001
569	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3001
570	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	PN security forces DO NOT have an established planning process; and rarely conduct crisis action planning. 	3002
571	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	PN security forces have an established operational level planning process; but it is rarely followed. 	3002
572	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	PN security forces have an established operational level planning process; but it is not consistently followed for deliberate or crisis action planning. 	3002
573	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	PN security forces have an established operational level planning process; and it routinely conduct deliberate and crisis action planning. 	3002
574	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3002
575	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	PN has no operational level CT plans; and does not conduct operations to counter VEOs.	3003
576	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	PN has operational level plans; but rarely conducts operations to counter VEOs.	3003
577	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	PN does not have operational level plans; but conducts some operations to counter VEOs. 	3003
578	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	PN has operational level CT plans; and regularly conducts operations to counter VEOs. 	3003
579	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3003
580	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	PN has no operational level CTOC plans; and does not conduct operations to counter TCOs.	3004
581	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	PN has operational level CTOC plans; but rarely conducts operations to counter TCOs. 	3004
582	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	PN does not have operational level CTOC plans; but conducts some operations to counter TCOs. 	3004
583	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	PN has operational level CTOC plans; and regularly conducts operations to counter TCOs. 	3004
584	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3004
585	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	PN security forces have basic C2 systems in place; but significant challenges exist to conducting complex operations. 	3005
586	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	PN security forces have basic C2 systems in place; but challenges exist in some areas.	3005
587	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	PN security forces have C2 systems in place; and it is adequate during most situations (current_timestamp,current_timestamp,some gaps in process or equipment may still exist).	3005
588	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	PN security forces have C2 systems in place; and it is capable of supporting full spectrum operations (current_timestamp,current_timestamp,redundant capability exists).	3005
589	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3005
590	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	PN security forces DO NOT have any ability to communicate at the tactical-to-operational level in a joint non-permissive environment. 	3006
591	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	PN security forces have a limited capability of communicating from the tactical to operational level; but only within a service or specific unit. 	3006
592	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	PN security forces have a moderate capability of communicating from the tactical to operational level; but still limited between the different services. 	3006
593	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	PN security forces are fully capable of communicating from the tactical to operational level; and across all the services. 	3006
594	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3006
595	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	PN does not have a training management program.	3007
596	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	PN has a limited training program (current_timestamp,current_timestamp,training is mostly done at the service entry level).	3007
597	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	PN has a training management program; but it is not consistently followed. 	3007
598	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	PN has a training management program; and routinely follows it. 	3007
599	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3007
600	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	PN has no QRF; and security forces are not capable of rapidly responding during a crisis. 	3008
601	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	PN has no QRF; but some forces have limited ability to respond during a crisis. 	3008
602	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	PN has a QRF; but the QRF is not adequately trained to respond. 	3008
603	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	PN has a QRF; and the QRF is adequately trained to respond to crisis situations. 	3008
604	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3008
605	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Almost no ability to deploy reaction forces. 	3009
606	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Limited ability to rapidly deploy reaction forces. 	3009
607	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Can generally deploy reaction forces; but gaps exist. 	3009
608	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Can deploy reaction forces within their borders. 	3009
609	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3009
610	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	PN has no Joint structure and no procedures to coordinate and command joint operations; joint operations are ad hoc during crisis situations. 	3010
611	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	PN has no Joint structure but has procedures to coordinate and command joint operations; however the procedures are rarely followed. 	3010
612	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	PN has a Joint structure and/or has procedures to coordinate joint operations; but the procedures are not consistently followed or command authority is not clear. 	3010
613	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	PN has a Joint structure to coordinate and command joint operations; and the joint procedures are effectively followed. 	3010
614	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3010
615	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	No will, forces only take actions against security threats as a means of self-defense. 	3011
616	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Limited will, forces only take action against security threats when directly attacked or leader's interests are impacted. 	3011
617	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Moderate will, forces take action against security threats, but most are reactionary in nature. 	3011
618	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	High levels of will, forces are proactive in their pursuit of maintaining security. 	3011
619	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3011
620	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Openly defiant. 	3012
621	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Mostly ambivalent, with episodic acts of defiance. 	3012
622	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Slightly supportive, with occasional acts of defiance. 	3012
623	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Majority supportive/compliant. 	3012
624	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3012
625	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Overtly supports and allows VEOs/TCOs to openly operate within the area. 	3013
627	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Majority of the local population does not support VEOs/TCOs. 	3013
628	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Overtly reports and takes action against suspected VEOs/TCOs.	3013
629	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3013
630	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	No procedures or guidelines exist. 	3014
631	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Limited procedures for requesting security forces assistance but not specific to HA/DR operations. 	3014
632	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Procedures established for requesting security force assistance but details lacking in HA/DR response plans. 	3014
633	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Procedures established for requesting security forces in HA/DR plan.	3014
634	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3014
635	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	No capability. 	3015
636	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Can conduct limited HA/DR in support of localized disasters/catastrophes.	3015
637	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Can conduct HA/DR within its own borders in response to most potential disasters/catastrophes. 	3015
638	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Can support HA/DR regionally. 	3015
639	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3015
640	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	No capability to counter VEO exploitation during an HA/DR event. 	3016
641	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Minimal capability to counter VEO exploitation during an HA/DR event; very few assets available and little preparation. 	3016
642	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Some capability to counter VEO exploitation during an HA/DR event; some preparation and some assets available. 	3016
643	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Capable of countering VEO exploitation during an HA/DR event. 	3016
644	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3016
645	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Rarely demonstrate or comply. 	3017
646	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Occasionally demonstrate and comply. 	3017
647	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Generally demonstrate and comply; but gaps exist. 	3017
648	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Consistently demonstrate and comply. 	3017
649	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3017
650	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Policies and processes for reporting suspected violations do not exist and no accountability for suspected violations is evident. 	3018
651	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Policies and processes for reporting suspected violations exist but are not adhered to by security forces. 	3018
652	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Policies and processes for reporting suspected violations exist and are generally sufficient and adhered to. 	3018
653	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Policies and processes exist for reporting suspected violations and reported abuses are investigated and adjudicated IAW internationally accepted standards. 	3018
654	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3018
655	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	No HR training is conducted. 	3019
656	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Very little HR training is conducted. 	3019
657	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	A moderate amount of HR training is conducted, with limited effectiveness. 	3019
658	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	An adequate amount of HR training is conducted and HN has an effective HR training program. 	3019
659	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3019
660	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Vast majority of local population is openly unsupportive. 	3020
661	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Majority of local population is unsupportive, but not overtly. 	3020
662	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Majority of local population is supportive, but overtly. 	3020
663	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Majority of local population is overtly supportive. 	3020
664	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3020
665	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Incapable.	3021
666	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Some capability but highly inconsistent. 	3021
667	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Adequate capability. 	3021
668	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Highly capable. 	3021
669	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3021
670	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Incapable.	3022
671	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Some capability but highly inconsistent. 	3022
672	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Adequate capability. 	3022
673	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Highly capable. 	3022
674	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3022
675	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Incapable.	3023
676	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Some capability but highly inconsistent. 	3023
677	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Adequate capability. 	3023
678	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Highly capable. 	3023
679	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3023
680	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Incapable.	3024
681	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Some capability but highly inconsistent. 	3024
682	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Adequate capability. 	3024
683	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Highly capable. 	3024
684	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3024
685	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Incapable.	3025
686	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Some capability but highly inconsistent. 	3025
687	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Adequate capability. 	3025
688	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Highly capable. 	3025
689	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3025
690	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Members of the security sector have no capability or will to work together. 	3026
691	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Members of the security sector are willing to work together; but do not possess adequate information sharing systems or procedures to effectively share information or intelligence. 	3026
692	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Members of the security sector are willing to work together; and have basic information sharing systems and procedures, but there are gaps. 	3026
693	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Members of the security force have the capability; and will to work together and share information and intelligence. 	3026
694	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3026
695	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Incapable.	3027
696	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Some capability but highly inconsistent. 	3027
697	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Adequate capability. 	3027
698	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Highly capable. 	3027
699	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3027
700	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Consistently too late to be useful. 	3028
701	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Disseminated in a timely manner < 50% of the time. 	3028
702	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Disseminated in a timely manner >50% of the time. 	3028
703	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Consistently disseminated in a timely manner. 	3028
704	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3028
705	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Incapable.	3029
706	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Some capability but highly inconsistent. 	3029
707	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Adequate capability. 	3029
708	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Highly capable. 	3029
709	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3029
710	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Partner Nation CT forces DO NOT have sufficient resources to conduct any CT operations. 	3030
711	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Partner Nation CT forces have limited amounts of equipment and supplies; that can only support limited CT operations. 	3030
712	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Partner Nation CT forces have limited amounts of equipment and supplies; that can only support episodic CT operations. 	3030
713	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Partner Nation CT forces have sufficient resources (current_timestamp,current_timestamp,equipment and supplies) to conduct persistent CT operations. 	3030
714	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3030
715	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Partner Nation security forces DO NOT have sufficient resources to conduct any CTOC operations. 	3031
716	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Partner Nation security forces have limited amounts of equipment and supplies; that can only support limited CTOC operations. 	3031
717	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Partner Nation security forces have limited amounts of equipment and supplies; that can only support episodic CTOC operations. 	3031
718	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Partner Nation security forces have sufficient resources (current_timestamp,current_timestamp,equipment and supplies) to conduct persistent CTOC operations. 	3031
719	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3031
720	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Partner Nation does not have policies to manage the requisition and repair of equipment. 	3032
721	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Partner Nation has policies to manage the requisition and repair of equipment; but rarely follows it. 	3032
722	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Partner Nation has policies to manage the requisition and repair of equipment; but does not consistently follows it. 	3032
723	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Partner Nation has policies to manage the requisition and repair of equipment; and effectively follows it. 	3032
724	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3032
725	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Security forces are not adequately resourced to conduct operations against VEOs/TCOs of any duration. 	3033
726	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Security forces are only resourced to conduct short-term operations (current_timestamp,current_timestamp,less than 48 hours) against VEOs/TCOs. 	3033
727	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Security forces are resourced to conduct some sustained operations against VEOs/TCOs, but there are some gaps. 	3033
728	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Security forces are adequately resourced to conduct persistent operations against VEOs/TCOs.	3033
729	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3033
730	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Not properly manned. 	3034
731	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Have minimal manning to counter VEOs/TCOs. 	3034
732	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Generally manned to counter VEOs/TCOs; but minor gaps exist. 	3034
733	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Adequately manned to counter VEOs/TCOs. 	3034
734	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3034
735	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Partner Nation security forces have no organic medical resources. 	3035
736	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Partner Nation security forces have limited amounts of medical equipment and supplies; is not sufficient to support operations. 	3035
737	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Partner Nation security forces have limited amounts of equipment and supplies; that can only support episodic operations. 	3035
738	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Partner Nation security forces have sufficient medical resources (current_timestamp,current_timestamp,equipment and supplies) to support persistent operations. 	3035
739	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3035
740	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	a	0	Partner Nation security forces have no organic medical personnel. 	3036
741	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	b	0	Partner Nation security forces have limited medical personnel (current_timestamp,current_timestamp,medics) at the unit level; but they lack operational capabilities (current_timestamp,current_timestamp,aide station, hospital) to support operational level planning and operations. 	3036
742	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	c	0	Partner Nation security forces have adequate medical personnel (current_timestamp,current_timestamp,medics) at the unit level; but they lack operational capabilities (current_timestamp,current_timestamp,aide station, hospital) to support operational level planning and operations. 	3036
743	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	d	0	Partner Nation security forces have adequate medical personnel (current_timestamp,current_timestamp,medics) at the unit level; and enough operational capabilities (current_timestamp,current_timestamp,aide station, hospital) to support operational level planning and operations. 	3036
744	2019-08-28 18:49:19.806828+00	2019-08-28 18:49:19.806828+00	e	0	Not observed or otherwise unable to make an accurate determination. 	3036
\.


--
-- TOC entry 3131 (class 0 OID 16584)
-- Dependencies: 222
-- Data for Name: socat_question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socat_question (id, created, updated, question_order, question_display, question, questionnaire_id) FROM stdin;
1	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	1	1	Do Partner Nation security forces have sufficient communications security for combined operations with NATOSOF?	1
2	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	2	2	Do Partner Nation security forces have optics and night vision systems that are compatible with NATO tactical systems?	1
3	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	3	3	Do Partner Nation security forces have communications systems that are compatible with NATO tactical systems?	1
4	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	4	4	To what degree can Partner Nation security forces effectively plan with NATO SOF?	1
5	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	5	5	To what degree are Partner Nation tactics, techniques, and procedures (TTPs) conducive to combined operations with NATOSOF?	1
6	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	6	6	To what degree can the Partner Nation provide logistic support that is compatible with NATO systems?	1
7	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	7	7	To what degree do the Partner Nation security forces have the necessary equipment (ammunition/explosives, optics, vehicles, etc.) to conduct combined operations with NATO forces?	1
8	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	8	8	Do Partner Nation security forces have the ability to rapidly deploy reaction forces during a crisis situation?	1
9	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	9	9	To what degree can Partner Nation security forces and/or intelligence agencies plan for and monitor indicators and warning (I&W) of events that could lead to a crisis?	1
10	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	10	10	To what degree can Partner Nation security forces protect critical infrastructure and high risk personnel?	1
11	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	11	11	To what degree can Partner Nation security forces/agencies deny VEOs access to weapons?	1
12	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	12	12	To what degree do Partner Nation security forces adhere to internationally recognized Human Rights policies and standards including UN Human Rights resolutions?	1
13	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	13	13	Has Partner Nation Unit failed U.S Congressional Leahy Vetting Process (or other Human Rights vetting process)?	1
14	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	14	14	What type of policies and procedures are established to hold security forces accountable for Human Rights violations?	1
15	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	15	15	To what degree do Partner Nation security forces conduct human rights (HR) training?	1
16	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	16	16	What is the perceived level of local support for Partner Nation security forces?	1
17	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	17	17	Does Partner Nation unit have the authority to detain or arrest?	1
18	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	18	18	To what extent do Partner Nation security forces have an established training system and receive effective training to enable their forces to counter VEOs?	1
19	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	19	19	Do Partner Nation security forces have the proper manning to counter VEOs?	1
20	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	20	20	To what degree can Partner Nation security forces support sustained operations against VEOs?	1
21	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	21	21	Find: What level of ability does the PN have to identify/locate weapons development, production and acquisition by VEOs?	1
22	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	22	22	Find: What level of ability does the PN have to monitor/disrupt VEO communications network?	1
23	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	23	23	Find: What level of ability does the PN have to locate a key node of a network (individual, physical place, item of value)?	1
24	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	24	24	Find: What level of ability does the PN have to track High Value Individuals and monitor their location?	1
25	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	25	25	Fix: To what degree do Partner Nation's forces have the capability to utilize a fixing force or fixing effect to prevent a target(s) from fleeing prior to the use of a finishing force or finishing effect?	1
26	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	26	26	Finish: To what degree do Partner Nation's forces have the capability to neutralize a targeted node or to render a targeted node safe for exploitation?	1
27	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	27	27	Exploit: To what degree do Partner Nation forces have the capability to collect all potentially relevant pieces of information?	1
28	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	28	28	Analyze: To what degree do Partner Nation forces have the capability to analyze intelligence information?	1
29	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	29	29	Analyze: To what degree do members of the security sector (military, police, para-military, and Other Government Agencies) work together to ensure a common understanding of the threat?	1
30	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	30	30	Disseminate: To what degree do Partner Nation forces have the capability to share the information?	1
31	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	31	31	How timely is the dissemination of actionable intelligence?	1
32	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	32	32	Are Partner Nation CT units Fully Mission Capable?	1
33	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	33	33	Does Partner Nation regularly conduct night operations?	1
34	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	34	34	Do Partner Nation security forces maintain a readiness cycle/alert procedure?	1
35	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	35	35	Which areas have NATOSOF trained with the Partner Nation unit in the last year (or last engagement)?	1
36	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	36	36	In which areas does the Partner Nation unit need additional NATOSOF training?	1
37	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	37	37	In which significant operations has Partner Nation unit participated in the past year?	1
38	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	38	38	Does Partner Nation demonstrate the will to actively conduct Countering Violent Extremist (CVE) actions and activities? 	1
39	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	39	39	How often should NATOSOF engage with the Partner Nation unit?	1
40	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	40	40	Does Partner Nation have established procedures for requesting security forces assistance for HA/DR and the security forces have employment guidelines and basic HA/DR response plans?	1
41	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	41	41	Have security forces rehearsed response plans for possible employment to both assist in HA/DR events?	1
42	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	42	42	What is the capability and capacity of the Partner Nation to conduct HA/DR operations?	1
43	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	43	43	During an HA/DR event, are security forces capable of preventing VEOs from exploiting the event?	1
44	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	44	44	Do maritime security forces have a role in the enforcement of applicable maritime conventions/treaties (ISPS Code, IMO, SOLAS, UNCLOS, etc.)?	1
45	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	45	45	Are maritime security forces integrated into Partner Nation maritime surveillance and response systems?	1
46	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	46	46	Are maritime security forces equipped and trained to adequately perform the mission?	1
47	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	47	47	Do security forces have the ability to track the movement of VEOs and TCOs?	1
48	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	48	48	Do security forces have the capability to interdict VEOs and TCOs?	1
49	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	49	49	Do security forces demonstrate the will to conduct interdiction operations against VEOs & TCOs?	1
50	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	50	50	Do security forces have the capability to close transit routes?	1
51	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	51	51	Does Partner Nation employ immigration controls?	1
52	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	52	52	To what degree does Partner Nation share communication/information with neighboring border security forces?	1
53	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	53	53	Are organizations, policies, and procedures in place to provide effective border/port of entry (POE) control?	1
54	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	54	54	To what extent do Partner Nation Security Forces have the ability to selectively target high-risk shipments, inspect goods, seize, and dispose of items of concern?	1
55	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	55	55	To what extent do Partner Nation Security Forces have the ability to detect and interdict illicit trafficking at Ports of Entry (POEs), between POEs, and within the interior of the country?	1
56	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	56	56	To what degree do Partner Nation security forces have an established planning process to include deliberate and crisis action concepts?	1
57	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	57	57	To what extent do Partner Nation security forces demonstrate sufficient command and control capabilities?	1
58	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	58	58	To what extent have Partner Nation forces absorbed TTPs previously trained on?	1
59	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	59	59	To what extent does Partner Nation have the capability to conduct counter-intelligence activities?	1
60	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	60	60	To what extent do Partner Nation intelligence agencies have the capability to conduct all-source intelligence activities (HUMINT, SIGINT, and OSINT)?	1
61	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	61	61	To what degree do Partner Nation security forces have an effective logistics process and capability?	1
62	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	62	62	Does Partner Nation Security Force have enough vehicles/vessels to conduct CT/CTOC operations (not including air assets)?	1
63	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	63	63	What Partner Nation unit provides air support to CT units operations?   To CTOC operations?	1
64	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	64	64	To what degree do Partner Nation security forces have effective Combat Casualty Care?	1
65	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	65	65	To what degree do Partner Nation security forces able to conduct effective Medical Evacuation?	1
66	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	66	66	To what degree do Partner Nation security forces have the ability to communicate at the tactical and operational level in a joint non-permissive environment?	1
67	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	67	67	To what degree do Partner Nation security forces empower NCOs to take a leadership role?	1
68	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	68	68	What is the capability of the PN unit to communicate with Maritime Patrol Aircraft (MPAs) (via full spectrum HF, UHF, VHF systems) during Maritime Interdiction Operations (MIOs)?	1
69	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	69	69	What is the capability of the PN unit to communicate with NATO or PN surface assets (via full spectrum HF, UHF, VHF systems) during Maritime Interdiction Operations (MIOs)?	1
70	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	70	70	Does PN conduct at-sea logistical resupply (fuel, food, water) of their maritime maneuver elements during the conduct of long-range/extended duration MIOs?	1
71	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	71	71	Is the PN unit capable of conducting Over-The-Beach (OTB) amphibious operations (including launching, operating and recovering forces in the maritime domain)?	1
72	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	72	72	Can the PN unit effectively operate maritime interdiction craft (including navigation, fires, and comminations)?	1
73	2019-08-28 18:49:19.560344+00	2019-08-28 18:49:19.560344+00	73	73	Can the PN unit effectively maintain maritime interdiction craft?	1
2010	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	1	1	What is the current level of the bilateral military relationship between the Partner Nation and the United States?	2
2020	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	2	2	What is the current level of the bilateral military relationship between the Partner Nation; and the COMPETITORS of the United States?	2
2021	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	3	2a	MIL-MIL relations with Russia	2
2022	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	4	2b	MIL-MIL relations with China 	2
2023	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	5	2c	Relations with Iran 	2
2024	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	6	2d	Relations with ALBA (Venezuela, Cuba, Bolivia, Ecuador, Nicaragua, Antigua, and Barbuda, Dominica, Grenada, Saint Kitts and Nevis, Saint Lucia, St. Vincent and the Grenadines)	2
2030	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	7	3	What are the National (State v. State) tensions; and contested border issues?	2
2040	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	8	4	Which Partner Nation SOCSOUTH Priority Units have failed Leahy (or similar) vetting procedures?	2
2050	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	9	5	Does the Partner Nation have a Counter Threat Finance capability?	2
2060	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	10	6	Does the Partner Nation have the CT laws; and the will to prosecute and punish suspected terrorist and VEO members?	2
2070	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	11	7	Does the Partner Nation have a strategy ad policy to support CT operations?	2
2080	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	12	8	Does the Partner Nation have published national level plans that include roles and missions for security forces to conduct CT operations?	2
2090	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	13	9	Does the Partner Nation cooperate with the United States and the countries in the region regarding CT?	2
2100	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	14	10	Which Partner Nation SOCSOUTH Priority Units have the authority to detain and arrest?	2
2110	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	15	11	Does Partner Nation have published national level plans that include roles and missions for security forces during crisis situations?	2
2120	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	16	12	Do Partner Nation security forces have selected units designated as quick reaction forces (QRF) in support of national level crisis response plans?	2
2130	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	17	13	Does PN provide a sufficient level of government services (Security, Fire, Health, and Education)?	2
2140	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	18	14	To what degree does Partner Nation take measures to reduce unemployment rates in areas vulnerable to VEO and TCO influence?	2
2150	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	19	15	Can the population properly address grievances to the government?	2
2160	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	20	16	Does Partner Nation (PN) conduct Counter Violent Extremist (CVE) actions and activities?	2
2170	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	21	17	Does Partner Nation conduct Counter Violent Extremist (CVE) programs (to deter the local population's support); in areas where Violent Extremist Organizations (VEO) are active?	2
2180	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	22	18	Does Partner Nation participate in or have an equivalent to the "Rewards for Justice Program" and "DoD Rewards Program" that targets Violent Extremist Organizations (VEO)?	2
2190	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	23	19	Do Partner Nation security forces conduct operations to disrupt VEO and TCO freedom of movement?	2
2200	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	24	20	Does Partner Nation employ effective border controls; and shares information with neighboring country border security forces?	2
2210	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	25	21	Does Partner Nation have policies and procedures in place to provide effective border/port of entry (POE) control?	2
2220	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	26	22	Is the Partner Nation Defense Budget (or equivalent; for example: budget for Security Forces in countries with no military) increasing?	2
2230	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	27	23	How is Partner Nation's Defense Budget (or equivalent) spent?	2
2240	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	28	24	Do the Partner Nation's Defense Budget (or equivalent) and authorizations provide sufficient funding to procure and maintain equipment and supplies needed to conduct CT operations?	2
2250	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	29	25	Does the Partner Nation Ministry of Defense MOD (or equivalent) have established policies and procedures for procuring supplies & equipment; and does the process sustain CT operations?	2
2260	2019-08-28 18:49:19.611389+00	2019-08-28 18:49:19.611389+00	30	26	Does Partner Nation Ministry of Defense MOD (or equivalent) provides funding to cover costs to recruit, train, and pay the security forces' personnel needed to conduct CT operations?	2
3001	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	1	1	To what degree has Partner Nation implemented CT and CTOC doctrine to conduct operations against VEOs and TCOs aligned with national laws and legislation?	3
3002	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	2	2	To what degree has Partner Nation security forces have an established operational level planning process to include deliberate and crisis action planning?	3
3003	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	3	3	Does Partner Nation have operational level plans that are used to develop CT operations?	3
3004	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	4	4	Does Partner Nation have operational level plans that are used to develop CTOC operations?	3
3005	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	5	5	To what extent do Partner Nation security forces demonstrate sufficient operational command and control capabilities?	3
3006	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	6	6	To what degree do Partner Nation security forces have the ability to communicate at the tactical-to-operational levels in a joint non-permissive environment?	3
3007	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	7	7	Do Partner Nation security forces have an established, systematic approach to training?	3
3008	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	8	8	Do Partner Nation security forces have designated quick reaction forces (QRF); and the QRF are trained to respond in support of operational level plans?	3
3009	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	9	9	Do Partner Nation security forces have the ability to deploy reaction forces during a crisis situation?	3
3010	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	10	10	Do Partner Nation security forces have established organizations and procedures to coordinate, and command joint operations during crisis situations?	3
3011	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	11	11	Does the Partner Nation security force possess the will to engage in operations against security threats?	3
3012	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	12	12	What level of respect does the local populace have for institutional authority (local government representatives)?	3
3013	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	13	13	What is the level of the local population's support to VEOs/TCOs (based on atmospherics and intelligence reporting)?	3
3014	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	14	14	Does Partner Nation have established procedures for requesting security forces assistance for HA/DR and the security forces have employment guidelines and basic HA/DR response plans?	3
3015	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	15	15	What is the capability and capacity of the Partner Nation to conduct HA/DR operations?	3
3016	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	16	16	During an HA/DR event, are security forces capable of preventing VEOs from exploiting the event?	3
3017	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	17	17	To what degree do Partner Nation security forces adhere to internationally recognized Human Rights policies and standards including UN Human Rights resolutions?	3
3018	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	18	18	What type of policies and procedures are established to hold security forces accountable for Human Rights violations?	3
3019	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	19	19	To what degree do Partner Nation security forces conduct human rights (HR) training?	3
3020	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	20	20	What is the perceived level of local support for Partner Nation security forces?	3
3021	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	21	21	(Find): To what degree do PN CT forces have the capability to locate key node of a network (individual, physical place, item of value)?	3
3022	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	22	22	(Fix): To what degree do PN CT have the capability to track and monitor a key node of network, and to set conditions to facilitate directing effects against it by a finishing force?	3
3023	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	23	23	(Finish): To what degree do PN CT forces have the capability to neutralize a targeted node (if is a threat) or render the targeted node safe for exploitation?	3
3024	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	24	24	(Exploit): To what degree do PN CT forces have the capability to collect all potentially relevant pieces of information?	3
3025	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	25	25	(Analyze): To what degree do PN CT forces have the capability to analyze intelligence information?	3
3026	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	26	26	(Analyze): To what degree do members of the security sector (military, police, para-military, OGAs) work together to ensure a common understanding of the threat?	3
3027	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	27	27	(Disseminate): To what degree do PN CT forces have the capability to share the information?	3
3028	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	28	28	How timely is the dissemination of actionable intelligence?	3
3029	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	29	29	To what degree does PN have the capability to conduct counter-threat financing operations?	3
3030	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	30	30	Do the Partner Nation CT security forces have sufficient resources (equipment and supplies) to conduct CT operations?	3
3031	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	31	31	Do the Partner Nation CT security forces have sufficient resources (equipment and supplies) to conduct CTOC operations?	3
3032	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	32	32	Do the Partner Nation's security forces have policies in place to manage the requisition and repair of equipment and supplies?	3
3033	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	33	33	To what degree can Partner Nation forces support sustained operations against VEOs/TCOs?	3
3034	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	34	34	Do Partner Nation security forces have the proper manning to counter VEOs/TCOs at the operational level?	3
3035	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	35	35	Do the Partner Nation security forces have sufficient medical resources (equipment and supplies) to support operations at the operational level?	3
3036	2019-08-28 18:49:19.651923+00	2019-08-28 18:49:19.651923+00	36	36	Do the Partner Nation security forces have sufficient medically trained personnel to support operations at the operational level?	3
\.


--
-- TOC entry 3133 (class 0 OID 16595)
-- Dependencies: 224
-- Data for Name: socat_questionnaire; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socat_questionnaire (id, created, updated, version, questionnaire, description) FROM stdin;
1	2019-08-28 18:48:45.686367+00	2019-08-28 18:48:45.686367+00	1.1	Tactical	Basic
2	2019-08-28 18:48:45.686367+00	2019-08-28 18:48:45.686367+00	1.1	Strategic	Stretch A
3	2019-08-28 18:48:45.686367+00	2019-08-28 18:48:45.686367+00	1.1	Operational	Stretch B
\.


--
-- TOC entry 3135 (class 0 OID 16608)
-- Dependencies: 226
-- Data for Name: socat_response; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socat_response (id, created, updated, narrative, item_id, question_id, survey_id) FROM stdin;
\.


--
-- TOC entry 3137 (class 0 OID 16619)
-- Dependencies: 228
-- Data for Name: socat_survey; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socat_survey (id, created, updated, survey_date, state, name, last_name, first_name, rank, "position", reporting, prior_aor, prior_engagement, mission_start, mission_end, mission_type, mission_objective, end_state, gaps, notes, questionnaire_id, unit_id) FROM stdin;
\.


--
-- TOC entry 3139 (class 0 OID 16630)
-- Dependencies: 230
-- Data for Name: socat_unit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socat_unit (id, created, updated, unit, unit_abbrev, unit_description, unit_type, engagement, engagement_type, affiliation, region, leader_text, country, location_1, mgrs_1, location_2, mgrs_2, location_3, mgrs_3, force, weapons, comms, mobility, night_vision, mission, country_objectives, southcom_objectives, embassy_objectives, socsouth_objectives, diagram) FROM stdin;
\.


--
-- TOC entry 3165 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3166 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3167 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- TOC entry 3168 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3169 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 3170 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3171 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3172 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- TOC entry 3173 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 16, true);


--
-- TOC entry 3174 (class 0 OID 0)
-- Dependencies: 215
-- Name: socat_capability_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socat_capability_id_seq', 1, false);


--
-- TOC entry 3175 (class 0 OID 0)
-- Dependencies: 217
-- Name: socat_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socat_category_id_seq', 1, false);


--
-- TOC entry 3176 (class 0 OID 0)
-- Dependencies: 231
-- Name: socat_category_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socat_category_question_id_seq', 33, true);


--
-- TOC entry 3177 (class 0 OID 0)
-- Dependencies: 219
-- Name: socat_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socat_item_id_seq', 759, true);


--
-- TOC entry 3178 (class 0 OID 0)
-- Dependencies: 221
-- Name: socat_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socat_question_id_seq', 1, false);


--
-- TOC entry 3179 (class 0 OID 0)
-- Dependencies: 223
-- Name: socat_questionnaire_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socat_questionnaire_id_seq', 1, false);


--
-- TOC entry 3180 (class 0 OID 0)
-- Dependencies: 225
-- Name: socat_response_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socat_response_id_seq', 1, false);


--
-- TOC entry 3181 (class 0 OID 0)
-- Dependencies: 227
-- Name: socat_survey_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socat_survey_id_seq', 1, false);


--
-- TOC entry 3182 (class 0 OID 0)
-- Dependencies: 229
-- Name: socat_unit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socat_unit_id_seq', 1, false);


--
-- TOC entry 2890 (class 2606 OID 16422)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2895 (class 2606 OID 16477)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2898 (class 2606 OID 16430)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2892 (class 2606 OID 16420)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2885 (class 2606 OID 16463)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2887 (class 2606 OID 16412)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2906 (class 2606 OID 16448)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2909 (class 2606 OID 16492)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2900 (class 2606 OID 16438)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2912 (class 2606 OID 16456)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2915 (class 2606 OID 16506)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2903 (class 2606 OID 16534)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2918 (class 2606 OID 16520)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2880 (class 2606 OID 16404)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2882 (class 2606 OID 16402)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2878 (class 2606 OID 16394)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2922 (class 2606 OID 16546)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2926 (class 2606 OID 16559)
-- Name: socat_capability socat_capability_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_capability
    ADD CONSTRAINT socat_capability_pkey PRIMARY KEY (id);


--
-- TOC entry 2929 (class 2606 OID 16570)
-- Name: socat_category socat_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_category
    ADD CONSTRAINT socat_category_pkey PRIMARY KEY (id);


--
-- TOC entry 2959 (class 2606 OID 16705)
-- Name: socat_category_question socat_category_question_category_id_question_id_2137b274_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_category_question
    ADD CONSTRAINT socat_category_question_category_id_question_id_2137b274_uniq UNIQUE (category_id, question_id);


--
-- TOC entry 2961 (class 2606 OID 16646)
-- Name: socat_category_question socat_category_question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_category_question
    ADD CONSTRAINT socat_category_question_pkey PRIMARY KEY (id);


--
-- TOC entry 2932 (class 2606 OID 16650)
-- Name: socat_item socat_item_item_order_question_id_62325f34_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_item
    ADD CONSTRAINT socat_item_item_order_question_id_62325f34_uniq UNIQUE (item_order, question_id);


--
-- TOC entry 2934 (class 2606 OID 16581)
-- Name: socat_item socat_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_item
    ADD CONSTRAINT socat_item_pkey PRIMARY KEY (id);


--
-- TOC entry 2937 (class 2606 OID 16592)
-- Name: socat_question socat_question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_question
    ADD CONSTRAINT socat_question_pkey PRIMARY KEY (id);


--
-- TOC entry 2940 (class 2606 OID 16648)
-- Name: socat_question socat_question_questionnaire_id_question_order_32f96a64_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_question
    ADD CONSTRAINT socat_question_questionnaire_id_question_order_32f96a64_uniq UNIQUE (questionnaire_id, question_order);


--
-- TOC entry 2942 (class 2606 OID 16603)
-- Name: socat_questionnaire socat_questionnaire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_questionnaire
    ADD CONSTRAINT socat_questionnaire_pkey PRIMARY KEY (id);


--
-- TOC entry 2945 (class 2606 OID 16605)
-- Name: socat_questionnaire socat_questionnaire_questionnaire_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_questionnaire
    ADD CONSTRAINT socat_questionnaire_questionnaire_key UNIQUE (questionnaire);


--
-- TOC entry 2948 (class 2606 OID 16616)
-- Name: socat_response socat_response_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_response
    ADD CONSTRAINT socat_response_pkey PRIMARY KEY (id);


--
-- TOC entry 2952 (class 2606 OID 16627)
-- Name: socat_survey socat_survey_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_survey
    ADD CONSTRAINT socat_survey_pkey PRIMARY KEY (id);


--
-- TOC entry 2956 (class 2606 OID 16638)
-- Name: socat_unit socat_unit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_unit
    ADD CONSTRAINT socat_unit_pkey PRIMARY KEY (id);


--
-- TOC entry 2888 (class 1259 OID 16465)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2893 (class 1259 OID 16478)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2896 (class 1259 OID 16479)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2883 (class 1259 OID 16464)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2904 (class 1259 OID 16494)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2907 (class 1259 OID 16493)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2910 (class 1259 OID 16508)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2913 (class 1259 OID 16507)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2901 (class 1259 OID 16535)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2916 (class 1259 OID 16531)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2919 (class 1259 OID 16532)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2920 (class 1259 OID 16548)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2923 (class 1259 OID 16547)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2924 (class 1259 OID 16714)
-- Name: socat_capability_category_id_526a696c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socat_capability_category_id_526a696c ON public.socat_capability USING btree (category_id);


--
-- TOC entry 2927 (class 1259 OID 16720)
-- Name: socat_capability_survey_id_19c1a96d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socat_capability_survey_id_19c1a96d ON public.socat_capability USING btree (survey_id);


--
-- TOC entry 2957 (class 1259 OID 16706)
-- Name: socat_category_question_category_id_dc3f69f7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socat_category_question_category_id_dc3f69f7 ON public.socat_category_question USING btree (category_id);


--
-- TOC entry 2962 (class 1259 OID 16707)
-- Name: socat_category_question_question_id_2dbf94ee; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socat_category_question_question_id_2dbf94ee ON public.socat_category_question USING btree (question_id);


--
-- TOC entry 2930 (class 1259 OID 16708)
-- Name: socat_category_questionnaire_id_80123e3b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socat_category_questionnaire_id_80123e3b ON public.socat_category USING btree (questionnaire_id);


--
-- TOC entry 2935 (class 1259 OID 16688)
-- Name: socat_item_question_id_69df3e16; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socat_item_question_id_69df3e16 ON public.socat_item USING btree (question_id);


--
-- TOC entry 2938 (class 1259 OID 16682)
-- Name: socat_question_questionnaire_id_1918f670; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socat_question_questionnaire_id_1918f670 ON public.socat_question USING btree (questionnaire_id);


--
-- TOC entry 2943 (class 1259 OID 16651)
-- Name: socat_questionnaire_questionnaire_440d65ae_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socat_questionnaire_questionnaire_440d65ae_like ON public.socat_questionnaire USING btree (questionnaire varchar_pattern_ops);


--
-- TOC entry 2946 (class 1259 OID 16662)
-- Name: socat_response_item_id_76021553; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socat_response_item_id_76021553 ON public.socat_response USING btree (item_id);


--
-- TOC entry 2949 (class 1259 OID 16663)
-- Name: socat_response_question_id_1a0d9628; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socat_response_question_id_1a0d9628 ON public.socat_response USING btree (question_id);


--
-- TOC entry 2950 (class 1259 OID 16676)
-- Name: socat_response_survey_id_ce073316; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socat_response_survey_id_ce073316 ON public.socat_response USING btree (survey_id);


--
-- TOC entry 2953 (class 1259 OID 16669)
-- Name: socat_survey_questionnaire_id_e44c91b5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socat_survey_questionnaire_id_e44c91b5 ON public.socat_survey USING btree (questionnaire_id);


--
-- TOC entry 2954 (class 1259 OID 16670)
-- Name: socat_survey_unit_id_7e2ba869; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socat_survey_unit_id_7e2ba869 ON public.socat_survey USING btree (unit_id);


--
-- TOC entry 2965 (class 2606 OID 16471)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2964 (class 2606 OID 16466)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2963 (class 2606 OID 16457)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2967 (class 2606 OID 16486)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2966 (class 2606 OID 16481)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2969 (class 2606 OID 16500)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2968 (class 2606 OID 16495)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2970 (class 2606 OID 16521)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2971 (class 2606 OID 16526)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2972 (class 2606 OID 16715)
-- Name: socat_capability socat_capability_category_id_526a696c_fk_socat_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_capability
    ADD CONSTRAINT socat_capability_category_id_526a696c_fk_socat_category_id FOREIGN KEY (category_id) REFERENCES public.socat_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2973 (class 2606 OID 16721)
-- Name: socat_capability socat_capability_survey_id_19c1a96d_fk_socat_survey_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_capability
    ADD CONSTRAINT socat_capability_survey_id_19c1a96d_fk_socat_survey_id FOREIGN KEY (survey_id) REFERENCES public.socat_survey(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2982 (class 2606 OID 16694)
-- Name: socat_category_question socat_category_quest_category_id_dc3f69f7_fk_socat_cat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_category_question
    ADD CONSTRAINT socat_category_quest_category_id_dc3f69f7_fk_socat_cat FOREIGN KEY (category_id) REFERENCES public.socat_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2983 (class 2606 OID 16699)
-- Name: socat_category_question socat_category_quest_question_id_2dbf94ee_fk_socat_que; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_category_question
    ADD CONSTRAINT socat_category_quest_question_id_2dbf94ee_fk_socat_que FOREIGN KEY (question_id) REFERENCES public.socat_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2974 (class 2606 OID 16709)
-- Name: socat_category socat_category_questionnaire_id_80123e3b_fk_socat_que; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_category
    ADD CONSTRAINT socat_category_questionnaire_id_80123e3b_fk_socat_que FOREIGN KEY (questionnaire_id) REFERENCES public.socat_questionnaire(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2975 (class 2606 OID 16689)
-- Name: socat_item socat_item_question_id_69df3e16_fk_socat_question_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_item
    ADD CONSTRAINT socat_item_question_id_69df3e16_fk_socat_question_id FOREIGN KEY (question_id) REFERENCES public.socat_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2976 (class 2606 OID 16683)
-- Name: socat_question socat_question_questionnaire_id_1918f670_fk_socat_que; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_question
    ADD CONSTRAINT socat_question_questionnaire_id_1918f670_fk_socat_que FOREIGN KEY (questionnaire_id) REFERENCES public.socat_questionnaire(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2977 (class 2606 OID 16652)
-- Name: socat_response socat_response_item_id_76021553_fk_socat_item_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_response
    ADD CONSTRAINT socat_response_item_id_76021553_fk_socat_item_id FOREIGN KEY (item_id) REFERENCES public.socat_item(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2978 (class 2606 OID 16657)
-- Name: socat_response socat_response_question_id_1a0d9628_fk_socat_question_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_response
    ADD CONSTRAINT socat_response_question_id_1a0d9628_fk_socat_question_id FOREIGN KEY (question_id) REFERENCES public.socat_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2979 (class 2606 OID 16677)
-- Name: socat_response socat_response_survey_id_ce073316_fk_socat_survey_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_response
    ADD CONSTRAINT socat_response_survey_id_ce073316_fk_socat_survey_id FOREIGN KEY (survey_id) REFERENCES public.socat_survey(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2980 (class 2606 OID 16664)
-- Name: socat_survey socat_survey_questionnaire_id_e44c91b5_fk_socat_que; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_survey
    ADD CONSTRAINT socat_survey_questionnaire_id_e44c91b5_fk_socat_que FOREIGN KEY (questionnaire_id) REFERENCES public.socat_questionnaire(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2981 (class 2606 OID 16671)
-- Name: socat_survey socat_survey_unit_id_7e2ba869_fk_socat_unit_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socat_survey
    ADD CONSTRAINT socat_survey_unit_id_7e2ba869_fk_socat_unit_id FOREIGN KEY (unit_id) REFERENCES public.socat_unit(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2019-08-28 19:06:18 UTC

--
-- PostgreSQL database dump complete
--

-- Patch UNIT
INSERT INTO public.socat_unit(
	created, updated, unit, unit_abbrev, unit_type, engagement, engagement_type, affiliation, region, leader_text, country, location_1, mgrs_1, location_2, mgrs_2, location_3, mgrs_3, force, weapons, comms, mobility, night_vision, mission, country_objectives, southcom_objectives, embassy_objectives, socsouth_objectives, diagram)
VALUES
(current_timestamp, current_timestamp,$$Compania de Comandos 601$$,$$601st$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$ARG$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$ARSOF$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Agrupacion de Buzos Tacticos$$,$$APBT$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$SCAR$$,$$$$,$$ARG$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Argentine Navy SEALs$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Agrupacion de Comandos Anfibios - ARG$$,$$APCA$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$SCAR$$,$$$$,$$ARG$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Argentine MARSOF$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Agrupación Fuerzas Especiales Alacran$$,$$Alacran$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$SCAR$$,$$$$,$$ARG$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Argentine Paramilitary Police SOF$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Grupo Especial Uno$$,$$GE1$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$SCAR$$,$$$$,$$ARG$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$National-level JI CT unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Grupos Especiales Operaciones Federales$$,$$GEOF$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$SCAR$$,$$$$,$$ARG$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$National-level CT unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Anti-Narcotics Unit$$,$$ANU$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$BLZ$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Belize Drug Investigative Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Belize Coast Guard Special Operations Group$$,$$BCG-SOG$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$CENTAM$$,$$$$,$$BLZ$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Belize Coast Guard - SEALs$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Belize Special Assignments Group$$,$$BSAG$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CENTAM$$,$$$$,$$BLZ$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Belize Special Assignments Group$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Belize Coast Guard Strike Team$$,$$BCG-ST$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$CENTAM$$,$$$$,$$BLZ$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Belize Coast Guard Strike Team$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Mobile Interdiction Team$$,$$MIT$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$BLZ$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Belize Land Interdiction Team$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Batalhao de Operacoes Especias de Fuzileiros Navais$$,$$Toneleros$$,$$Maritime$$,$$$$,$$$$,$$MARINES$$,$$SCAR$$,$$$$,$$BRA$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Marine Corps SOF Battalion$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Batalhao de Operacoes Policiaes Especiaes - PM Brasilia$$,$$BOPE-PMDF$$,$$Ground$$,$$$$,$$$$,$$OTHER SECURITY FORCE (Explain)$$,$$SCAR$$,$$$$,$$BRA$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$State Police SWAT Federal District$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Batalhao de Operacoes Policiaes Especiaes- PM Rio de Janeiro$$,$$BOPE-PMRJ$$,$$Ground$$,$$$$,$$$$,$$OTHER SECURITY FORCE (Explain)$$,$$SCAR$$,$$$$,$$BRA$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$State Police SWAT Rio de Janeiro$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Comando de Operacoes Especiaes- 3rd SF Company$$,$$COPESP-3Co$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$BRA$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Brazilian Army Speclal Operations Command-3rd Company$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Comando de Operacoes Especiaes- Destacamento Contra-Terrorlsta$$,$$COPESP-DCT$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$BRA$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Army Specfal Forces Command - CT Detachment$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Coordenacao de Aviacao Operacional - DPF$$,$$DPF-CAOP$$,$$Aviation$$,$$$$,$$$$,$$FEDERAL POLICE$$,$$SCAR$$,$$$$,$$BRA$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Federal Police - Operational Aviation Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Coordenacao de Recurses Especiaes - Policia Civil Rio de Janeiro$$,$$CORE-PCRJ$$,$$Ground$$,$$$$,$$$$,$$OTHER SECURITY FORCE (Explain)$$,$$SCAR$$,$$$$,$$BRA$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$State Civil Police SWAT Rio de Janeiro$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Departamento de Policia Federal - Comando de Operacoes Taticas$$,$$DPF-COT$$,$$Ground$$,$$$$,$$$$,$$FEDERAL POLICE$$,$$SCAR$$,$$$$,$$BRA$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Federal Police - CT Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Direitoria de Operacoes Especiaes- Policia Civil de Brasilia$$,$$DOE-PCDF$$,$$Ground$$,$$$$,$$$$,$$OTHER SECURITY FORCE (Explain)$$,$$SCAR$$,$$$$,$$BRA$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Civil Police SWAT Federal District$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Drug Reduction Unit$$,$$DRU$$,$$Ground$$,$$$$,$$$$,$$OTHER SECURITY FORCE (Explain)$$,$$SCAR$$,$$$$,$$BRA$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Drug Reduction Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Forca Nacional de Seguranca Publica$$,$$FNSP$$,$$Ground$$,$$$$,$$$$,$$FEDERAL POLICE$$,$$SCAR$$,$$$$,$$BRA$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Special Operations Company$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Grupamento de Mergulhadores de Combate$$,$$GRUMEC$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$SCAR$$,$$$$,$$BRA$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Navy SOF Divers$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Núcleo Especial de Policía Marítima$$,$$NEPOM$$,$$Maritime$$,$$$$,$$$$,$$FEDERAL POLICE$$,$$SCAR$$,$$$$,$$BRA$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Special Maritime Police Nucleus$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Maritime Special Operations Unit$$,$$MSOU$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$CARIB$$,$$$$,$$BRB$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Coast Guard$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Agrupaclon de Fuerzas Especiales$$,$$AFE$$,$$Aviation$$,$$$$,$$$$,$$AIR FORCE$$,$$SCAR$$,$$$$,$$CHL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Air Force Speclal Operations Group$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Brigada de Aviacion del Ejercito$$,$$BAVE$$,$$Aviation$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$CHL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Army Aviation Brigade$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Brigada de Operaciones Especiales$$,$$BOE$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$CHL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Army Special Operations Brigade$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Comando de Fuerzas Especiales de la Armada$$,$$COMFUES$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$SCAR$$,$$$$,$$CHL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Navy Special Operations Command$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Grupo de Fuerzas Especiales FACH$$,$$GRUFE$$,$$Aviation$$,$$$$,$$$$,$$AIR FORCE$$,$$SCAR$$,$$$$,$$CHL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Air Force Special Operations Group$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Grupo de Operaciones Especiales - Chlie$$,$$GOPE$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$SCAR$$,$$$$,$$CHL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Police Special Operations Group$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$3rd Division Colombian Army$$,$$3DIV$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Colombian Army$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$23rd Brigade Colombian Army$$,$$23BDE$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Colomblan Army$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$30th BDE Colombian Army$$,$$30BDE$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$30th BOE Colomblan Army$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$6th Division Colombian Army$$,$$6DJV$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$6th Division Colombian Army$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$7th  Division Colombian Army$$,$$7DIV$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$7th Division Colombian Army$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Agrupacion de Fuerzas Especiales Antiterroristas Urbanas$$,$$AFEAU$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Urban Special Forces$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Batallon de Entrenamiento de Comandos$$,$$BECOM$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Army SOF Training Battallon$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Batallon Fluvial de lnfanteria de Marina No.16$$,$$BFIM-16$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$BFIM-16 Js the main COLMIL unit operating under the  Agamemnon II offensive In the AOR.$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Batallon de Fuerzas Especiales de La lnfanteria Marina$$,$$BFEIM$$,$$Maritime$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Marines Corp Special Forces Battalion$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Brigada Contra el Narcotrafico$$,$$BRCNA$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Counternarcotics Brigade$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Brigada Contra el Narcotrafico - Batallon 4$$,$$BRCNA4$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$4th BN Counterdrug Brigade$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Brigada de Comandos$$,$$BRICO$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Commado Brigade$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Brigada de Fuerzas Especiales$$,$$BRFER$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Special Forces Brigade$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Brigada de lnfanteria de Marina - 4$$,$$BRJM4$$,$$Maritime$$,$$$$,$$$$,$$MARINES$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Marine Infantry Brigade$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Centro Fusion de Operaciones$$,$$CEFOP$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Operations Fusion Center$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Colombian National Police Region 5$$,$$CNPS$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Colombian National Police Region 5$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Comando Conjunto de Operaciones Especiales$$,$$CCOES$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Joint Special Operations Command$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Comando Conjunto No 2 Sur Occidente$$,$$CCON-2$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Joint Command # 2$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Comando Conjunto No 3 Sur Occidente$$,$$CCON-3$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Joint Command# 3$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Comando de Operaciones Especiales y Antiterrorismo$$,$$COPES$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Anti Terrorism and Special Operations Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Comando de Fuerzas Especiales Navales$$,$$COFEN$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Naval Speclal Forces Command$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Comando Jungla$$,$$Junglas$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Special Operations Counter-Drug Comando$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Division de Fuerzas Especiales$$,$$DIVFE$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$New Army SF Division$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Fuerza de Despliegue Rápido$$,$$FUDRA$$,$$Ground$$,$$$$,$$$$,$$MARINES$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Rapid Deployment Division$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Grupo de Comandos Navales-Caribe$$,$$GRUCON-C$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Naval Commando Group-Caribbean$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Grupo de Comandos Navales-Pacifico$$,$$GRUCON-P$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Naval Commando Group-Pacific$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Grupos de Accion Unificada par la Libertad Personal-Policia$$,$$GAULA-Pollcla$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Anti-kidnapping and Extortion Groups-Police$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Fuerza de Tarea Conjunta Hercules$$,$$JTFH$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$JTF Hercules$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Fuerza de Tarea  Omega$$,$$JTFO$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$JTF Omega$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Fuerza de Tarea  Apolo$$,$$FUTAP$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Task Force Apolo$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Fuerza de Tarea Jupiter$$,$$FTJUP$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Task Force Jupiter$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Fuerza de Tarea  Nepturno-Guarda Costas$$,$$FTNEP$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Task Force Nepturno Maritime Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Fuerza de Tarea Pegaso$$,$$FUPEG$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Task Force Pegaso$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Fuerza de Tarea Poseidon$$,$$FUPOS$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Counter Narcotics Naval Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Fuerza de Tarea Vulcano$$,$$FUVUL$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Task Force Vulcano$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Unidad Especial de Transporte$$,$$UNET$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$SCAR$$,$$$$,$$COL$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$GRUCON-P subordinate SOC-R special boat unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Maritime Interdiction Vetted Unit$$,$$MIVU$$,$$Maritime$$,$$$$,$$$$,$$COAST GUARD$$,$$CENTAM$$,$$$$,$$CRI$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Maritime lnterdiction Vetted Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Servicio Especial de Respuesta Táctica$$,$$SERP$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$CRI$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Conducts high-risk dellberate and hasty time-sensitive raids against DTOs$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Unidad Especial de lntervencion$$,$$UEI$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$CRI$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Special Support Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Fuerzas Especiales de la Fuerza Aerea$$,$$AFSF$$,$$Aviation$$,$$$$,$$$$,$$AIR FORCE$$,$$CARIB$$,$$$$,$$DOM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Air Force Special Forces$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Comandos Navales$$,$$Comandos Navales$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$CARIB$$,$$$$,$$DOM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Naval Commandos$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Defender Servir y Proteger$$,$$DEPROSER$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$CARIB$$,$$$$,$$DOM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Task Force Defend Protect and Serve$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Flotilla Naval$$,$$FLOTILLA$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$CARIB$$,$$$$,$$DOM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Naval Flotilla$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Ministerio de Defensa - Contra Terror$$,$$MIDE-CT$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$CARIB$$,$$$$,$$COM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Special Counterterror Command$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Unidad de Reacción Táctica$$,$$DNCD-URT$$,$$Maritime$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CARIB$$,$$$$,$$COM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Directorate of National Drug Control-Tactical Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Grupo Especial de Operaciones$$,$$GEO$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$ECU$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Army Primary CT Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Segunda Brigada de infantería$$,$$2ndBDE$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CENTAM$$,$$$$,$$GTM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$2nd IN BOE$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Tercera Brigada de lnfanteria 11$$,$$3rdBOE$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CENTAM$$,$$$$,$$GTM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$3rd IN BOE$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Brigada de lnfanteria de Marina$$,$$BIM$$,$$Maritime$$,$$$$,$$$$,$$MARINES$$,$$CENTAM$$,$$$$,$$GTM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Marine Infantry Brigade$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Brigada de Operaciones para Montana$$,$$BOPM$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CENTAM$$,$$$$,$$GTM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Mountain Operations Brigade$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Brigada de Paracaidistas$$,$$BRIPAC$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CENTAM$$,$$$$,$$GTM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Parachute Brigade$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Centro de lnformacion y Recolecta$$,$$CIR-C$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$GTM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Intelligence Fusion Center$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Fuerza Especial Naval$$,$$FEN$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$CENTAM$$,$$$$,$$GTM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Naval Special Forces$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Fuerzas interinstitucional Antinarcótico y Antiterrorista$$,$$FJAAT$$,$$Aviation$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$GTM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$CN and CT lntergagency Task Force$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Grupo Especial de interdicción y Rescate$$,$$GEIR$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CENTAM$$,$$$$,$$GTM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Special Interdiction and Rescue Group$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Halcones$$,$$Halcones$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$GTM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Anti Narcotics & Counter Terrorism Force$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Interagency Task Force Chorti$$,$$IATF-C$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$CENTAM$$,$$$$,$$GTM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$IATF Chortl$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Interagency Task Force Tecun Uman$$,$$IATF-TU$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$CENTAM$$,$$$$,$$GTM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$IATF Tecun Uman$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Unidad Omega$$,$$Omega$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$GTM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Omega Land Interdiction Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$3-1 Special Forces Squadron$$,$$3-1 SFS$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CARIB$$,$$$$,$$GUY$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$3-1 Special Forces Squadron$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Guyanese Coast Guard Raider Unit$$,$$Raiders$$,$$Maritime$$,$$$$,$$$$,$$COAST GUARD$$,$$CARIB$$,$$$$,$$GUY$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Guyanese Coast Guard Raider Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$SWAT$$,$$SWAT$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CARIB$$,$$$$,$$GUY$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$SWAT Team$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$ler  Batallon de Fuerzas Especiales Navales$$,$$BFEN$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$CENTAM$$,$$$$,$$HND$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Navy Maritime Interdiction Operations$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Estado Mayor de las Fuerzas Armadas C-5$$,$$EMC$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CENTAM$$,$$$$,$$HND$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$C-5 Joint Staff$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Tropa Integral Gubernamental de Respuesta Especial de Seguridad$$,$$PN TIGRES$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$HND$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Police Special Response Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Counterterrorism Operations Group$$,$$C-TOG$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$CARIB$$,$$$$,$$JAM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Counterterrorism Operations Group$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Jamaica Defense Force Coast Guard$$,$$DFCG$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$CARIB$$,$$$$,$$JAM$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Coast Guard$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Destacamento de Operaciones Especiales Navales$$,$$ODEN$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$CENTAM$$,$$$$,$$NIC$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Naval Speclal Operations Detachment$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Aire Tierra y Mar$$,$$SENAN-ATIMA$$,$$Maritime$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$PAN$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Air and Naval Service Spec!al Operations Force$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Agrupamiento de Fuerzas Especiales$$,$$SENAFRONT -AFFE$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$PAN$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Border Service Special Operations Force$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$SENAN Comandos Navales$$,$$SENAN - Comandos$$,$$Maritime$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$PAN$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$SENAN Naval Commandos$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$lnfanteria de Marina$$,$$SENAN - INFARMAR$$,$$Maritime$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$PAN$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Air and Naval Service Naval Infantry force$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$SENAN Unidad de Botes Especiales$$,$$SENAN- UBE$$,$$Maritime$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$PAN$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$SENAN Special Boat Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Servicio Nacional Aeronaval$$,$$SENAN$$,$$Maritime$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$PAN$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$National Air Naval Service$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Servicio Nacional de Fronteras$$,$$SENAFRONT$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$PAN$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$National Frontier Service$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Unidad de Fuerzas Especiales Contraterrorismo$$,$$PNP- UFEC$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$PAN$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Counter-Terror Special Forces Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Unidad Táctica de Operaciones Antidrogas$$,$$PNP- UTOA$$,$$Maritime$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$PAN$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Tactical Anti Drug Operations Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$5th  Peruvian Army Division$$,$$5th DIV$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$PER$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$5th Peruvian Army Division$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Comando de inteligencia y Operaciones Especiales Conjuntas$$,$$CIOEC$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$SCAR$$,$$$$,$$PER$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Joint Intelligence and Special Operations Command/Joint Speclal Forces$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Direccion Antidrogas Special Investigative Unit$$,$$DIRANDRO$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$SCAR$$,$$$$,$$PER$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$DIRANDRO Special Investigative Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Direccion Antidrogas Division de Operaciones Especiales Antidrogas$$,$$DIVOEAD$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$SCAR$$,$$$$,$$PER$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$National Police Special Operations/Counter-Drug Directorate$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Direccion de Operaciones Especiales$$,$$DlROES$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$SCAR$$,$$$$,$$PER$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Police Diretorate of Special Operations$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Fuerzas de Operaciones Especlales$$,$$FOES$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$SCAR$$,$$$$,$$PER$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Special Operations Forces$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Fuerzas Especiales Conjuntas$$,$$FEC$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$SCAR$$,$$$$,$$PER$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Joint Special Forces$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Grupo de Fuerzas Especiales - Peru$$,$$GRUFE-PER$$,$$Aviation$$,$$$$,$$$$,$$AIR FORCE$$,$$SCAR$$,$$$$,$$PER$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Air Force Special Opeartions Group$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Grupo de Operaciones Especiales - Peru$$,$$GOEs$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$PER$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Army Special Forces$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Subunidad de Acciones Tácticas$$,$$SUAT$$,$$Ground$$,$$$$,$$$$,$$OTHER SECURITY FORCE (Explain)$$,$$SCAR$$,$$$$,$$PER$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Lima Police- CT unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Agrupación de Comandos Anfibios$$,$$COMANFI$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$SCAR$$,$$$$,$$PRY$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Marine Special Operations Forces$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Batallon Conjunto de Fuerzas Especiales$$,$$BCFE$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$SCAR$$,$$$$,$$PRY$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Joint Special Forces Battalion$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Comandos de lnfanterla de Marina$$,$$COMIM$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$SCAR$$,$$$$,$$PRY$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Marine Infantry Command$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Fuerzas de Operaciones Especiales - PNP$$,$$FOPE$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$SCAR$$,$$$$,$$PRY$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Pollce Special Operations Force$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Prefectura General Naval$$,$$Prefectura$$,$$Maritime$$,$$$$,$$$$,$$COAST GUARD$$,$$SCAR$$,$$$$,$$PRY$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Coast Guard$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Prefectura General Naval Departamento Antidrogas$$,$$Dpto Antodrogas$$,$$Maritime$$,$$$$,$$$$,$$COAST GUARD$$,$$SCAR$$,$$$$,$$PRY$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Antinarcotics Group$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Regimiento de Escolta Presidencial$$,$$REP$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$PRY$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Counterterrorism/Hostage Rescue Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Servicio Nacional Antidrogas$$,$$SENAD$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$SCAR$$,$$$$,$$PRY$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$National Antidrug Service$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Tropas Especiales Del Ejercito$$,$$TEE$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$PRY$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Army Special Operations Forces$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$3rd and 5th Militar Zone D-Vs$$,$$3-5 MZ$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CENTAM$$,$$$$,$$SLV$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$3rd and 5th MIiitary Zone D-Vs$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Comando de Fuerzas Especiales$$,$$CFE$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CENTAM$$,$$$$,$$SLV$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Special Forces Command$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Comando Especial Antiterrorista$$,$$CEAT-SLV$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CENTAM$$,$$$$,$$SLV$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Army Special Operations Antiterrorism Command$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Fuerza Tarea Naval Tridente$$,$$FTNT$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$CENTAM$$,$$$$,$$SLV$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Naval Interdiction Task Force$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Unidad Táctica Especializada Policial$$,$$UTEP$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CENTAM$$,$$$$,$$SLV$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Specialized Police Tactical Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Grupo Conjunto Cuscatlán$$,$$GCC$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$CENTAM$$,$$$$,$$SLV$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Joint Group Cuscatlán$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Military Detachment$$,$$DM-5$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CENTAM$$,$$$$,$$SLV$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Military Detachment 5$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Destacamento Naval Puerto el Triunfo$$,$$PET$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$CENTAM$$,$$$$,$$SLV$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Puerto del Triunfo Naval Detachment$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Regimiento de Caballería Cavalry Regiment$$,$$RC$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CENTAM$$,$$$$,$$SLV$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Cavalry Regiment$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Segunda Brigada de infantería$$,$$21NBOE$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CENTAM$$,$$$$,$$SLV$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$2sn INF BOE$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Grupo de Operaciones Especiales- El Salvador$$,$$GOE$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CENTAM$$,$$$$,$$SLV$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Army Special Operations Group$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Army Korps Special Troepen$$,$$KST$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CARIB$$,$$$$,$$SUR$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Army Special Forces$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Counterterrorism Unit$$,$$CTU$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$CARIB$$,$$$$,$$SUR$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Counterterrorism Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Politie Anti Terreur Eenheld$$,$$ATE$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CARIB$$,$$$$,$$SUR$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Police Anti-Terror Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Politie Arrestatle Team$$,$$A-TM$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CARIB$$,$$$$,$$SUR$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$SWAT Team$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Coast Guard - Special Naval Unit$$,$$SNU$$,$$Maritime$$,$$$$,$$$$,$$COAST GUARD$$,$$CARIB$$,$$$$,$$TTO$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Coast Guard-Special Naval Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Multi-Optional Police Section$$,$$MOPS$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CARIB$$,$$$$,$$TTO$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Multi-Optional Police Section$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$National Security Special Operations Group$$,$$NSSOG$$,$$Ground$$,$$$$,$$$$,$$JOINT$$,$$CARIB$$,$$$$,$$TTO$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$National Security Special Operations Group$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Special Anti-Crime Unit $$,$$SUAn-DAT$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$CARIB$$,$$$$,$$TTO$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Special Anti-Crime Unit$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Special Forces Operations Detachment$$,$$SFOD$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$CARIB$$,$$$$,$$TTO$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Special Forces Operations Detachment$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Compania Especial Anti-Terrorista$$,$$CEAT-URY$$,$$Ground$$,$$$$,$$$$,$$ARMY$$,$$SCAR$$,$$$$,$$URY$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$14th Battalion Army Special Forces- Company$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Guardia Republicana-SWAT$$,$$GR-SWAT$$,$$Ground$$,$$$$,$$$$,$$NATIONAL POLICE$$,$$SCAR$$,$$$$,$$URY$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$URY National Response Police Force$$,$$$$,$$$$,$$$$,$$$$,$$$$),
(current_timestamp, current_timestamp,$$Seccion de Reconocimiento$$,$$SECRON$$,$$Maritime$$,$$$$,$$$$,$$NAVY$$,$$SCAR$$,$$$$,$$URY$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$$$,$$Navy Special Operations disbanded$$,$$$$,$$$$,$$$$,$$$$,$$$$)
;
