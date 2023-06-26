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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: player; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.player (
    un character varying(22),
    ng integer,
    b integer
);


ALTER TABLE public.player OWNER TO freecodecamp;

--
-- Data for Name: player; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.player VALUES ('user_1687772052376', 5, 101);
INSERT INTO public.player VALUES ('user_1687772353946', 5, 391);
INSERT INTO public.player VALUES ('user_1687771877742', 2, 181);
INSERT INTO public.player VALUES ('user_1687771877743', 5, 145);
INSERT INTO public.player VALUES ('user_1687772056857', 2, 750);
INSERT INTO public.player VALUES ('user_1687772134142', 2, 419);
INSERT INTO public.player VALUES ('user_1687772056858', 5, 177);
INSERT INTO public.player VALUES ('user_1687772134143', 5, 48);
INSERT INTO public.player VALUES ('user_1687771942965', 2, 216);
INSERT INTO public.player VALUES ('user_1687771942966', 5, 167);
INSERT INTO public.player VALUES ('user_1687772406949', 2, 274);
INSERT INTO public.player VALUES ('user_1687772061084', 2, 341);
INSERT INTO public.player VALUES ('user_1687772363119', 2, 63);
INSERT INTO public.player VALUES ('user_1687771949952', 2, 602);
INSERT INTO public.player VALUES ('user_1687772406950', 5, 122);
INSERT INTO public.player VALUES ('user_1687772061085', 5, 50);
INSERT INTO public.player VALUES ('user_1687771949953', 5, 108);
INSERT INTO public.player VALUES ('user_1687772165712', 2, 906);
INSERT INTO public.player VALUES ('user_1687772363120', 5, 94);
INSERT INTO public.player VALUES ('user_1687772026915', 2, 281);
INSERT INTO public.player VALUES ('user_1687772165713', 5, 147);
INSERT INTO public.player VALUES ('user_1687772065916', 2, 432);
INSERT INTO public.player VALUES ('user_1687772026916', 5, 91);
INSERT INTO public.player VALUES ('user_1687772065917', 5, 64);
INSERT INTO public.player VALUES ('user_1687772032650', 2, 644);
INSERT INTO public.player VALUES ('user_1687772032651', 5, 76);
INSERT INTO public.player VALUES ('user_1687772370347', 2, 254);
INSERT INTO public.player VALUES ('user_1687772099907', 2, 971);
INSERT INTO public.player VALUES ('user_1687772412809', 2, 355);
INSERT INTO public.player VALUES ('user_1687772036878', 2, 463);
INSERT INTO public.player VALUES ('user_1687772217318', 2, 617);
INSERT INTO public.player VALUES ('user_1687772036879', 5, 118);
INSERT INTO public.player VALUES ('user_1687772099908', 5, 136);
INSERT INTO public.player VALUES ('user_1687772370348', 5, 208);
INSERT INTO public.player VALUES ('user_1687772041931', 2, 181);
INSERT INTO public.player VALUES ('user_1687772412810', 5, 73);
INSERT INTO public.player VALUES ('user_1687772041932', 5, 109);
INSERT INTO public.player VALUES ('user_1687772103928', 2, 274);
INSERT INTO public.player VALUES ('user_1687772218327', 2, 130);
INSERT INTO public.player VALUES ('user_1687772217319', 5, 88);
INSERT INTO public.player VALUES ('user_1687772103929', 5, 120);
INSERT INTO public.player VALUES ('user_1687772045319', 2, 93);
INSERT INTO public.player VALUES ('user_1687772045320', 5, 369);
INSERT INTO public.player VALUES ('user_1687772218328', 5, 11);
INSERT INTO public.player VALUES ('drav', 3, 5);
INSERT INTO public.player VALUES ('user_1687772048576', 2, 483);
INSERT INTO public.player VALUES ('user_1687772109388', 2, 71);
INSERT INTO public.player VALUES ('user_1687772048577', 5, 214);
INSERT INTO public.player VALUES ('user_1687772375969', 2, 89);
INSERT INTO public.player VALUES ('user_1687772109389', 5, 132);
INSERT INTO public.player VALUES ('user_1687772052375', 2, 54);
INSERT INTO public.player VALUES ('user_1687772375970', 5, 9);
INSERT INTO public.player VALUES ('user_1687772345656', 2, 140);
INSERT INTO public.player VALUES ('user_1687772114990', 2, 460);
INSERT INTO public.player VALUES ('user_1687772345657', 5, 311);
INSERT INTO public.player VALUES ('user_1687772114991', 5, 56);
INSERT INTO public.player VALUES ('user_1687772417842', 2, 248);
INSERT INTO public.player VALUES ('user_1687772118256', 2, 679);
INSERT INTO public.player VALUES ('user_1687772417843', 5, 251);
INSERT INTO public.player VALUES ('user_1687772118257', 5, 300);
INSERT INTO public.player VALUES ('user_1687772379686', 2, 447);
INSERT INTO public.player VALUES ('user_1687772352963', 2, 193);
INSERT INTO public.player VALUES ('user_1687772379687', 5, 86);
INSERT INTO public.player VALUES ('user_1687772353945', 2, 130);
INSERT INTO public.player VALUES ('user_1687772352964', 5, 123);
INSERT INTO public.player VALUES ('user_1687772422057', 2, 469);
INSERT INTO public.player VALUES ('user_1687772396592', 2, 699);
INSERT INTO public.player VALUES ('user_1687772422058', 5, 102);
INSERT INTO public.player VALUES ('user_1687772396593', 5, 159);


--
-- Name: player player_un_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.player
    ADD CONSTRAINT player_un_key UNIQUE (un);


--
-- PostgreSQL database dump complete
--

