--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Homebrew)
-- Dumped by pg_dump version 14.7 (Homebrew)

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
-- Name: projects; Type: TABLE; Schema: public; Owner: Emiko
--

CREATE TABLE public.projects (
    title character varying(20) NOT NULL,
    description text,
    max_grade integer
);


ALTER TABLE public.projects OWNER TO "Emiko";

--
-- Name: students; Type: TABLE; Schema: public; Owner: Emiko
--

CREATE TABLE public.students (
    github character varying(30) NOT NULL,
    first_name character varying(30),
    last_name character varying(30)
);


ALTER TABLE public.students OWNER TO "Emiko";

--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: Emiko
--

COPY public.projects (title, description, max_grade) FROM stdin;
Markov	Tweets generated from Markov chains	50
Blockly	Programmatic Logic Puzzle Game	100
Sharkwords	Learn Javascript through a game	80
Coffee Tracker	Find ALL coffee	1000
Tea Tracker	Find ALL THE TEA	1000
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: Emiko
--

COPY public.students (github, first_name, last_name) FROM stdin;
jhacks	Jane	Hacker
sdevelops	Sarah	Developer
\.


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: Emiko
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (title);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: Emiko
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (github);


--
-- PostgreSQL database dump complete
--

