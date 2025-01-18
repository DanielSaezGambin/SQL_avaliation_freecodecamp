--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(25) NOT NULL,
    description text,
    age integer,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(25),
    distance_from_earth integer,
    planet_id integer NOT NULL,
    has_another boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(25),
    distance_from_earth integer,
    is_spherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(25),
    age_in_millions_of_years numeric,
    is_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: travels; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.travels (
    travels_id integer NOT NULL,
    name character varying(25) NOT NULL,
    ended boolean,
    start_date date,
    government character varying(30)
);


ALTER TABLE public.travels OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'primera', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'segunda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'tercera', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'cuarta', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'quinta', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'sexta', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'primera', NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, 'segunda', NULL, 2, NULL);
INSERT INTO public.moon VALUES (3, 'tercera', NULL, 1, NULL);
INSERT INTO public.moon VALUES (4, 'cuarta', NULL, 2, NULL);
INSERT INTO public.moon VALUES (5, 'quinta', NULL, 3, NULL);
INSERT INTO public.moon VALUES (6, 'sexta', NULL, 1, NULL);
INSERT INTO public.moon VALUES (7, 'septima', NULL, 2, NULL);
INSERT INTO public.moon VALUES (8, 'octava', NULL, 3, NULL);
INSERT INTO public.moon VALUES (9, 'novena', NULL, 1, NULL);
INSERT INTO public.moon VALUES (10, 'decima', NULL, 2, NULL);
INSERT INTO public.moon VALUES (11, 'onceava', NULL, 3, NULL);
INSERT INTO public.moon VALUES (12, 'doceava', NULL, 1, NULL);
INSERT INTO public.moon VALUES (13, 'treceava', NULL, 2, NULL);
INSERT INTO public.moon VALUES (14, 'catorceava', NULL, 3, NULL);
INSERT INTO public.moon VALUES (15, 'quinceava', NULL, 1, NULL);
INSERT INTO public.moon VALUES (16, 'dieciseisava', NULL, 2, NULL);
INSERT INTO public.moon VALUES (17, 'diecisieteava', NULL, 3, NULL);
INSERT INTO public.moon VALUES (18, 'dieciochoava', NULL, 1, NULL);
INSERT INTO public.moon VALUES (19, 'diecinueveava', NULL, 2, NULL);
INSERT INTO public.moon VALUES (20, 'veinteava', NULL, 3, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'primera', NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'segunda', NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'tercera', NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'cuarta', NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'quinta', NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'sexta', NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'septima', NULL, NULL, 2);
INSERT INTO public.planet VALUES (8, 'octava', NULL, NULL, 3);
INSERT INTO public.planet VALUES (9, 'novena', NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'decima', NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'onceava', NULL, NULL, 3);
INSERT INTO public.planet VALUES (12, 'doceava', NULL, NULL, 1);
INSERT INTO public.planet VALUES (13, 'treceava', NULL, NULL, 2);
INSERT INTO public.planet VALUES (14, 'catorceava', NULL, NULL, 3);
INSERT INTO public.planet VALUES (15, 'quinceava', NULL, NULL, 1);
INSERT INTO public.planet VALUES (16, 'dieciseisava', NULL, NULL, 2);
INSERT INTO public.planet VALUES (17, 'diecisieteava', NULL, NULL, 3);
INSERT INTO public.planet VALUES (18, 'dieciochoava', NULL, NULL, 1);
INSERT INTO public.planet VALUES (19, 'diecinueveava', NULL, NULL, 2);
INSERT INTO public.planet VALUES (20, 'veinteava', NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'primera', NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'segunda', NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'tercera', NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'cuarta', NULL, NULL, 2);
INSERT INTO public.star VALUES (5, 'quinta', NULL, NULL, 3);
INSERT INTO public.star VALUES (6, 'sexta', NULL, NULL, 1);


--
-- Data for Name: travels; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.travels VALUES (1, 'primero', NULL, NULL, NULL);
INSERT INTO public.travels VALUES (2, 'segundo', NULL, NULL, NULL);
INSERT INTO public.travels VALUES (3, 'tercero', NULL, NULL, NULL);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: travels travels_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.travels
    ADD CONSTRAINT travels_pkey PRIMARY KEY (travels_id);


--
-- Name: galaxy uniq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uniq_name UNIQUE (name);


--
-- Name: moon uniq_name_m; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uniq_name_m UNIQUE (name);


--
-- Name: planet uniq_name_p; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uniq_name_p UNIQUE (name);


--
-- Name: star uniq_name_s; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uniq_name_s UNIQUE (name);


--
-- Name: travels uniq_name_t; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.travels
    ADD CONSTRAINT uniq_name_t UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: star star_id_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

