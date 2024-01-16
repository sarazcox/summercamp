--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

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
-- Name: accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts (
    id integer NOT NULL,
    email character varying(64) NOT NULL,
    password character varying(50) NOT NULL,
    balance money NOT NULL
);


ALTER TABLE public.accounts OWNER TO postgres;

--
-- Name: accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_id_seq OWNER TO postgres;

--
-- Name: accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_id_seq OWNED BY public.accounts.id;


--
-- Name: campers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.campers (
    id integer NOT NULL,
    name text NOT NULL,
    age integer NOT NULL,
    gender text,
    account_id integer NOT NULL
);


ALTER TABLE public.campers OWNER TO postgres;

--
-- Name: campers_camps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.campers_camps (
    camper_id integer NOT NULL,
    camp_id integer NOT NULL
);


ALTER TABLE public.campers_camps OWNER TO postgres;

--
-- Name: campers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.campers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.campers_id_seq OWNER TO postgres;

--
-- Name: campers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.campers_id_seq OWNED BY public.campers.id;


--
-- Name: campers_programs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.campers_programs (
    camper_id integer NOT NULL,
    program_id integer NOT NULL
);


ALTER TABLE public.campers_programs OWNER TO postgres;

--
-- Name: camps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.camps (
    id integer NOT NULL,
    camp_name text NOT NULL,
    location character varying NOT NULL
);


ALTER TABLE public.camps OWNER TO postgres;

--
-- Name: camps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.camps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.camps_id_seq OWNER TO postgres;

--
-- Name: camps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.camps_id_seq OWNED BY public.camps.id;


--
-- Name: camps_programs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.camps_programs (
    camp_id integer NOT NULL,
    program_id integer NOT NULL
);


ALTER TABLE public.camps_programs OWNER TO postgres;

--
-- Name: programs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.programs (
    id integer NOT NULL,
    program_type text NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    price money NOT NULL
);


ALTER TABLE public.programs OWNER TO postgres;

--
-- Name: programs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.programs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.programs_id_seq OWNER TO postgres;

--
-- Name: programs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.programs_id_seq OWNED BY public.programs.id;


--
-- Name: accounts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_id_seq'::regclass);


--
-- Name: campers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campers ALTER COLUMN id SET DEFAULT nextval('public.campers_id_seq'::regclass);


--
-- Name: camps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camps ALTER COLUMN id SET DEFAULT nextval('public.camps_id_seq'::regclass);


--
-- Name: programs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programs ALTER COLUMN id SET DEFAULT nextval('public.programs_id_seq'::regclass);


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts (id, email, password, balance) FROM stdin;
2	j.cassidy23@example.com	7Im$7tq#8Q1N	$50.00
3	tabitha_english@gmail.com	oren94RR	$704.00
4	tom.potter@someschool.edu	RYWL63^=qq	$227.00
5	ada_515_solomon@yahoo.com	ffhwof!11	$124.00
6	tanner.harold.london@gmail.com	oie429JFLAA	$0.00
7	bianca-robertson07	ff9ND0&)r	$199.00
8	ja_irobarrett@outlook.com	fjldkeiw03	$0.00
9	freesidney8@icloud.com	9kle09LKD!	$138.00
10	marco_mar44@yahoo.com	OIO93ff#	$37.00
1	amiah.marks9.gmail.com	093jLAOE	$0.00
\.


--
-- Data for Name: campers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.campers (id, name, age, gender, account_id) FROM stdin;
1	Amiah Marks	14	female	1
2	Cassidy Jonhson	16	female	2
3	Tabitha English	14	female	3
4	Tommy Potter	17	male	4
6	Harold Tanner	15	male	6
7	Bianca Robertson	14	female	7
8	Jairo Barret	15	male	8
9	Sidney Freeman	16	female	9
5	Ada Solomon	15	\N	5
10	Marco Williams	16	\N	10
\.


--
-- Data for Name: campers_camps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.campers_camps (camper_id, camp_id) FROM stdin;
2	1
5	1
6	1
7	1
1	2
2	2
4	2
7	2
9	2
10	2
\.


--
-- Data for Name: campers_programs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.campers_programs (camper_id, program_id) FROM stdin;
2	3
5	1
5	6
6	9
7	9
1	8
2	1
2	7
4	5
7	2
9	2
10	2
10	5
10	8
\.


--
-- Data for Name: camps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.camps (id, camp_name, location) FROM stdin;
1	Xtreme Acro	14702 Southlawn Ln, Rockville, MD 20850
2	Silver Stars	2701 Pittman Dr, Silver Spring, MD 20910
\.


--
-- Data for Name: camps_programs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.camps_programs (camp_id, program_id) FROM stdin;
1	1
1	2
1	3
1	4
1	5
1	6
1	7
1	8
1	9
2	1
2	2
2	3
2	4
2	5
2	6
2	7
2	8
2	9
\.


--
-- Data for Name: programs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.programs (id, program_type, start_date, end_date, price) FROM stdin;
1	parkour	2023-06-19	2023-06-23	$295.00
2	tumbling	2023-06-19	2023-06-23	$285.00
3	gymnastics	2023-06-19	2023-06-23	$300.00
4	parkour	2023-06-26	2023-06-30	$295.00
5	tumbling	2023-06-26	2023-06-30	$285.00
6	gymnastics	2023-06-26	2023-06-30	$300.00
7	parkour	2023-07-10	2023-07-14	$295.00
8	tumbling	2023-07-10	2023-07-14	$285.00
9	gymnastics	2023-07-10	2023-07-14	$300.00
\.


--
-- Name: accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_id_seq', 21, true);


--
-- Name: campers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.campers_id_seq', 12, true);


--
-- Name: camps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.camps_id_seq', 2, true);


--
-- Name: programs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.programs_id_seq', 9, true);


--
-- Name: accounts accounts_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_email_key UNIQUE (email);


--
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- Name: campers_camps campers_camps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campers_camps
    ADD CONSTRAINT campers_camps_pkey PRIMARY KEY (camper_id, camp_id);


--
-- Name: campers campers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campers
    ADD CONSTRAINT campers_pkey PRIMARY KEY (id);


--
-- Name: campers_programs campers_programs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campers_programs
    ADD CONSTRAINT campers_programs_pkey PRIMARY KEY (camper_id, program_id);


--
-- Name: camps camps_camp_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camps
    ADD CONSTRAINT camps_camp_name_key UNIQUE (camp_name);


--
-- Name: camps camps_location_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camps
    ADD CONSTRAINT camps_location_key UNIQUE (location);


--
-- Name: camps camps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camps
    ADD CONSTRAINT camps_pkey PRIMARY KEY (id);


--
-- Name: camps_programs camps_programs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camps_programs
    ADD CONSTRAINT camps_programs_pkey PRIMARY KEY (camp_id, program_id);


--
-- Name: programs programs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programs
    ADD CONSTRAINT programs_pkey PRIMARY KEY (id);


--
-- Name: campers fk_campers_accounts; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campers
    ADD CONSTRAINT fk_campers_accounts FOREIGN KEY (account_id) REFERENCES public.accounts(id);


--
-- Name: campers_camps fk_campers_camps_campers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campers_camps
    ADD CONSTRAINT fk_campers_camps_campers FOREIGN KEY (camper_id) REFERENCES public.campers(id);


--
-- Name: campers_camps fk_campers_camps_camps; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campers_camps
    ADD CONSTRAINT fk_campers_camps_camps FOREIGN KEY (camp_id) REFERENCES public.camps(id);


--
-- Name: campers_programs fk_campers_programs_campers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campers_programs
    ADD CONSTRAINT fk_campers_programs_campers FOREIGN KEY (camper_id) REFERENCES public.campers(id);


--
-- Name: campers_programs fk_campers_programs_programs; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campers_programs
    ADD CONSTRAINT fk_campers_programs_programs FOREIGN KEY (program_id) REFERENCES public.programs(id);


--
-- Name: camps_programs fk_camps_programs_camps; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camps_programs
    ADD CONSTRAINT fk_camps_programs_camps FOREIGN KEY (camp_id) REFERENCES public.camps(id);


--
-- Name: camps_programs fk_camps_programs_programs; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camps_programs
    ADD CONSTRAINT fk_camps_programs_programs FOREIGN KEY (program_id) REFERENCES public.programs(id);


--
-- PostgreSQL database dump complete
--

