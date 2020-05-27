--
-- PostgreSQL database dump
--

-- Dumped from database version 11.8 (Ubuntu 11.8-1.pgdg19.10+1)
-- Dumped by pg_dump version 12.3 (Ubuntu 12.3-1.pgdg19.10+1)

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

--
-- Name: Assigned_Role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Assigned_Role" (
    assigned_role_id integer NOT NULL,
    user_id integer NOT NULL,
    role_id integer NOT NULL,
    organization_id integer,
    sub_organization_id integer
);


ALTER TABLE public."Assigned_Role" OWNER TO postgres;

--
-- Name: Assigned_Role_assigned_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Assigned_Role_assigned_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Assigned_Role_assigned_role_id_seq" OWNER TO postgres;

--
-- Name: Assigned_Role_assigned_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Assigned_Role_assigned_role_id_seq" OWNED BY public."Assigned_Role".assigned_role_id;


--
-- Name: Assigned_Role_organization_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Assigned_Role_organization_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Assigned_Role_organization_id_seq" OWNER TO postgres;

--
-- Name: Assigned_Role_organization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Assigned_Role_organization_id_seq" OWNED BY public."Assigned_Role".organization_id;


--
-- Name: Assigned_Role_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Assigned_Role_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Assigned_Role_role_id_seq" OWNER TO postgres;

--
-- Name: Assigned_Role_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Assigned_Role_role_id_seq" OWNED BY public."Assigned_Role".role_id;


--
-- Name: Assigned_Role_sub_organization_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Assigned_Role_sub_organization_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Assigned_Role_sub_organization_id_seq" OWNER TO postgres;

--
-- Name: Assigned_Role_sub_organization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Assigned_Role_sub_organization_id_seq" OWNED BY public."Assigned_Role".sub_organization_id;


--
-- Name: Assigned_Role_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Assigned_Role_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Assigned_Role_user_id_seq" OWNER TO postgres;

--
-- Name: Assigned_Role_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Assigned_Role_user_id_seq" OWNED BY public."Assigned_Role".user_id;


--
-- Name: Organization; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Organization" (
    organization_id integer NOT NULL,
    organization_name character varying(255) NOT NULL,
    organization_description character varying(1000) NOT NULL,
    organization_created_at timestamp with time zone NOT NULL,
    organization_updated_at timestamp with time zone NOT NULL,
    organization_logo text NOT NULL,
    organization_website text NOT NULL,
    organization_type character varying(255) DEFAULT 'private'::character varying NOT NULL,
    organization_size integer
);


ALTER TABLE public."Organization" OWNER TO postgres;

--
-- Name: Organization_organization_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Organization_organization_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Organization_organization_id_seq" OWNER TO postgres;

--
-- Name: Organization_organization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Organization_organization_id_seq" OWNED BY public."Organization".organization_id;


--
-- Name: Role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Role" (
    role_id integer NOT NULL,
    role_name character varying(255) NOT NULL
);


ALTER TABLE public."Role" OWNER TO postgres;

--
-- Name: Role_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Role_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Role_role_id_seq" OWNER TO postgres;

--
-- Name: Role_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Role_role_id_seq" OWNED BY public."Role".role_id;


--
-- Name: Sub_Organization; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Sub_Organization" (
    sub_organization_id integer NOT NULL,
    sub_organization_name character varying(255) NOT NULL,
    organization_id integer NOT NULL,
    sub_organization_description character varying(1000) NOT NULL,
    sub_organization_created_at timestamp with time zone NOT NULL,
    sub_organization_updated_at timestamp with time zone NOT NULL,
    sub_organization_logo text NOT NULL,
    sub_organization_website text NOT NULL,
    sub_organization_type character varying(255) NOT NULL,
    sub_organization_size integer
);


ALTER TABLE public."Sub_Organization" OWNER TO postgres;

--
-- Name: Sub_Organization_organization_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Sub_Organization_organization_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Sub_Organization_organization_id_seq" OWNER TO postgres;

--
-- Name: Sub_Organization_organization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Sub_Organization_organization_id_seq" OWNED BY public."Sub_Organization".organization_id;


--
-- Name: Sub_Organization_sub_organization_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Sub_Organization_sub_organization_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Sub_Organization_sub_organization_id_seq" OWNER TO postgres;

--
-- Name: Sub_Organization_sub_organization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Sub_Organization_sub_organization_id_seq" OWNED BY public."Sub_Organization".sub_organization_id;


--
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    user_id integer NOT NULL,
    user_name character varying(512) NOT NULL,
    user_first_name character varying(255) NOT NULL,
    user_password character varying DEFAULT 'false'::character varying NOT NULL,
    user_last_name character varying(255) NOT NULL,
    user_avatar text,
    user_gender character varying(10),
    user_email character varying(255) NOT NULL,
    user_email_verified boolean DEFAULT false NOT NULL,
    user_mobile bigint NOT NULL,
    user_mobile_verified boolean DEFAULT false NOT NULL,
    user_birthday date NOT NULL,
    user_biography text,
    user_active_status boolean DEFAULT false NOT NULL,
    user_time_zone timestamp with time zone
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- Name: User_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."User_user_id_seq" OWNER TO postgres;

--
-- Name: User_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_user_id_seq" OWNED BY public."User".user_id;


--
-- Name: Assigned_Role assigned_role_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Assigned_Role" ALTER COLUMN assigned_role_id SET DEFAULT nextval('public."Assigned_Role_assigned_role_id_seq"'::regclass);


--
-- Name: Assigned_Role user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Assigned_Role" ALTER COLUMN user_id SET DEFAULT nextval('public."Assigned_Role_user_id_seq"'::regclass);


--
-- Name: Assigned_Role role_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Assigned_Role" ALTER COLUMN role_id SET DEFAULT nextval('public."Assigned_Role_role_id_seq"'::regclass);


--
-- Name: Assigned_Role organization_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Assigned_Role" ALTER COLUMN organization_id SET DEFAULT nextval('public."Assigned_Role_organization_id_seq"'::regclass);


--
-- Name: Assigned_Role sub_organization_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Assigned_Role" ALTER COLUMN sub_organization_id SET DEFAULT nextval('public."Assigned_Role_sub_organization_id_seq"'::regclass);


--
-- Name: Organization organization_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Organization" ALTER COLUMN organization_id SET DEFAULT nextval('public."Organization_organization_id_seq"'::regclass);


--
-- Name: Role role_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Role" ALTER COLUMN role_id SET DEFAULT nextval('public."Role_role_id_seq"'::regclass);


--
-- Name: Sub_Organization sub_organization_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sub_Organization" ALTER COLUMN sub_organization_id SET DEFAULT nextval('public."Sub_Organization_sub_organization_id_seq"'::regclass);


--
-- Name: Sub_Organization organization_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sub_Organization" ALTER COLUMN organization_id SET DEFAULT nextval('public."Sub_Organization_organization_id_seq"'::regclass);


--
-- Name: User user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User" ALTER COLUMN user_id SET DEFAULT nextval('public."User_user_id_seq"'::regclass);


--
-- Data for Name: Assigned_Role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Assigned_Role" (assigned_role_id, user_id, role_id, organization_id, sub_organization_id) FROM stdin;
\.


--
-- Data for Name: Organization; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Organization" (organization_id, organization_name, organization_description, organization_created_at, organization_updated_at, organization_logo, organization_website, organization_type, organization_size) FROM stdin;
\.


--
-- Data for Name: Role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Role" (role_id, role_name) FROM stdin;
\.


--
-- Data for Name: Sub_Organization; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Sub_Organization" (sub_organization_id, sub_organization_name, organization_id, sub_organization_description, sub_organization_created_at, sub_organization_updated_at, sub_organization_logo, sub_organization_website, sub_organization_type, sub_organization_size) FROM stdin;
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" (user_id, user_name, user_first_name, user_password, user_last_name, user_avatar, user_gender, user_email, user_email_verified, user_mobile, user_mobile_verified, user_birthday, user_biography, user_active_status, user_time_zone) FROM stdin;
\.


--
-- Name: Assigned_Role_assigned_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Assigned_Role_assigned_role_id_seq"', 1, false);


--
-- Name: Assigned_Role_organization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Assigned_Role_organization_id_seq"', 1, false);


--
-- Name: Assigned_Role_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Assigned_Role_role_id_seq"', 1, false);


--
-- Name: Assigned_Role_sub_organization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Assigned_Role_sub_organization_id_seq"', 1, false);


--
-- Name: Assigned_Role_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Assigned_Role_user_id_seq"', 1, false);


--
-- Name: Organization_organization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Organization_organization_id_seq"', 1, false);


--
-- Name: Role_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Role_role_id_seq"', 1, false);


--
-- Name: Sub_Organization_organization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Sub_Organization_organization_id_seq"', 1, false);


--
-- Name: Sub_Organization_sub_organization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Sub_Organization_sub_organization_id_seq"', 1, false);


--
-- Name: User_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_user_id_seq"', 1, false);


--
-- Name: Assigned_Role Assigned_Role_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Assigned_Role"
    ADD CONSTRAINT "Assigned_Role_pk" PRIMARY KEY (assigned_role_id);


--
-- Name: Organization Organization_organization_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Organization"
    ADD CONSTRAINT "Organization_organization_name_key" UNIQUE (organization_name);


--
-- Name: Organization Organization_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Organization"
    ADD CONSTRAINT "Organization_pk" PRIMARY KEY (organization_id);


--
-- Name: Role Role_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Role"
    ADD CONSTRAINT "Role_pk" PRIMARY KEY (role_id);


--
-- Name: Sub_Organization Sub_Organization_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sub_Organization"
    ADD CONSTRAINT "Sub_Organization_pk" PRIMARY KEY (sub_organization_id);


--
-- Name: User User_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pk" PRIMARY KEY (user_id);


--
-- Name: Assigned_Role Assigned_Role_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Assigned_Role"
    ADD CONSTRAINT "Assigned_Role_fk0" FOREIGN KEY (user_id) REFERENCES public."User"(user_id);


--
-- Name: Assigned_Role Assigned_Role_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Assigned_Role"
    ADD CONSTRAINT "Assigned_Role_fk1" FOREIGN KEY (role_id) REFERENCES public."Role"(role_id);


--
-- Name: Assigned_Role Assigned_Role_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Assigned_Role"
    ADD CONSTRAINT "Assigned_Role_fk2" FOREIGN KEY (organization_id) REFERENCES public."Organization"(organization_id);


--
-- Name: Assigned_Role Assigned_Role_fk3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Assigned_Role"
    ADD CONSTRAINT "Assigned_Role_fk3" FOREIGN KEY (sub_organization_id) REFERENCES public."Sub_Organization"(sub_organization_id);


--
-- Name: Sub_Organization Sub_Organization_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sub_Organization"
    ADD CONSTRAINT "Sub_Organization_fk0" FOREIGN KEY (organization_id) REFERENCES public."Organization"(organization_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

