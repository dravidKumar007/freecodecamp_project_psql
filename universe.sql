--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    b boolean NOT NULL,
    a boolean NOT NULL,
    t text,
    p integer,
    q integer,
    c numeric(10,10)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_g_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_g_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_g_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    a boolean NOT NULL,
    b boolean NOT NULL,
    t text,
    p integer,
    q integer,
    c numeric(10,10),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_m_id_seq OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_m_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer,
    b boolean NOT NULL,
    a boolean NOT NULL,
    t text,
    p integer,
    q integer,
    c numeric(10,10)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_p_id_seq OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_p_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer,
    a boolean NOT NULL,
    b boolean NOT NULL,
    t text,
    p integer,
    q integer,
    c numeric(10,10)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_s_id_seq OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_s_id_seq OWNED BY public.star.star_id;


--
-- Name: x; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.x (
    name character varying(30),
    x_id integer NOT NULL,
    p integer,
    q integer,
    a boolean NOT NULL,
    b boolean NOT NULL,
    t text,
    c numeric(10,10),
    moon_id integer
);


ALTER TABLE public.x OWNER TO freecodecamp;

--
-- Name: x_x_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.x_x_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.x_x_id_seq OWNER TO freecodecamp;

--
-- Name: x_x_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.x_x_id_seq OWNED BY public.x.x_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_g_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_m_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_p_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_s_id_seq'::regclass);


--
-- Name: x x_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.x ALTER COLUMN x_id SET DEFAULT nextval('public.x_x_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', true, true, 'a', 1, 1, 0.1000000000);
INSERT INTO public.galaxy VALUES (2, 'a', true, true, 'b', 1, 1, 0.1000000000);
INSERT INTO public.galaxy VALUES (3, 'a', true, true, 'c', 1, 1, 0.1000000000);
INSERT INTO public.galaxy VALUES (4, 'a', true, true, 'd', 1, 1, 0.1000000000);
INSERT INTO public.galaxy VALUES (5, 'a', true, true, 'e', 1, 1, 0.1000000000);
INSERT INTO public.galaxy VALUES (6, 'a', true, true, 'f', 1, 1, 0.1000000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'a', true, true, 'a', 1, 1, 0.1000000000, 1);
INSERT INTO public.moon VALUES (3, 'a', true, true, 'b', 1, 1, 0.1000000000, 2);
INSERT INTO public.moon VALUES (4, 'a', true, true, 'c', 1, 1, 0.1000000000, 3);
INSERT INTO public.moon VALUES (5, 'a', true, true, 'd', 1, 1, 0.1000000000, 4);
INSERT INTO public.moon VALUES (6, 'a', true, true, 'e', 1, 1, 0.1000000000, 5);
INSERT INTO public.moon VALUES (7, 'a', true, true, 'f', 1, 1, 0.1000000000, 6);
INSERT INTO public.moon VALUES (8, 'a', true, true, 'g', 1, 1, 0.1000000000, 8);
INSERT INTO public.moon VALUES (9, 'a', true, true, 'h', 1, 1, 0.1000000000, 9);
INSERT INTO public.moon VALUES (10, 'a', true, true, 'i', 1, 1, 0.1000000000, 10);
INSERT INTO public.moon VALUES (11, 'a', true, true, 'j', 1, 1, 0.1000000000, 11);
INSERT INTO public.moon VALUES (12, 'a', true, true, 'k', 1, 1, 0.1000000000, 12);
INSERT INTO public.moon VALUES (13, 'a', true, true, 'l', 1, 1, 0.1000000000, 13);
INSERT INTO public.moon VALUES (14, 'a', true, true, 'm', 1, 1, 0.1000000000, 13);
INSERT INTO public.moon VALUES (15, 'a', true, true, 'n', 1, 1, 0.1000000000, 13);
INSERT INTO public.moon VALUES (16, 'a', true, true, 'o', 1, 1, 0.1000000000, 13);
INSERT INTO public.moon VALUES (17, 'a', true, true, 'p', 1, 1, 0.1000000000, 13);
INSERT INTO public.moon VALUES (18, 'a', true, true, 'q', 1, 1, 0.1000000000, 13);
INSERT INTO public.moon VALUES (19, 'a', true, true, 'rd', 1, 1, 0.1000000000, 13);
INSERT INTO public.moon VALUES (20, 'a', true, true, 'rbfb', 1, 1, 0.1000000000, 13);
INSERT INTO public.moon VALUES (21, 'a', true, true, '11', 1, 1, 0.1000000000, 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', 1, true, true, 'a', 1, 1, 0.1000000000);
INSERT INTO public.planet VALUES (2, 'a', 2, true, true, 'b', 1, 1, 0.1000000000);
INSERT INTO public.planet VALUES (3, 'a', 3, true, true, 'c', 1, 1, 0.1000000000);
INSERT INTO public.planet VALUES (4, 'a', 4, true, true, 'd', 1, 1, 0.1000000000);
INSERT INTO public.planet VALUES (5, 'a', 5, true, true, 'e', 1, 1, 0.1000000000);
INSERT INTO public.planet VALUES (6, 'a', 6, true, true, 'f', 1, 1, 0.1000000000);
INSERT INTO public.planet VALUES (8, 'a', 1, true, true, 'i', 1, 1, 0.1000000000);
INSERT INTO public.planet VALUES (9, 'a', 2, true, true, 'j', 1, 1, 0.1000000000);
INSERT INTO public.planet VALUES (10, 'a', 3, true, true, 'k', 1, 1, 0.1000000000);
INSERT INTO public.planet VALUES (11, 'a', 4, true, true, 'l', 1, 1, 0.1000000000);
INSERT INTO public.planet VALUES (12, 'a', 5, true, true, 'm', 1, 1, 0.1000000000);
INSERT INTO public.planet VALUES (13, 'a', 6, true, true, 'n', 1, 1, 0.1000000000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a', 1, true, true, 'a', 1, 1, 0.1000000000);
INSERT INTO public.star VALUES (2, 'a', 2, true, true, 'b', 1, 1, 0.1000000000);
INSERT INTO public.star VALUES (3, 'a', 3, true, true, 'c', 1, 1, 0.1000000000);
INSERT INTO public.star VALUES (4, 'a', 4, true, true, 'd', 1, 1, 0.1000000000);
INSERT INTO public.star VALUES (5, 'a', 6, true, true, 'e', 1, 1, 0.1000000000);
INSERT INTO public.star VALUES (6, 'a', 5, true, true, 'f', 1, 1, 0.1000000000);


--
-- Data for Name: x; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.x VALUES ('a', 2, 1, 1, true, true, 'sd', 0.1000000000, 2);
INSERT INTO public.x VALUES ('a', 4, 1, 1, true, true, 'sdf', 0.1000000000, 3);
INSERT INTO public.x VALUES ('a', 5, 1, 1, true, true, 'sddf', 0.1000000000, 4);


--
-- Name: galaxy_g_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_g_id_seq', 6, true);


--
-- Name: moon_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_m_id_seq', 21, true);


--
-- Name: planet_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_p_id_seq', 13, true);


--
-- Name: star_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_s_id_seq', 6, true);


--
-- Name: x_x_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.x_x_id_seq', 5, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_t_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_t_key UNIQUE (t);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_t_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_t_key UNIQUE (t);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_t_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_t_key UNIQUE (t);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_t_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_t_key UNIQUE (t);


--
-- Name: x x_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.x
    ADD CONSTRAINT x_pkey PRIMARY KEY (x_id);


--
-- Name: x x_t_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.x
    ADD CONSTRAINT x_t_key UNIQUE (t);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: x x_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.x
    ADD CONSTRAINT x_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- PostgreSQL database dump complete
--

