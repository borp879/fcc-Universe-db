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
    name character varying(20) NOT NULL,
    neighbour boolean,
    group_name character varying(50),
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer,
    description text,
    weight integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    weight numeric(2,1),
    researched boolean,
    surface integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    surface integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: visits; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.visits (
    visits_id integer NOT NULL,
    name_expedition character varying(50),
    name character varying(50) NOT NULL
);


ALTER TABLE public.visits OWNER TO freecodecamp;

--
-- Name: visits_visits_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.visits_visits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visits_visits_id_seq OWNER TO freecodecamp;

--
-- Name: visits_visits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.visits_visits_id_seq OWNED BY public.visits.visits_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: visits visits_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.visits ALTER COLUMN visits_id SET DEFAULT nextval('public.visits_visits_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', true, 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (2, 'Antennae', false, 'Corvus', NULL);
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', false, 'Centaurus', NULL);
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', false, 'Coma Berenices', NULL);
INSERT INTO public.galaxy VALUES (5, 'Bode Galaxy', false, 'Ursa Major', NULL);
INSERT INTO public.galaxy VALUES (6, 'Butterfly Galaxy', false, 'Virgo', NULL);
INSERT INTO public.galaxy VALUES (7, 'Cartwheel Galaxy', false, 'Sculptor', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'x1', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'x2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'x3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'x4', 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'x5', 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'x6', 6, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'x7', 7, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'x8', 8, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'x9', 9, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'x10', 10, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'x11', 1, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'x12', 2, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'x13', 3, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'x14', 4, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'x15', 5, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'x16', 6, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'x17', 7, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'x18', 8, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'x19', 9, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'x20', 10, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'z1', NULL, true, NULL, 3);
INSERT INTO public.planet VALUES (2, 'z2', NULL, true, NULL, 3);
INSERT INTO public.planet VALUES (3, 'z3', NULL, false, NULL, 2);
INSERT INTO public.planet VALUES (4, 'z4', NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (5, 'z5', NULL, false, NULL, 2);
INSERT INTO public.planet VALUES (6, 'z6', NULL, true, NULL, 3);
INSERT INTO public.planet VALUES (7, 'z7', NULL, true, NULL, 3);
INSERT INTO public.planet VALUES (8, 'z8', NULL, false, NULL, 2);
INSERT INTO public.planet VALUES (9, 'z9', NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (10, 'z10', NULL, false, NULL, 2);
INSERT INTO public.planet VALUES (11, 'z11', NULL, true, NULL, 3);
INSERT INTO public.planet VALUES (12, 'z12', NULL, true, NULL, 3);
INSERT INTO public.planet VALUES (13, 'z13', NULL, false, NULL, 2);
INSERT INTO public.planet VALUES (14, 'z14', NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (15, 'z15', NULL, false, NULL, 2);
INSERT INTO public.planet VALUES (16, 'z16', NULL, true, NULL, 3);
INSERT INTO public.planet VALUES (17, 'z17', NULL, true, NULL, 3);
INSERT INTO public.planet VALUES (18, 'z18', NULL, false, NULL, 2);
INSERT INTO public.planet VALUES (19, 'z19', NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (20, 'z20', NULL, false, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'G1', NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'WASP-1', NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Ross 248', NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'HAT-P-19', NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'HAT-P-28', NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'GRB 34', NULL, NULL, 1);
INSERT INTO public.star VALUES (7, 'HD 5583', NULL, NULL, 1);


--
-- Data for Name: visits; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.visits VALUES (1, 'a1', 'aa');
INSERT INTO public.visits VALUES (2, 'a2', 'ab');
INSERT INTO public.visits VALUES (3, 'a3', 'ac');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: visits_visits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.visits_visits_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_uniq UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: visits name_expedition_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.visits
    ADD CONSTRAINT name_expedition_uniq UNIQUE (name_expedition);


--
-- Name: galaxy name_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_uniq UNIQUE (name);


--
-- Name: planet planet_name_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_uniq UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_uniq UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: visits visits_name_expedition_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.visits
    ADD CONSTRAINT visits_name_expedition_key UNIQUE (name_expedition);


--
-- Name: visits visits_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.visits
    ADD CONSTRAINT visits_pkey PRIMARY KEY (visits_id);


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
-- PostgreSQL database dump complete
--
