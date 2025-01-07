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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 3, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (2, 26, 16, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (3, 27, 26, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (4, 24, 16, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (5, 27, 3, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (6, 24, 1, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (7, 31, 21, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (8, 1, 5, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (9, 3, 8, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (10, 5, 8, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (11, 1, 3, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (12, 5, 19, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (13, 8, 13, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (14, 3, 16, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (15, 1, 21, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (16, 8, 31, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (17, 1, 27, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (18, 24, 27, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (19, 26, 16, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (20, 27, 26, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (21, 24, 16, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (22, 26, 35, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (23, 27, 3, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (24, 16, 31, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (25, 24, 1, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (26, 31, 21, 2, 0, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, 'France');
INSERT INTO public.teams VALUES (3, 'Belgium');
INSERT INTO public.teams VALUES (5, 'Croatia');
INSERT INTO public.teams VALUES (8, 'England');
INSERT INTO public.teams VALUES (13, 'Sweden');
INSERT INTO public.teams VALUES (16, 'Brazil');
INSERT INTO public.teams VALUES (19, 'Russia');
INSERT INTO public.teams VALUES (21, 'Uruguay');
INSERT INTO public.teams VALUES (24, 'Germany');
INSERT INTO public.teams VALUES (26, 'Netherlands');
INSERT INTO public.teams VALUES (27, 'Argentina');
INSERT INTO public.teams VALUES (31, 'Colombia');
INSERT INTO public.teams VALUES (35, 'Costa Rica');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 26, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 51, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

