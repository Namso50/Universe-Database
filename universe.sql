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
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean,
    galaxy_types text
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
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    absolute_magnitude numeric,
    diameter_in_km numeric
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    name character varying NOT NULL,
    more_info_id integer NOT NULL,
    link text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_earth integer,
    has_life boolean,
    star_id integer NOT NULL,
    planet_types text,
    orbital_speed_in_km numeric
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
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    star_type text,
    solar_mass numeric
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
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 10000, true, 'spiral galaxy');
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf Galaxy', 13800, false, 'irregular galaxy');
INSERT INTO public.galaxy VALUES (3, 'Milky Way Galaxy', 13600, true, 'spiral galaxy');
INSERT INTO public.galaxy VALUES (4, 'Cygnus A', 3000, false, 'elliptical galaxy');
INSERT INTO public.galaxy VALUES (5, 'Maffei 1 and 2', 10000, false, 'lenticular galaxy');
INSERT INTO public.galaxy VALUES (6, 'Magellanic Clouds', 2400, false, 'irregular galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Halimede', 7, 10.0, 62);
INSERT INTO public.moon VALUES (20, 'Triton', 7, -1.2, 2705.2);
INSERT INTO public.moon VALUES (19, 'Laomedeia', 7, 10.8, 42);
INSERT INTO public.moon VALUES (18, 'Sao', 7, 11.1, 44);
INSERT INTO public.moon VALUES (17, 'Nereid', 7, 4.4, 357);
INSERT INTO public.moon VALUES (16, 'Umbriel', 6, 1.7, 1169.4);
INSERT INTO public.moon VALUES (15, 'Oberon', 6, 1.0, 1522.8);
INSERT INTO public.moon VALUES (14, 'Titania', 6, 0.8, 1576.8);
INSERT INTO public.moon VALUES (13, 'Ariel', 6, 1.0, 1157.8);
INSERT INTO public.moon VALUES (12, 'Miranda', 6, 3.5, 471.6);
INSERT INTO public.moon VALUES (10, 'Dione', 5, 0.4, 1122.8);
INSERT INTO public.moon VALUES (11, 'Pandora', 5, 6.6, 81.4);
INSERT INTO public.moon VALUES (9, 'Tethys', 5, 0.3, 1062.2);
INSERT INTO public.moon VALUES (8, 'Enceladus', 5, 1.8, 504.2);
INSERT INTO public.moon VALUES (7, 'Mimas', 5, 2.7, 396.4);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4, -2.1, 5268.2);
INSERT INTO public.moon VALUES (5, 'Metis', 4, 10.5, 43);
INSERT INTO public.moon VALUES (4, 'Callisto', 4, -1.2, 4820.6);
INSERT INTO public.moon VALUES (3, 'Europa', 4, -1.4, 3121.6);
INSERT INTO public.moon VALUES (2, 'Deimos', 3, NULL, 22.2);
INSERT INTO public.moon VALUES (1, 'Phobos', 3, NULL, 12.6);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES ('Star', 1, 'https://en.wikipedia.org/wiki/Star');
INSERT INTO public.more_info VALUES ('Planet', 2, 'https://en.wikipedia.org/wiki/Planet');
INSERT INTO public.more_info VALUES ('Galaxy', 3, 'https://en.wikipedia.org/wiki/Galaxy');
INSERT INTO public.more_info VALUES ('Moon', 4, 'https://en.wikipedia.org/wiki/Natural_satellite');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 77, false, 14, 'terrestrial planet', 47);
INSERT INTO public.planet VALUES (3, 'Mars', 54, false, 14, 'terrestrial planet', 24);
INSERT INTO public.planet VALUES (4, 'Jupiter', 588, false, 14, 'gas giant', 13);
INSERT INTO public.planet VALUES (5, 'Saturn', 1427, false, 14, 'gas giant', 9.6);
INSERT INTO public.planet VALUES (6, 'Uranus', 2600, false, 14, 'ice giant', 6.8);
INSERT INTO public.planet VALUES (7, 'Neptune', 4300, false, 14, 'ice giant', 6.8);
INSERT INTO public.planet VALUES (8, 'Ceres', 314, true, 14, 'dwarf planet', 17.9);
INSERT INTO public.planet VALUES (10, 'Haumea', 14433, false, 14, 'dwarf planet', 3.434);
INSERT INTO public.planet VALUES (11, 'Pluto', 7500, false, 14, 'dwarf planet', 4.743);
INSERT INTO public.planet VALUES (12, 'Makemake', 5610, false, 14, 'dwarf planet', 4.419);
INSERT INTO public.planet VALUES (2, 'Venus', 61, false, 14, 'terrestrial planet', 35);
INSERT INTO public.planet VALUES (9, 'Haumea', 7384, false, 14, 'dwarf planet', 4.484);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Iota Andromedae', 1, 'B-type main-sequence star', 3.1);
INSERT INTO public.star VALUES (3, 'Upsilon Andromedae', 1, 'F-type star', 1.3);
INSERT INTO public.star VALUES (4, 'Adhara', 2, 'B2II', 12.6);
INSERT INTO public.star VALUES (5, 'Aludra', 2, 'B5 la', 19.19);
INSERT INTO public.star VALUES (6, 'Amadioha', 2, 'G-class', 1.02);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 3, 'M5.5 Ve', 0.1221);
INSERT INTO public.star VALUES (8, 'Rigil Kentaurus', 3, 'G2V', 0.91);
INSERT INTO public.star VALUES (9, 'Toliman', 3, 'K1 V', 0.907);
INSERT INTO public.star VALUES (10, 'Deneb', 4, 'A2 la', 19);
INSERT INTO public.star VALUES (11, 'Gamma Cygni', 4, 'F8 lab', 12.11);
INSERT INTO public.star VALUES (12, 'Delta Cygni', 4, 'blue-white giant', 2.93);
INSERT INTO public.star VALUES (13, 'R71', 6, 'blue supergiant', 27);
INSERT INTO public.star VALUES (14, 'Sun', 3, 'yellow dwarf', 1);
INSERT INTO public.star VALUES (1, 'Delta Andromedae', 1, 'giant', 1.3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 14, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_more_info_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_more_info_id_key UNIQUE (more_info_id);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

