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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    mass integer,
    distance numeric(4,2),
    full_name text,
    abitable boolean,
    create_light boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    mass integer,
    distance numeric(4,2),
    full_name text,
    abitable boolean,
    create_light boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    mass integer,
    distance numeric(4,2),
    full_name text,
    abitable boolean,
    create_light boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    mass integer,
    distance numeric(4,2),
    full_name text,
    abitable boolean,
    create_light boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'ABJ13', 1);
INSERT INTO public.asteroid VALUES (2, 'HJJQGSHG6', 1);
INSERT INTO public.asteroid VALUES (3, 'JKJHSA72', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 200, 500, 12.30, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'ANKSJ7GS2', 2140, 1002, 50.46, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'KAHD82KD8', 670, 605, 34.00, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'AKABF73K', 356, 123, 70.10, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'JAJDLGBVZ', 926, 355, 10.54, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'KKJDS8H2D', 122, 935, 60.23, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', 25, 3, 25.00, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Moon2', 25, 3, 25.00, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'Moon1', 34, 4, 35.00, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (4, 'Moon2', 34, 4, 35.00, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'Moon3', 43, 8, 54.00, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (6, 'Moon4', 29, 1, 54.00, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (7, 'Moon5', 29, 1, 54.00, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (8, 'Moon6', 29, 1, 54.00, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (9, 'Moon7', 29, 1, 54.00, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (10, 'Moon8', 29, 1, 54.00, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (11, 'Moon9', 29, 1, 54.00, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Moon10', 29, 1, 54.00, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Moon11', 29, 1, 54.00, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (14, 'Moon12', 29, 1, 54.00, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (15, 'Moon13', 29, 1, 54.00, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (16, 'Moon14', 29, 1, 54.00, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (17, 'Moon15', 29, 1, 54.00, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (18, 'Moon16', 29, 1, 54.00, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (19, 'Moon17', 29, 1, 54.00, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (20, 'Moon18', 29, 1, 54.00, NULL, NULL, NULL, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mars', 50, 10, 20.00, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Jupter', 50, 80, 80.00, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'KJFJA83', 23, 32, 57.00, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'SUHJS', 84, 38, 29.00, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'JHJAH7', 99, 15, 18.00, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'KJD7SH', 84, 19, 53.00, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'KJFJA83', 23, 32, 57.00, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (8, 'SUHJS', 84, 38, 29.00, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (9, 'JHJAH7', 99, 15, 18.00, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (10, 'KJD7SH', 84, 19, 53.00, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'KJFJA83', 23, 32, 57.00, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (12, 'SUHJS', 84, 38, 29.00, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (13, 'JHJAH7', 99, 15, 18.00, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 200, 500, 12.30, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'JJKAVER2', 902, 18, 52.30, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'LAKKLDG', 936, 87, 19.03, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (4, 'LAJHJWUD', 36, 37, 10.99, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (5, 'LA9DJF6', 103, 104, 69.69, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (6, 'AAA1A1A', 402, 204, 42.69, NULL, NULL, NULL, 3);


--
-- Name: asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: asteroid id_asteroid; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT id_asteroid UNIQUE (asteroid_id);


--
-- Name: moon id_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT id_moon UNIQUE (moon_id);


--
-- Name: planet id_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT id_planet UNIQUE (planet_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: star name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_star UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_id_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_id_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_id_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

