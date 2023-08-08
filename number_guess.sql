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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 91, 16);
INSERT INTO public.games VALUES (2, 457, 16);
INSERT INTO public.games VALUES (3, 462, 17);
INSERT INTO public.games VALUES (4, 368, 17);
INSERT INTO public.games VALUES (5, 751, 16);
INSERT INTO public.games VALUES (6, 393, 16);
INSERT INTO public.games VALUES (7, 29, 16);
INSERT INTO public.games VALUES (8, 75, 18);
INSERT INTO public.games VALUES (9, 981, 18);
INSERT INTO public.games VALUES (10, 317, 19);
INSERT INTO public.games VALUES (11, 869, 19);
INSERT INTO public.games VALUES (12, 892, 18);
INSERT INTO public.games VALUES (13, 474, 18);
INSERT INTO public.games VALUES (14, 570, 18);
INSERT INTO public.games VALUES (15, 82, 20);
INSERT INTO public.games VALUES (16, 668, 20);
INSERT INTO public.games VALUES (17, 690, 21);
INSERT INTO public.games VALUES (18, 519, 21);
INSERT INTO public.games VALUES (19, 603, 20);
INSERT INTO public.games VALUES (20, 548, 20);
INSERT INTO public.games VALUES (21, 221, 20);
INSERT INTO public.games VALUES (22, 401, 22);
INSERT INTO public.games VALUES (23, 195, 22);
INSERT INTO public.games VALUES (24, 866, 23);
INSERT INTO public.games VALUES (25, 864, 23);
INSERT INTO public.games VALUES (26, 529, 22);
INSERT INTO public.games VALUES (27, 203, 22);
INSERT INTO public.games VALUES (28, 541, 22);
INSERT INTO public.games VALUES (29, 781, 24);
INSERT INTO public.games VALUES (30, 610, 24);
INSERT INTO public.games VALUES (31, 119, 25);
INSERT INTO public.games VALUES (32, 628, 25);
INSERT INTO public.games VALUES (33, 129, 24);
INSERT INTO public.games VALUES (34, 40, 24);
INSERT INTO public.games VALUES (35, 416, 24);
INSERT INTO public.games VALUES (36, 890, 26);
INSERT INTO public.games VALUES (37, 870, 26);
INSERT INTO public.games VALUES (38, 785, 27);
INSERT INTO public.games VALUES (39, 484, 27);
INSERT INTO public.games VALUES (40, 770, 26);
INSERT INTO public.games VALUES (41, 663, 26);
INSERT INTO public.games VALUES (42, 223, 26);
INSERT INTO public.games VALUES (43, 763, 28);
INSERT INTO public.games VALUES (44, 195, 28);
INSERT INTO public.games VALUES (45, 329, 29);
INSERT INTO public.games VALUES (46, 387, 29);
INSERT INTO public.games VALUES (47, 196, 28);
INSERT INTO public.games VALUES (48, 210, 28);
INSERT INTO public.games VALUES (49, 351, 28);
INSERT INTO public.games VALUES (50, 208, 30);
INSERT INTO public.games VALUES (51, 485, 30);
INSERT INTO public.games VALUES (52, 423, 31);
INSERT INTO public.games VALUES (53, 16, 31);
INSERT INTO public.games VALUES (54, 650, 30);
INSERT INTO public.games VALUES (55, 763, 30);
INSERT INTO public.games VALUES (56, 806, 30);
INSERT INTO public.games VALUES (57, 75, 32);
INSERT INTO public.games VALUES (58, 854, 32);
INSERT INTO public.games VALUES (59, 530, 33);
INSERT INTO public.games VALUES (60, 537, 33);
INSERT INTO public.games VALUES (61, 251, 32);
INSERT INTO public.games VALUES (62, 55, 32);
INSERT INTO public.games VALUES (63, 879, 32);
INSERT INTO public.games VALUES (64, 621, 34);
INSERT INTO public.games VALUES (65, 543, 34);
INSERT INTO public.games VALUES (66, 143, 35);
INSERT INTO public.games VALUES (67, 651, 35);
INSERT INTO public.games VALUES (68, 976, 34);
INSERT INTO public.games VALUES (69, 434, 34);
INSERT INTO public.games VALUES (70, 749, 34);
INSERT INTO public.games VALUES (71, 781, 36);
INSERT INTO public.games VALUES (72, 716, 36);
INSERT INTO public.games VALUES (73, 284, 37);
INSERT INTO public.games VALUES (74, 339, 37);
INSERT INTO public.games VALUES (75, 747, 36);
INSERT INTO public.games VALUES (76, 854, 36);
INSERT INTO public.games VALUES (77, 567, 36);
INSERT INTO public.games VALUES (78, 575, 38);
INSERT INTO public.games VALUES (79, 769, 38);
INSERT INTO public.games VALUES (80, 876, 39);
INSERT INTO public.games VALUES (81, 490, 39);
INSERT INTO public.games VALUES (82, 303, 38);
INSERT INTO public.games VALUES (83, 661, 38);
INSERT INTO public.games VALUES (84, 272, 38);
INSERT INTO public.games VALUES (85, 956, 40);
INSERT INTO public.games VALUES (86, 174, 40);
INSERT INTO public.games VALUES (87, 665, 42);
INSERT INTO public.games VALUES (88, 571, 42);
INSERT INTO public.games VALUES (89, 170, 40);
INSERT INTO public.games VALUES (90, 834, 40);
INSERT INTO public.games VALUES (91, 83, 40);
INSERT INTO public.games VALUES (92, 744, 47);
INSERT INTO public.games VALUES (93, 161, 47);
INSERT INTO public.games VALUES (94, 427, 48);
INSERT INTO public.games VALUES (95, 424, 48);
INSERT INTO public.games VALUES (96, 1002, 47);
INSERT INTO public.games VALUES (97, 921, 47);
INSERT INTO public.games VALUES (98, 836, 47);
INSERT INTO public.games VALUES (99, 241, 49);
INSERT INTO public.games VALUES (100, 697, 49);
INSERT INTO public.games VALUES (101, 923, 50);
INSERT INTO public.games VALUES (102, 142, 50);
INSERT INTO public.games VALUES (103, 473, 49);
INSERT INTO public.games VALUES (104, 621, 49);
INSERT INTO public.games VALUES (105, 184, 49);
INSERT INTO public.games VALUES (106, 617, 51);
INSERT INTO public.games VALUES (107, 429, 51);
INSERT INTO public.games VALUES (108, 397, 52);
INSERT INTO public.games VALUES (109, 558, 52);
INSERT INTO public.games VALUES (110, 640, 51);
INSERT INTO public.games VALUES (111, 609, 51);
INSERT INTO public.games VALUES (112, 141, 51);
INSERT INTO public.games VALUES (113, 861, 53);
INSERT INTO public.games VALUES (114, 74, 53);
INSERT INTO public.games VALUES (115, 74, 54);
INSERT INTO public.games VALUES (116, 529, 54);
INSERT INTO public.games VALUES (117, 784, 53);
INSERT INTO public.games VALUES (118, 157, 53);
INSERT INTO public.games VALUES (119, 750, 53);
INSERT INTO public.games VALUES (120, 5, 55);
INSERT INTO public.games VALUES (121, 340, 55);
INSERT INTO public.games VALUES (122, 277, 56);
INSERT INTO public.games VALUES (123, 105, 56);
INSERT INTO public.games VALUES (124, 83, 55);
INSERT INTO public.games VALUES (125, 711, 55);
INSERT INTO public.games VALUES (126, 191, 55);
INSERT INTO public.games VALUES (127, 61, 57);
INSERT INTO public.games VALUES (128, 608, 57);
INSERT INTO public.games VALUES (129, 279, 58);
INSERT INTO public.games VALUES (130, 463, 58);
INSERT INTO public.games VALUES (131, 197, 57);
INSERT INTO public.games VALUES (132, 859, 57);
INSERT INTO public.games VALUES (133, 503, 57);
INSERT INTO public.games VALUES (134, 481, 59);
INSERT INTO public.games VALUES (135, 396, 59);
INSERT INTO public.games VALUES (136, 268, 60);
INSERT INTO public.games VALUES (137, 518, 60);
INSERT INTO public.games VALUES (138, 352, 59);
INSERT INTO public.games VALUES (139, 811, 59);
INSERT INTO public.games VALUES (140, 516, 59);
INSERT INTO public.games VALUES (141, 59, 61);
INSERT INTO public.games VALUES (142, 767, 61);
INSERT INTO public.games VALUES (143, 825, 62);
INSERT INTO public.games VALUES (144, 365, 62);
INSERT INTO public.games VALUES (145, 357, 61);
INSERT INTO public.games VALUES (146, 222, 61);
INSERT INTO public.games VALUES (147, 651, 61);
INSERT INTO public.games VALUES (148, 648, 63);
INSERT INTO public.games VALUES (149, 726, 63);
INSERT INTO public.games VALUES (150, 503, 64);
INSERT INTO public.games VALUES (151, 283, 64);
INSERT INTO public.games VALUES (152, 165, 63);
INSERT INTO public.games VALUES (153, 246, 63);
INSERT INTO public.games VALUES (154, 110, 63);
INSERT INTO public.games VALUES (155, 768, 65);
INSERT INTO public.games VALUES (156, 39, 65);
INSERT INTO public.games VALUES (157, 825, 66);
INSERT INTO public.games VALUES (158, 279, 66);
INSERT INTO public.games VALUES (159, 873, 65);
INSERT INTO public.games VALUES (160, 753, 65);
INSERT INTO public.games VALUES (161, 553, 65);
INSERT INTO public.games VALUES (162, 959, 67);
INSERT INTO public.games VALUES (163, 626, 67);
INSERT INTO public.games VALUES (164, 661, 68);
INSERT INTO public.games VALUES (165, 701, 68);
INSERT INTO public.games VALUES (166, 509, 67);
INSERT INTO public.games VALUES (167, 825, 67);
INSERT INTO public.games VALUES (168, 305, 67);
INSERT INTO public.games VALUES (169, 963, 69);
INSERT INTO public.games VALUES (170, 114, 69);
INSERT INTO public.games VALUES (171, 238, 70);
INSERT INTO public.games VALUES (172, 17, 70);
INSERT INTO public.games VALUES (173, 165, 69);
INSERT INTO public.games VALUES (174, 363, 69);
INSERT INTO public.games VALUES (175, 858, 69);
INSERT INTO public.games VALUES (176, 257, 71);
INSERT INTO public.games VALUES (177, 843, 71);
INSERT INTO public.games VALUES (178, 205, 72);
INSERT INTO public.games VALUES (179, 306, 72);
INSERT INTO public.games VALUES (180, 564, 71);
INSERT INTO public.games VALUES (181, 33, 71);
INSERT INTO public.games VALUES (182, 929, 71);
INSERT INTO public.games VALUES (183, 895, 73);
INSERT INTO public.games VALUES (184, 457, 73);
INSERT INTO public.games VALUES (185, 196, 74);
INSERT INTO public.games VALUES (186, 412, 74);
INSERT INTO public.games VALUES (187, 9, 73);
INSERT INTO public.games VALUES (188, 742, 73);
INSERT INTO public.games VALUES (189, 176, 73);
INSERT INTO public.games VALUES (190, 767, 75);
INSERT INTO public.games VALUES (191, 29, 75);
INSERT INTO public.games VALUES (192, 987, 76);
INSERT INTO public.games VALUES (193, 125, 76);
INSERT INTO public.games VALUES (194, 688, 75);
INSERT INTO public.games VALUES (195, 774, 75);
INSERT INTO public.games VALUES (196, 56, 75);
INSERT INTO public.games VALUES (197, 303, 77);
INSERT INTO public.games VALUES (198, 702, 77);
INSERT INTO public.games VALUES (199, 6, 78);
INSERT INTO public.games VALUES (200, 622, 78);
INSERT INTO public.games VALUES (201, 96, 77);
INSERT INTO public.games VALUES (202, 823, 77);
INSERT INTO public.games VALUES (203, 921, 77);
INSERT INTO public.games VALUES (204, 485, 79);
INSERT INTO public.games VALUES (205, 72, 79);
INSERT INTO public.games VALUES (206, 826, 80);
INSERT INTO public.games VALUES (207, 317, 80);
INSERT INTO public.games VALUES (208, 814, 79);
INSERT INTO public.games VALUES (209, 793, 79);
INSERT INTO public.games VALUES (210, 889, 79);
INSERT INTO public.games VALUES (211, 773, 81);
INSERT INTO public.games VALUES (212, 423, 81);
INSERT INTO public.games VALUES (213, 359, 82);
INSERT INTO public.games VALUES (214, 533, 82);
INSERT INTO public.games VALUES (215, 646, 81);
INSERT INTO public.games VALUES (216, 129, 81);
INSERT INTO public.games VALUES (217, 851, 81);
INSERT INTO public.games VALUES (218, 732, 83);
INSERT INTO public.games VALUES (219, 123, 83);
INSERT INTO public.games VALUES (220, 309, 84);
INSERT INTO public.games VALUES (221, 190, 84);
INSERT INTO public.games VALUES (222, 514, 83);
INSERT INTO public.games VALUES (223, 51, 83);
INSERT INTO public.games VALUES (224, 511, 83);
INSERT INTO public.games VALUES (225, 60, 85);
INSERT INTO public.games VALUES (226, 382, 85);
INSERT INTO public.games VALUES (227, 5, 86);
INSERT INTO public.games VALUES (228, 411, 86);
INSERT INTO public.games VALUES (229, 976, 85);
INSERT INTO public.games VALUES (230, 420, 85);
INSERT INTO public.games VALUES (231, 559, 85);
INSERT INTO public.games VALUES (232, 12, 87);
INSERT INTO public.games VALUES (233, 435, 88);
INSERT INTO public.games VALUES (234, 766, 88);
INSERT INTO public.games VALUES (235, 207, 89);
INSERT INTO public.games VALUES (236, 289, 89);
INSERT INTO public.games VALUES (237, 555, 88);
INSERT INTO public.games VALUES (238, 758, 88);
INSERT INTO public.games VALUES (239, 73, 88);
INSERT INTO public.games VALUES (240, 11, 87);
INSERT INTO public.games VALUES (241, 34, 90);
INSERT INTO public.games VALUES (242, 849, 90);
INSERT INTO public.games VALUES (243, 663, 91);
INSERT INTO public.games VALUES (244, 446, 91);
INSERT INTO public.games VALUES (245, 560, 90);
INSERT INTO public.games VALUES (246, 609, 90);
INSERT INTO public.games VALUES (247, 449, 90);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1691495245295');
INSERT INTO public.users VALUES (2, 'user_1691495245294');
INSERT INTO public.users VALUES (3, 'user_1691495832011');
INSERT INTO public.users VALUES (4, 'user_1691495832010');
INSERT INTO public.users VALUES (5, 'user_1691496262478');
INSERT INTO public.users VALUES (6, 'user_1691496262477');
INSERT INTO public.users VALUES (7, 'user_1691496377591');
INSERT INTO public.users VALUES (8, 'user_1691496377590');
INSERT INTO public.users VALUES (9, 'user_1691496390646');
INSERT INTO public.users VALUES (10, 'user_1691496390645');
INSERT INTO public.users VALUES (11, 'user_1691496705237');
INSERT INTO public.users VALUES (12, 'user_1691496705236');
INSERT INTO public.users VALUES (13, 'user_1691496816735');
INSERT INTO public.users VALUES (14, 'user_1691496816734');
INSERT INTO public.users VALUES (15, 'A');
INSERT INTO public.users VALUES (16, 'user_1691497740482');
INSERT INTO public.users VALUES (17, 'user_1691497740481');
INSERT INTO public.users VALUES (18, 'user_1691497788755');
INSERT INTO public.users VALUES (19, 'user_1691497788754');
INSERT INTO public.users VALUES (20, 'user_1691498130472');
INSERT INTO public.users VALUES (21, 'user_1691498130471');
INSERT INTO public.users VALUES (22, 'user_1691498157027');
INSERT INTO public.users VALUES (23, 'user_1691498157026');
INSERT INTO public.users VALUES (24, 'user_1691498226347');
INSERT INTO public.users VALUES (25, 'user_1691498226346');
INSERT INTO public.users VALUES (26, 'user_1691498254892');
INSERT INTO public.users VALUES (27, 'user_1691498254891');
INSERT INTO public.users VALUES (28, 'user_1691498301572');
INSERT INTO public.users VALUES (29, 'user_1691498301571');
INSERT INTO public.users VALUES (30, 'user_1691498337636');
INSERT INTO public.users VALUES (31, 'user_1691498337635');
INSERT INTO public.users VALUES (32, 'user_1691498348854');
INSERT INTO public.users VALUES (33, 'user_1691498348853');
INSERT INTO public.users VALUES (34, 'user_1691498396792');
INSERT INTO public.users VALUES (35, 'user_1691498396791');
INSERT INTO public.users VALUES (36, 'user_1691498497510');
INSERT INTO public.users VALUES (37, 'user_1691498497509');
INSERT INTO public.users VALUES (38, 'user_1691498535287');
INSERT INTO public.users VALUES (39, 'user_1691498535286');
INSERT INTO public.users VALUES (40, 'user_1691498627596');
INSERT INTO public.users VALUES (42, 'user_1691498627595');
INSERT INTO public.users VALUES (47, 'user_1691498741664');
INSERT INTO public.users VALUES (48, 'user_1691498741663');
INSERT INTO public.users VALUES (49, 'user_1691498833928');
INSERT INTO public.users VALUES (50, 'user_1691498833927');
INSERT INTO public.users VALUES (51, 'user_1691498866791');
INSERT INTO public.users VALUES (52, 'user_1691498866790');
INSERT INTO public.users VALUES (53, 'user_1691499201179');
INSERT INTO public.users VALUES (54, 'user_1691499201178');
INSERT INTO public.users VALUES (55, 'user_1691499241808');
INSERT INTO public.users VALUES (56, 'user_1691499241807');
INSERT INTO public.users VALUES (57, 'user_1691499254668');
INSERT INTO public.users VALUES (58, 'user_1691499254667');
INSERT INTO public.users VALUES (59, 'user_1691499283608');
INSERT INTO public.users VALUES (60, 'user_1691499283607');
INSERT INTO public.users VALUES (61, 'user_1691499292486');
INSERT INTO public.users VALUES (62, 'user_1691499292485');
INSERT INTO public.users VALUES (63, 'user_1691499330111');
INSERT INTO public.users VALUES (64, 'user_1691499330110');
INSERT INTO public.users VALUES (65, 'user_1691499352079');
INSERT INTO public.users VALUES (66, 'user_1691499352078');
INSERT INTO public.users VALUES (67, 'user_1691499384873');
INSERT INTO public.users VALUES (68, 'user_1691499384872');
INSERT INTO public.users VALUES (69, 'user_1691499413292');
INSERT INTO public.users VALUES (70, 'user_1691499413291');
INSERT INTO public.users VALUES (71, 'user_1691499435308');
INSERT INTO public.users VALUES (72, 'user_1691499435307');
INSERT INTO public.users VALUES (73, 'user_1691499646577');
INSERT INTO public.users VALUES (74, 'user_1691499646576');
INSERT INTO public.users VALUES (75, 'user_1691499683338');
INSERT INTO public.users VALUES (76, 'user_1691499683337');
INSERT INTO public.users VALUES (77, 'user_1691499705539');
INSERT INTO public.users VALUES (78, 'user_1691499705538');
INSERT INTO public.users VALUES (79, 'user_1691499716546');
INSERT INTO public.users VALUES (80, 'user_1691499716545');
INSERT INTO public.users VALUES (81, 'user_1691499749417');
INSERT INTO public.users VALUES (82, 'user_1691499749416');
INSERT INTO public.users VALUES (83, 'user_1691499783114');
INSERT INTO public.users VALUES (84, 'user_1691499783113');
INSERT INTO public.users VALUES (85, 'user_1691499793466');
INSERT INTO public.users VALUES (86, 'user_1691499793465');
INSERT INTO public.users VALUES (87, 'Kris');
INSERT INTO public.users VALUES (88, 'user_1691499910775');
INSERT INTO public.users VALUES (89, 'user_1691499910774');
INSERT INTO public.users VALUES (90, 'user_1691499970080');
INSERT INTO public.users VALUES (91, 'user_1691499970079');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 247, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 91, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

