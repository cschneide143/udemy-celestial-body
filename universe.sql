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
    name character varying(30) NOT NULL,
    count_of_stars integer NOT NULL,
    twitter_id integer,
    description text,
    has_life boolean,
    distance_from_earth_in_parsec numeric(4,1)
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
    name character varying(30) NOT NULL,
    age_in_million_years integer NOT NULL,
    num_of_rocks integer,
    description text,
    has_cheese boolean,
    distance_from_earth_in_parsec numeric(4,1),
    planet_id integer
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
    name character varying(30) NOT NULL,
    age_in_million_years integer NOT NULL,
    num_of_organisms integer,
    description text,
    is_spherical boolean,
    distance_from_earth_in_parsec numeric(4,1),
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
-- Name: scientist; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.scientist (
    scientist_id integer NOT NULL,
    name character varying(30) NOT NULL,
    years_of_experience integer,
    lab_number integer NOT NULL,
    summary_of_experience text,
    is_bald boolean,
    height_in_inches numeric(3,1)
);


ALTER TABLE public.scientist OWNER TO freecodecamp;

--
-- Name: scientists_scientist_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.scientists_scientist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scientists_scientist_id_seq OWNER TO freecodecamp;

--
-- Name: scientists_scientist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.scientists_scientist_id_seq OWNED BY public.scientist.scientist_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    twinkle_per_minute integer NOT NULL,
    num_of_sailormoon_friends integer,
    description text,
    has_kids boolean,
    distance_from_earth_in_parsec numeric(4,1),
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
-- Name: scientist scientist_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientist ALTER COLUMN scientist_id SET DEFAULT nextval('public.scientists_scientist_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Bellatrix', 8, 123, 'This is Bellatrix desription.', false, 1.5);
INSERT INTO public.galaxy VALUES (2, 'Cressida', 118, 234, 'This is Cressida desription.', true, 1.9);
INSERT INTO public.galaxy VALUES (3, 'Uranus', 188, 345, 'This is Uranus desription.', true, 2.1);
INSERT INTO public.galaxy VALUES (4, 'Arpina', 288, 456, 'This is Arpina desription.', true, 2.4);
INSERT INTO public.galaxy VALUES (5, 'Belinda', 888, 567, 'This is Belinda desription.', false, 3.1);
INSERT INTO public.galaxy VALUES (6, 'Carina', 888, 678, 'This is Carina desription.', true, 4.5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Eloisa', 1, 1, NULL, true, 1.1, 1);
INSERT INTO public.moon VALUES (2, 'Elena', 2, 1, NULL, true, 1.1, 1);
INSERT INTO public.moon VALUES (3, 'Eleonor', 3, 1, NULL, true, 1.1, 1);
INSERT INTO public.moon VALUES (4, 'Mercy', 4, 1, NULL, true, 1.1, 2);
INSERT INTO public.moon VALUES (5, 'Marrion', 5, 1, NULL, true, 1.1, 2);
INSERT INTO public.moon VALUES (6, 'Tina', 6, 1, NULL, true, 1.1, 2);
INSERT INTO public.moon VALUES (7, 'Arlene', 7, 1, NULL, true, 1.1, 2);
INSERT INTO public.moon VALUES (8, 'Krista', 8, 1, NULL, true, 1.1, 2);
INSERT INTO public.moon VALUES (9, 'Melissa', 9, 1, NULL, true, 1.1, 2);
INSERT INTO public.moon VALUES (10, 'Emma', 10, 1, NULL, true, 1.1, 3);
INSERT INTO public.moon VALUES (11, 'Crystal', 11, 1, NULL, true, 1.1, 3);
INSERT INTO public.moon VALUES (12, 'Joanna', 12, 1, NULL, true, 1.1, 3);
INSERT INTO public.moon VALUES (13, 'Nisha', 13, 1, NULL, true, 1.1, 3);
INSERT INTO public.moon VALUES (14, 'Celia', 14, 1, NULL, true, 1.1, 3);
INSERT INTO public.moon VALUES (15, 'Delia', 15, 1, NULL, true, 1.1, 3);
INSERT INTO public.moon VALUES (16, 'Nina', 16, 1, NULL, true, 1.1, 3);
INSERT INTO public.moon VALUES (17, 'Neria', 17, 1, NULL, true, 1.1, 3);
INSERT INTO public.moon VALUES (18, 'Criselle', 18, 1, NULL, true, 1.1, 3);
INSERT INTO public.moon VALUES (19, 'Marie', 19, 1, NULL, true, 1.1, 3);
INSERT INTO public.moon VALUES (20, 'Strawberry', 20, 1, NULL, true, 1.1, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 101, NULL, true, 1.1, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 2, 102, NULL, true, 2.1, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 4, 104, NULL, true, 4.1, 3);
INSERT INTO public.planet VALUES (4, 'Jupiter', 8, 88, NULL, false, 8.8, 4);
INSERT INTO public.planet VALUES (5, 'Saturn', 16, 168, NULL, false, 16.1, 5);
INSERT INTO public.planet VALUES (6, 'Uranus', 32, 88, NULL, false, 32.8, 6);
INSERT INTO public.planet VALUES (7, 'Neptune', 101, 88, NULL, true, 1.1, 1);
INSERT INTO public.planet VALUES (8, 'Mars Mercy', 102, 88, NULL, true, 1.1, 2);
INSERT INTO public.planet VALUES (9, 'Mars Arlene', 104, 88, NULL, true, 1.1, 3);
INSERT INTO public.planet VALUES (10, 'Mars Naina', 108, 88, NULL, true, 1.1, 3);
INSERT INTO public.planet VALUES (11, 'Mars Mayette', 116, 88, NULL, true, 1.1, 6);
INSERT INTO public.planet VALUES (12, 'Mars Tessa', 132, 88, NULL, true, 1.1, 6);


--
-- Data for Name: scientist; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.scientist VALUES (1, 'Joe', 15, 1, NULL, NULL, NULL);
INSERT INTO public.scientist VALUES (2, 'Brady', 21, 2, NULL, NULL, NULL);
INSERT INTO public.scientist VALUES (3, 'Todd', 18, 4, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Maia', 8, 3, 'Maia means great or mother', false, 8.3, 1);
INSERT INTO public.star VALUES (2, 'Marabel', 16, 6, 'Marabel star of the sea', true, 16.6, 2);
INSERT INTO public.star VALUES (3, 'Maritza', 32, 12, 'Maritza means of the sea', false, 32.1, 3);
INSERT INTO public.star VALUES (4, 'Nashira', 64, 24, 'Nashira means of the sea', true, 64.2, 4);
INSERT INTO public.star VALUES (5, 'Norma', 128, 48, 'Norma means the standard', true, 64.2, 5);
INSERT INTO public.star VALUES (6, 'Phoenix', 256, 96, 'Phoenix means dark red', true, 25.6, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: scientists_scientist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.scientists_scientist_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_twitter_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_twitter_id_key UNIQUE (twitter_id);


--
-- Name: moon moon_age_in_million_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_in_million_years_key UNIQUE (age_in_million_years);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_age_in_million_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_in_million_years_key UNIQUE (age_in_million_years);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: scientist scientists_lab_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientist
    ADD CONSTRAINT scientists_lab_number_key UNIQUE (lab_number);


--
-- Name: scientist scientists_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientist
    ADD CONSTRAINT scientists_pkey PRIMARY KEY (scientist_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_twinkle_per_minute_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_twinkle_per_minute_key UNIQUE (twinkle_per_minute);


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

