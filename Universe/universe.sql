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
    radio_in_al integer,
    age_in_million_years integer,
    type_of_galaxy_id integer NOT NULL
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    gravity_in_ms2 numeric(5,4),
    period_of_rotation character varying(30)
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
    star_id integer,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean
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
    name character varying(30) NOT NULL,
    diameter_in_km integer,
    type_of_star character varying(30) NOT NULL,
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
-- Name: type_of_galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.type_of_galaxy (
    type_of_galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.type_of_galaxy OWNER TO freecodecamp;

--
-- Name: type_of_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.type_of_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.type_of_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: type_of_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.type_of_galaxy_type_id_seq OWNED BY public.type_of_galaxy.type_of_galaxy_id;


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
-- Name: type_of_galaxy type_of_galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type_of_galaxy ALTER COLUMN type_of_galaxy_id SET DEFAULT nextval('public.type_of_galaxy_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vía Láctea', 52850, 13, 1);
INSERT INTO public.galaxy VALUES (2, 'Andrómeda', 110000, 10, 1);
INSERT INTO public.galaxy VALUES (3, 'Galaxia NGC221', 3250, NULL, 2);
INSERT INTO public.galaxy VALUES (4, 'Messier 39', NULL, NULL, 2);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 48500, NULL, 3);
INSERT INTO public.galaxy VALUES (6, 'Nube de Magallanes', 3500, NULL, 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 4, 'Luna', 1.6200, '27 días');
INSERT INTO public.moon VALUES (2, 5, 'Fobos', 0.0057, '8 horas');
INSERT INTO public.moon VALUES (3, 5, 'Deimos', 0.0030, '30 horas');
INSERT INTO public.moon VALUES (4, 6, 'Europa', 1.3150, '85 horas');
INSERT INTO public.moon VALUES (5, 6, 'Ío', 1.7960, '42 horas');
INSERT INTO public.moon VALUES (6, 6, 'Ganimedes', 1.4280, '172 horas');
INSERT INTO public.moon VALUES (7, 6, 'Calisto', 1.2360, '17 días');
INSERT INTO public.moon VALUES (8, 6, 'Amaltea', 0.0200, '12 horas');
INSERT INTO public.moon VALUES (9, 6, 'Himalia', 0.0620, '248 días');
INSERT INTO public.moon VALUES (10, 6, 'Adrastea', 0.0070, '7 horas');
INSERT INTO public.moon VALUES (11, 6, 'Cilene', 0.0010, '738 días');
INSERT INTO public.moon VALUES (12, 6, 'Euporia', 0.0010, '551 días');
INSERT INTO public.moon VALUES (13, 6, 'Tebe', 0.0400, '16 horas');
INSERT INTO public.moon VALUES (14, 6, 'Megaclite', 0.0020, '792 días');
INSERT INTO public.moon VALUES (15, 6, 'Carmé', 0.0170, '702 días');
INSERT INTO public.moon VALUES (16, 7, 'Titán', 1.3520, '16 días');
INSERT INTO public.moon VALUES (17, 8, 'Miranda', 0.0790, '34 horas');
INSERT INTO public.moon VALUES (18, 9, 'Tritón', 0.7790, '141 horas');
INSERT INTO public.moon VALUES (19, 9, 'Nereida', 0.0710, '360 días');
INSERT INTO public.moon VALUES (20, 9, 'Neso', 0.0120, '27 años');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 5, 'Mercurio', false, true);
INSERT INTO public.planet VALUES (3, 5, 'Venus', false, true);
INSERT INTO public.planet VALUES (4, 5, 'Tierra', true, true);
INSERT INTO public.planet VALUES (5, 5, 'Marte', false, true);
INSERT INTO public.planet VALUES (6, 5, 'Jupiter', false, true);
INSERT INTO public.planet VALUES (7, 5, 'Saturno', false, true);
INSERT INTO public.planet VALUES (8, 5, 'Urano', false, true);
INSERT INTO public.planet VALUES (9, 5, 'Neptuno', false, true);
INSERT INTO public.planet VALUES (10, NULL, '6 Lyn b', false, true);
INSERT INTO public.planet VALUES (11, NULL, '8 Umi b', false, true);
INSERT INTO public.planet VALUES (12, NULL, '7 CMa b', false, true);
INSERT INTO public.planet VALUES (13, NULL, '11 Com b', false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (5, 'Sol', 1391016, 'G2V', 1);
INSERT INTO public.star VALUES (6, 'Alpheratz', NULL, 'Binaria', 2);
INSERT INTO public.star VALUES (7, 'Sirio', NULL, 'Enana blanca', NULL);
INSERT INTO public.star VALUES (8, 'Canopus', NULL, 'Supergigante blanco-amarillo', NULL);
INSERT INTO public.star VALUES (9, 'Arturo', NULL, 'Gigante naranja', NULL);
INSERT INTO public.star VALUES (10, 'Alfa Centuri A', NULL, 'Enana amarilla', NULL);


--
-- Data for Name: type_of_galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.type_of_galaxy VALUES (1, 'Galaxias espirales', 'Se trata de discos rotantes de estrellas y gases interserales que orbitan un nucleo brillante de estrellas mas viejas, formando brazos a su alrededor en forma de espiral, de brillo menos intenso');
INSERT INTO public.type_of_galaxy VALUES (2, 'Galaxias elípticas', 'Aquellas que poseen forma de elipse y que suelen nombrarse del E0 al E7, indicando con el numero que tan ovalada es su forma. Suelen mostrar poca estructura al observador, y estan dominadas por estrellas viejas, que orbitan en torno al centro en direcciones al azar');
INSERT INTO public.type_of_galaxy VALUES (3, 'Galaxias lenticulares', 'Se trata de un grupo de transicion entre las galaxias espirales y las elipticas, aunque poseen tambien un disco y una envoltura extensa. Pueden ser barradas o no');
INSERT INTO public.type_of_galaxy VALUES (4, 'Galaxias irregulares', 'Por ultimo estan las galaxias cuya forma no encaja en ninguna de las categorias previas. Pueden tener cierto grado de estructura o ser más dispersas, y esto se puede deber a que estan en formacion todavia, o que son el producto de alguna colision entre galaxias ocurrida hace mucho');


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: type_of_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.type_of_galaxy_type_id_seq', 4, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: type_of_galaxy type_of_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type_of_galaxy
    ADD CONSTRAINT type_of_galaxy_name_key UNIQUE (name);


--
-- Name: type_of_galaxy type_of_galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type_of_galaxy
    ADD CONSTRAINT type_of_galaxy_pkey PRIMARY KEY (type_of_galaxy_id);


--
-- Name: galaxy galaxy_type_of_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_type_of_galaxy_id_fkey FOREIGN KEY (type_of_galaxy_id) REFERENCES public.type_of_galaxy(type_of_galaxy_id);


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