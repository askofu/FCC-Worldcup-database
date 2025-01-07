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
    name character varying(255) NOT NULL
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

INSERT INTO public.games VALUES (46, 65, 66, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (47, 67, 68, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (48, 66, 68, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (49, 65, 67, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (50, 66, 69, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (51, 68, 70, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (52, 67, 71, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (53, 65, 72, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (54, 68, 73, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (55, 70, 74, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (56, 67, 75, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (57, 71, 76, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (58, 66, 77, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (59, 69, 78, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (60, 72, 79, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (61, 65, 80, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (62, 81, 80, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (63, 82, 71, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (64, 80, 82, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (65, 81, 71, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (66, 82, 83, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (67, 80, 67, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (68, 71, 73, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (69, 81, 65, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (70, 71, 84, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (71, 73, 72, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (72, 65, 85, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (73, 81, 86, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (74, 82, 76, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (75, 83, 87, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (76, 80, 74, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (77, 67, 88, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (65, 'France');
INSERT INTO public.teams VALUES (66, 'Croatia');
INSERT INTO public.teams VALUES (67, 'Belgium');
INSERT INTO public.teams VALUES (68, 'England');
INSERT INTO public.teams VALUES (69, 'Russia');
INSERT INTO public.teams VALUES (70, 'Sweden');
INSERT INTO public.teams VALUES (71, 'Brazil');
INSERT INTO public.teams VALUES (72, 'Uruguay');
INSERT INTO public.teams VALUES (73, 'Colombia');
INSERT INTO public.teams VALUES (74, 'Switzerland');
INSERT INTO public.teams VALUES (75, 'Japan');
INSERT INTO public.teams VALUES (76, 'Mexico');
INSERT INTO public.teams VALUES (77, 'Denmark');
INSERT INTO public.teams VALUES (78, 'Spain');
INSERT INTO public.teams VALUES (79, 'Portugal');
INSERT INTO public.teams VALUES (80, 'Argentina');
INSERT INTO public.teams VALUES (81, 'Germany');
INSERT INTO public.teams VALUES (82, 'Netherlands');
INSERT INTO public.teams VALUES (83, 'Costa Rica');
INSERT INTO public.teams VALUES (84, 'Chile');
INSERT INTO public.teams VALUES (85, 'Nigeria');
INSERT INTO public.teams VALUES (86, 'Algeria');
INSERT INTO public.teams VALUES (87, 'Greece');
INSERT INTO public.teams VALUES (88, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 77, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 88, true);


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

