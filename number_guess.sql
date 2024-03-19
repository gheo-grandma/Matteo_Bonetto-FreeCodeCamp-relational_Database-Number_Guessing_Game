{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c99985\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf2 \cb3 --\
-- PostgreSQL database dump\
--\
\
-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)\
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)\
\
SET statement_timeout = 0;\
SET lock_timeout = 0;\
SET idle_in_transaction_session_timeout = 0;\
SET client_encoding = 'UTF8';\
SET standard_conforming_strings = on;\
SELECT pg_catalog.set_config('search_path', '', false);\
SET check_function_bodies = false;\
SET xmloption = content;\
SET client_min_messages = warning;\
SET row_security = off;\
\
DROP DATABASE number_guess;\
--\
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp\
--\
\
CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';\
\
\
ALTER DATABASE number_guess OWNER TO freecodecamp;\
\
\\connect number_guess\
\
SET statement_timeout = 0;\
SET lock_timeout = 0;\
SET idle_in_transaction_session_timeout = 0;\
SET client_encoding = 'UTF8';\
SET standard_conforming_strings = on;\
SELECT pg_catalog.set_config('search_path', '', false);\
SET check_function_bodies = false;\
SET xmloption = content;\
SET client_min_messages = warning;\
SET row_security = off;\
\
SET default_tablespace = '';\
\
SET default_table_access_method = heap;\
\
--\
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.games (\
    game_id integer NOT NULL,\
    user_id integer NOT NULL,\
    guesses integer NOT NULL\
);\
\
\
ALTER TABLE public.games OWNER TO freecodecamp;\
\
--\
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.games_game_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;\
\
\
--\
-- Name: usernames; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.usernames (\
    username_id integer NOT NULL,\
    username character varying(22) NOT NULL\
);\
\
\
ALTER TABLE public.usernames OWNER TO freecodecamp;\
\
--\
-- Name: usernames_username_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.usernames_username_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.usernames_username_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: usernames_username_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.usernames_username_id_seq OWNED BY public.usernames.username_id;\
\
\
--\
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);\
\
\
--\
-- Name: usernames username_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.usernames ALTER COLUMN username_id SET DEFAULT nextval('public.usernames_username_id_seq'::regclass);\
\
\
--\
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.games VALUES (1, 47, 31);\
INSERT INTO public.games VALUES (2, 48, 599);\
INSERT INTO public.games VALUES (3, 48, 35);\
INSERT INTO public.games VALUES (4, 49, 449);\
INSERT INTO public.games VALUES (5, 49, 288);\
INSERT INTO public.games VALUES (6, 48, 916);\
INSERT INTO public.games VALUES (7, 48, 700);\
INSERT INTO public.games VALUES (8, 48, 266);\
INSERT INTO public.games VALUES (9, 47, 10);\
INSERT INTO public.games VALUES (10, 50, 194);\
INSERT INTO public.games VALUES (11, 50, 413);\
INSERT INTO public.games VALUES (12, 51, 481);\
INSERT INTO public.games VALUES (13, 51, 307);\
INSERT INTO public.games VALUES (14, 50, 78);\
INSERT INTO public.games VALUES (15, 50, 242);\
INSERT INTO public.games VALUES (16, 50, 719);\
INSERT INTO public.games VALUES (17, 52, 994);\
INSERT INTO public.games VALUES (18, 52, 821);\
INSERT INTO public.games VALUES (19, 53, 871);\
INSERT INTO public.games VALUES (20, 53, 887);\
INSERT INTO public.games VALUES (21, 52, 40);\
INSERT INTO public.games VALUES (22, 52, 891);\
INSERT INTO public.games VALUES (23, 52, 169);\
INSERT INTO public.games VALUES (24, 54, 134);\
INSERT INTO public.games VALUES (25, 54, 243);\
INSERT INTO public.games VALUES (26, 55, 802);\
INSERT INTO public.games VALUES (27, 55, 151);\
INSERT INTO public.games VALUES (28, 54, 743);\
INSERT INTO public.games VALUES (29, 54, 467);\
INSERT INTO public.games VALUES (30, 54, 624);\
INSERT INTO public.games VALUES (31, 56, 776);\
INSERT INTO public.games VALUES (32, 56, 613);\
INSERT INTO public.games VALUES (33, 57, 424);\
INSERT INTO public.games VALUES (34, 57, 997);\
INSERT INTO public.games VALUES (35, 56, 138);\
INSERT INTO public.games VALUES (36, 56, 627);\
INSERT INTO public.games VALUES (37, 56, 785);\
INSERT INTO public.games VALUES (38, 58, 3);\
INSERT INTO public.games VALUES (39, 58, 164);\
INSERT INTO public.games VALUES (40, 59, 960);\
INSERT INTO public.games VALUES (41, 59, 203);\
INSERT INTO public.games VALUES (42, 58, 656);\
INSERT INTO public.games VALUES (43, 58, 951);\
INSERT INTO public.games VALUES (44, 58, 150);\
INSERT INTO public.games VALUES (45, 60, 948);\
INSERT INTO public.games VALUES (46, 60, 48);\
INSERT INTO public.games VALUES (47, 61, 68);\
INSERT INTO public.games VALUES (48, 61, 768);\
INSERT INTO public.games VALUES (49, 60, 438);\
INSERT INTO public.games VALUES (50, 60, 686);\
INSERT INTO public.games VALUES (51, 60, 664);\
INSERT INTO public.games VALUES (52, 62, 316);\
INSERT INTO public.games VALUES (53, 62, 782);\
INSERT INTO public.games VALUES (54, 63, 356);\
INSERT INTO public.games VALUES (55, 63, 642);\
INSERT INTO public.games VALUES (56, 62, 856);\
INSERT INTO public.games VALUES (57, 62, 136);\
INSERT INTO public.games VALUES (58, 62, 985);\
INSERT INTO public.games VALUES (59, 64, 772);\
INSERT INTO public.games VALUES (60, 64, 146);\
INSERT INTO public.games VALUES (61, 65, 763);\
INSERT INTO public.games VALUES (62, 65, 736);\
INSERT INTO public.games VALUES (63, 64, 878);\
INSERT INTO public.games VALUES (64, 64, 62);\
INSERT INTO public.games VALUES (65, 64, 862);\
INSERT INTO public.games VALUES (66, 9, 22);\
INSERT INTO public.games VALUES (67, 68, 729);\
INSERT INTO public.games VALUES (68, 68, 360);\
INSERT INTO public.games VALUES (69, 69, 114);\
INSERT INTO public.games VALUES (70, 69, 823);\
INSERT INTO public.games VALUES (71, 68, 457);\
INSERT INTO public.games VALUES (72, 68, 819);\
INSERT INTO public.games VALUES (73, 68, 893);\
INSERT INTO public.games VALUES (74, 70, 274);\
INSERT INTO public.games VALUES (75, 70, 371);\
INSERT INTO public.games VALUES (76, 71, 660);\
INSERT INTO public.games VALUES (77, 71, 973);\
INSERT INTO public.games VALUES (78, 70, 76);\
INSERT INTO public.games VALUES (79, 70, 376);\
INSERT INTO public.games VALUES (80, 70, 928);\
INSERT INTO public.games VALUES (81, 72, 657);\
INSERT INTO public.games VALUES (82, 72, 658);\
INSERT INTO public.games VALUES (83, 72, 659);\
INSERT INTO public.games VALUES (84, 72, 660);\
INSERT INTO public.games VALUES (85, 72, 661);\
INSERT INTO public.games VALUES (86, 72, 662);\
INSERT INTO public.games VALUES (87, 72, 663);\
INSERT INTO public.games VALUES (88, 72, 664);\
INSERT INTO public.games VALUES (89, 72, 665);\
INSERT INTO public.games VALUES (90, 72, 666);\
INSERT INTO public.games VALUES (91, 72, 667);\
INSERT INTO public.games VALUES (92, 72, 668);\
INSERT INTO public.games VALUES (93, 72, 669);\
INSERT INTO public.games VALUES (94, 72, 670);\
INSERT INTO public.games VALUES (95, 72, 671);\
INSERT INTO public.games VALUES (96, 72, 672);\
INSERT INTO public.games VALUES (97, 72, 673);\
INSERT INTO public.games VALUES (98, 72, 674);\
INSERT INTO public.games VALUES (99, 72, 675);\
INSERT INTO public.games VALUES (100, 72, 676);\
INSERT INTO public.games VALUES (101, 72, 677);\
INSERT INTO public.games VALUES (102, 72, 678);\
INSERT INTO public.games VALUES (103, 72, 679);\
INSERT INTO public.games VALUES (104, 72, 680);\
INSERT INTO public.games VALUES (105, 72, 681);\
INSERT INTO public.games VALUES (106, 72, 682);\
INSERT INTO public.games VALUES (107, 72, 683);\
INSERT INTO public.games VALUES (108, 72, 684);\
INSERT INTO public.games VALUES (109, 72, 685);\
INSERT INTO public.games VALUES (110, 72, 686);\
INSERT INTO public.games VALUES (111, 72, 687);\
INSERT INTO public.games VALUES (112, 72, 688);\
INSERT INTO public.games VALUES (113, 72, 689);\
INSERT INTO public.games VALUES (114, 72, 690);\
INSERT INTO public.games VALUES (115, 72, 691);\
INSERT INTO public.games VALUES (116, 72, 692);\
INSERT INTO public.games VALUES (117, 72, 693);\
INSERT INTO public.games VALUES (118, 72, 694);\
INSERT INTO public.games VALUES (119, 72, 695);\
INSERT INTO public.games VALUES (120, 72, 696);\
INSERT INTO public.games VALUES (121, 72, 697);\
INSERT INTO public.games VALUES (122, 72, 698);\
INSERT INTO public.games VALUES (123, 72, 699);\
INSERT INTO public.games VALUES (124, 72, 700);\
INSERT INTO public.games VALUES (125, 72, 701);\
INSERT INTO public.games VALUES (126, 72, 702);\
INSERT INTO public.games VALUES (127, 72, 703);\
INSERT INTO public.games VALUES (128, 72, 704);\
INSERT INTO public.games VALUES (129, 72, 705);\
INSERT INTO public.games VALUES (130, 72, 706);\
INSERT INTO public.games VALUES (131, 72, 707);\
INSERT INTO public.games VALUES (132, 72, 708);\
INSERT INTO public.games VALUES (133, 72, 709);\
INSERT INTO public.games VALUES (134, 72, 710);\
INSERT INTO public.games VALUES (135, 72, 711);\
INSERT INTO public.games VALUES (136, 72, 712);\
INSERT INTO public.games VALUES (137, 72, 713);\
INSERT INTO public.games VALUES (138, 72, 714);\
INSERT INTO public.games VALUES (139, 72, 715);\
INSERT INTO public.games VALUES (140, 72, 716);\
INSERT INTO public.games VALUES (141, 72, 717);\
INSERT INTO public.games VALUES (142, 72, 718);\
INSERT INTO public.games VALUES (143, 72, 719);\
INSERT INTO public.games VALUES (144, 72, 720);\
INSERT INTO public.games VALUES (145, 72, 721);\
INSERT INTO public.games VALUES (146, 72, 722);\
INSERT INTO public.games VALUES (147, 72, 723);\
INSERT INTO public.games VALUES (148, 72, 724);\
INSERT INTO public.games VALUES (149, 72, 725);\
INSERT INTO public.games VALUES (150, 72, 726);\
INSERT INTO public.games VALUES (151, 72, 727);\
INSERT INTO public.games VALUES (152, 72, 728);\
INSERT INTO public.games VALUES (153, 72, 729);\
INSERT INTO public.games VALUES (154, 72, 730);\
INSERT INTO public.games VALUES (155, 72, 731);\
INSERT INTO public.games VALUES (156, 72, 732);\
INSERT INTO public.games VALUES (157, 72, 733);\
INSERT INTO public.games VALUES (158, 72, 734);\
INSERT INTO public.games VALUES (159, 72, 735);\
INSERT INTO public.games VALUES (160, 72, 736);\
INSERT INTO public.games VALUES (161, 72, 737);\
INSERT INTO public.games VALUES (162, 72, 738);\
INSERT INTO public.games VALUES (163, 72, 739);\
INSERT INTO public.games VALUES (164, 72, 740);\
INSERT INTO public.games VALUES (165, 72, 741);\
INSERT INTO public.games VALUES (166, 72, 742);\
INSERT INTO public.games VALUES (167, 72, 743);\
INSERT INTO public.games VALUES (168, 72, 744);\
INSERT INTO public.games VALUES (169, 72, 745);\
INSERT INTO public.games VALUES (170, 72, 746);\
INSERT INTO public.games VALUES (171, 72, 747);\
INSERT INTO public.games VALUES (172, 72, 748);\
INSERT INTO public.games VALUES (173, 72, 749);\
INSERT INTO public.games VALUES (174, 72, 750);\
INSERT INTO public.games VALUES (175, 72, 751);\
INSERT INTO public.games VALUES (176, 72, 752);\
INSERT INTO public.games VALUES (177, 72, 753);\
INSERT INTO public.games VALUES (178, 72, 754);\
INSERT INTO public.games VALUES (179, 72, 755);\
INSERT INTO public.games VALUES (180, 72, 756);\
INSERT INTO public.games VALUES (181, 72, 757);\
INSERT INTO public.games VALUES (182, 72, 758);\
INSERT INTO public.games VALUES (183, 72, 759);\
INSERT INTO public.games VALUES (184, 72, 760);\
INSERT INTO public.games VALUES (185, 72, 761);\
INSERT INTO public.games VALUES (186, 72, 762);\
INSERT INTO public.games VALUES (187, 72, 763);\
INSERT INTO public.games VALUES (188, 72, 764);\
INSERT INTO public.games VALUES (189, 72, 765);\
INSERT INTO public.games VALUES (190, 72, 766);\
INSERT INTO public.games VALUES (191, 72, 767);\
INSERT INTO public.games VALUES (192, 72, 768);\
INSERT INTO public.games VALUES (193, 72, 769);\
INSERT INTO public.games VALUES (194, 72, 770);\
INSERT INTO public.games VALUES (195, 72, 771);\
INSERT INTO public.games VALUES (196, 72, 772);\
INSERT INTO public.games VALUES (197, 72, 773);\
INSERT INTO public.games VALUES (198, 72, 774);\
INSERT INTO public.games VALUES (199, 72, 775);\
INSERT INTO public.games VALUES (200, 72, 776);\
INSERT INTO public.games VALUES (201, 72, 777);\
INSERT INTO public.games VALUES (202, 72, 778);\
INSERT INTO public.games VALUES (203, 72, 779);\
INSERT INTO public.games VALUES (204, 72, 780);\
INSERT INTO public.games VALUES (205, 72, 781);\
INSERT INTO public.games VALUES (206, 72, 782);\
INSERT INTO public.games VALUES (207, 72, 783);\
INSERT INTO public.games VALUES (208, 72, 784);\
INSERT INTO public.games VALUES (209, 72, 785);\
INSERT INTO public.games VALUES (210, 72, 786);\
INSERT INTO public.games VALUES (211, 72, 787);\
INSERT INTO public.games VALUES (212, 72, 788);\
INSERT INTO public.games VALUES (213, 72, 789);\
INSERT INTO public.games VALUES (214, 72, 790);\
INSERT INTO public.games VALUES (215, 72, 791);\
INSERT INTO public.games VALUES (216, 72, 792);\
INSERT INTO public.games VALUES (217, 72, 793);\
INSERT INTO public.games VALUES (218, 72, 794);\
INSERT INTO public.games VALUES (219, 72, 795);\
INSERT INTO public.games VALUES (220, 72, 796);\
INSERT INTO public.games VALUES (221, 72, 797);\
INSERT INTO public.games VALUES (222, 72, 798);\
INSERT INTO public.games VALUES (223, 72, 799);\
INSERT INTO public.games VALUES (224, 72, 800);\
INSERT INTO public.games VALUES (225, 72, 801);\
INSERT INTO public.games VALUES (226, 72, 802);\
INSERT INTO public.games VALUES (227, 72, 803);\
INSERT INTO public.games VALUES (228, 72, 804);\
INSERT INTO public.games VALUES (229, 72, 805);\
INSERT INTO public.games VALUES (230, 72, 806);\
INSERT INTO public.games VALUES (231, 72, 807);\
INSERT INTO public.games VALUES (232, 72, 808);\
INSERT INTO public.games VALUES (233, 72, 809);\
INSERT INTO public.games VALUES (234, 72, 810);\
INSERT INTO public.games VALUES (235, 72, 811);\
INSERT INTO public.games VALUES (236, 72, 812);\
INSERT INTO public.games VALUES (237, 72, 813);\
INSERT INTO public.games VALUES (238, 72, 814);\
INSERT INTO public.games VALUES (239, 72, 815);\
INSERT INTO public.games VALUES (240, 72, 816);\
INSERT INTO public.games VALUES (241, 72, 817);\
INSERT INTO public.games VALUES (242, 72, 818);\
INSERT INTO public.games VALUES (243, 72, 819);\
INSERT INTO public.games VALUES (244, 72, 820);\
INSERT INTO public.games VALUES (245, 72, 821);\
INSERT INTO public.games VALUES (246, 72, 822);\
INSERT INTO public.games VALUES (247, 72, 823);\
INSERT INTO public.games VALUES (248, 72, 824);\
INSERT INTO public.games VALUES (249, 72, 825);\
INSERT INTO public.games VALUES (250, 72, 826);\
INSERT INTO public.games VALUES (251, 72, 827);\
INSERT INTO public.games VALUES (252, 72, 828);\
INSERT INTO public.games VALUES (253, 72, 829);\
INSERT INTO public.games VALUES (254, 72, 830);\
INSERT INTO public.games VALUES (255, 72, 831);\
INSERT INTO public.games VALUES (256, 72, 832);\
INSERT INTO public.games VALUES (257, 72, 833);\
INSERT INTO public.games VALUES (258, 72, 834);\
INSERT INTO public.games VALUES (259, 72, 835);\
INSERT INTO public.games VALUES (260, 72, 836);\
INSERT INTO public.games VALUES (261, 72, 837);\
INSERT INTO public.games VALUES (262, 72, 838);\
INSERT INTO public.games VALUES (263, 72, 839);\
INSERT INTO public.games VALUES (264, 72, 840);\
INSERT INTO public.games VALUES (265, 72, 841);\
INSERT INTO public.games VALUES (266, 72, 842);\
INSERT INTO public.games VALUES (267, 72, 843);\
INSERT INTO public.games VALUES (268, 72, 844);\
INSERT INTO public.games VALUES (269, 72, 845);\
INSERT INTO public.games VALUES (270, 72, 846);\
INSERT INTO public.games VALUES (271, 72, 847);\
INSERT INTO public.games VALUES (272, 72, 848);\
INSERT INTO public.games VALUES (273, 72, 849);\
INSERT INTO public.games VALUES (274, 72, 850);\
INSERT INTO public.games VALUES (275, 72, 851);\
INSERT INTO public.games VALUES (276, 72, 852);\
INSERT INTO public.games VALUES (277, 72, 853);\
INSERT INTO public.games VALUES (278, 72, 854);\
INSERT INTO public.games VALUES (279, 72, 855);\
INSERT INTO public.games VALUES (280, 72, 856);\
INSERT INTO public.games VALUES (281, 72, 857);\
INSERT INTO public.games VALUES (282, 72, 858);\
INSERT INTO public.games VALUES (283, 72, 859);\
INSERT INTO public.games VALUES (284, 72, 860);\
INSERT INTO public.games VALUES (285, 72, 861);\
INSERT INTO public.games VALUES (286, 72, 862);\
INSERT INTO public.games VALUES (287, 72, 863);\
INSERT INTO public.games VALUES (288, 72, 864);\
INSERT INTO public.games VALUES (289, 72, 865);\
INSERT INTO public.games VALUES (290, 72, 866);\
INSERT INTO public.games VALUES (291, 72, 867);\
INSERT INTO public.games VALUES (292, 72, 868);\
INSERT INTO public.games VALUES (293, 72, 869);\
INSERT INTO public.games VALUES (294, 72, 870);\
INSERT INTO public.games VALUES (295, 72, 871);\
INSERT INTO public.games VALUES (296, 72, 872);\
INSERT INTO public.games VALUES (297, 72, 873);\
INSERT INTO public.games VALUES (298, 72, 874);\
INSERT INTO public.games VALUES (299, 72, 875);\
INSERT INTO public.games VALUES (300, 72, 876);\
INSERT INTO public.games VALUES (301, 72, 877);\
INSERT INTO public.games VALUES (302, 72, 878);\
INSERT INTO public.games VALUES (303, 72, 879);\
INSERT INTO public.games VALUES (304, 72, 880);\
INSERT INTO public.games VALUES (305, 72, 881);\
INSERT INTO public.games VALUES (306, 72, 882);\
INSERT INTO public.games VALUES (307, 72, 883);\
INSERT INTO public.games VALUES (308, 72, 884);\
INSERT INTO public.games VALUES (309, 72, 885);\
INSERT INTO public.games VALUES (310, 72, 886);\
INSERT INTO public.games VALUES (311, 72, 887);\
INSERT INTO public.games VALUES (312, 72, 888);\
INSERT INTO public.games VALUES (313, 72, 889);\
INSERT INTO public.games VALUES (314, 72, 890);\
INSERT INTO public.games VALUES (315, 72, 891);\
INSERT INTO public.games VALUES (316, 72, 892);\
INSERT INTO public.games VALUES (317, 72, 893);\
INSERT INTO public.games VALUES (318, 72, 894);\
INSERT INTO public.games VALUES (319, 72, 895);\
INSERT INTO public.games VALUES (320, 72, 896);\
INSERT INTO public.games VALUES (321, 72, 897);\
INSERT INTO public.games VALUES (322, 72, 898);\
INSERT INTO public.games VALUES (323, 72, 899);\
INSERT INTO public.games VALUES (324, 72, 900);\
INSERT INTO public.games VALUES (325, 72, 901);\
INSERT INTO public.games VALUES (326, 72, 902);\
INSERT INTO public.games VALUES (327, 72, 903);\
INSERT INTO public.games VALUES (328, 72, 904);\
INSERT INTO public.games VALUES (329, 72, 905);\
INSERT INTO public.games VALUES (330, 72, 906);\
INSERT INTO public.games VALUES (331, 72, 907);\
INSERT INTO public.games VALUES (332, 72, 908);\
INSERT INTO public.games VALUES (333, 72, 909);\
INSERT INTO public.games VALUES (334, 72, 910);\
INSERT INTO public.games VALUES (335, 72, 911);\
INSERT INTO public.games VALUES (336, 72, 912);\
INSERT INTO public.games VALUES (337, 72, 913);\
INSERT INTO public.games VALUES (338, 72, 914);\
INSERT INTO public.games VALUES (339, 72, 915);\
INSERT INTO public.games VALUES (340, 72, 916);\
INSERT INTO public.games VALUES (341, 72, 917);\
INSERT INTO public.games VALUES (342, 72, 918);\
INSERT INTO public.games VALUES (343, 72, 919);\
INSERT INTO public.games VALUES (344, 72, 920);\
INSERT INTO public.games VALUES (345, 72, 921);\
INSERT INTO public.games VALUES (346, 72, 922);\
INSERT INTO public.games VALUES (347, 72, 923);\
INSERT INTO public.games VALUES (348, 72, 924);\
INSERT INTO public.games VALUES (349, 72, 925);\
INSERT INTO public.games VALUES (350, 72, 926);\
INSERT INTO public.games VALUES (351, 72, 927);\
INSERT INTO public.games VALUES (352, 72, 928);\
INSERT INTO public.games VALUES (353, 72, 929);\
INSERT INTO public.games VALUES (354, 72, 930);\
INSERT INTO public.games VALUES (355, 72, 931);\
INSERT INTO public.games VALUES (356, 72, 932);\
INSERT INTO public.games VALUES (357, 72, 933);\
INSERT INTO public.games VALUES (358, 72, 934);\
INSERT INTO public.games VALUES (359, 72, 935);\
INSERT INTO public.games VALUES (360, 72, 936);\
INSERT INTO public.games VALUES (361, 72, 937);\
INSERT INTO public.games VALUES (362, 72, 938);\
INSERT INTO public.games VALUES (363, 72, 939);\
INSERT INTO public.games VALUES (364, 72, 940);\
INSERT INTO public.games VALUES (365, 72, 941);\
INSERT INTO public.games VALUES (366, 72, 942);\
INSERT INTO public.games VALUES (367, 72, 943);\
INSERT INTO public.games VALUES (368, 72, 944);\
INSERT INTO public.games VALUES (369, 72, 945);\
INSERT INTO public.games VALUES (370, 72, 946);\
INSERT INTO public.games VALUES (371, 72, 947);\
INSERT INTO public.games VALUES (372, 72, 948);\
INSERT INTO public.games VALUES (373, 72, 949);\
INSERT INTO public.games VALUES (374, 72, 950);\
INSERT INTO public.games VALUES (375, 72, 951);\
INSERT INTO public.games VALUES (376, 72, 952);\
INSERT INTO public.games VALUES (377, 72, 953);\
INSERT INTO public.games VALUES (378, 72, 954);\
INSERT INTO public.games VALUES (379, 72, 955);\
INSERT INTO public.games VALUES (380, 72, 956);\
INSERT INTO public.games VALUES (381, 72, 957);\
INSERT INTO public.games VALUES (382, 72, 958);\
INSERT INTO public.games VALUES (383, 72, 959);\
INSERT INTO public.games VALUES (384, 72, 960);\
INSERT INTO public.games VALUES (385, 72, 961);\
INSERT INTO public.games VALUES (386, 72, 962);\
INSERT INTO public.games VALUES (387, 72, 963);\
INSERT INTO public.games VALUES (388, 72, 964);\
INSERT INTO public.games VALUES (389, 72, 965);\
INSERT INTO public.games VALUES (390, 72, 966);\
INSERT INTO public.games VALUES (391, 72, 967);\
INSERT INTO public.games VALUES (392, 72, 968);\
INSERT INTO public.games VALUES (393, 72, 969);\
INSERT INTO public.games VALUES (394, 72, 970);\
INSERT INTO public.games VALUES (395, 72, 971);\
INSERT INTO public.games VALUES (396, 72, 972);\
INSERT INTO public.games VALUES (397, 72, 973);\
INSERT INTO public.games VALUES (398, 72, 974);\
INSERT INTO public.games VALUES (399, 72, 975);\
INSERT INTO public.games VALUES (400, 72, 976);\
INSERT INTO public.games VALUES (401, 72, 977);\
INSERT INTO public.games VALUES (402, 72, 978);\
INSERT INTO public.games VALUES (403, 72, 979);\
INSERT INTO public.games VALUES (404, 72, 980);\
INSERT INTO public.games VALUES (405, 72, 981);\
INSERT INTO public.games VALUES (406, 72, 982);\
INSERT INTO public.games VALUES (407, 72, 983);\
INSERT INTO public.games VALUES (408, 72, 984);\
INSERT INTO public.games VALUES (409, 72, 985);\
INSERT INTO public.games VALUES (410, 72, 986);\
INSERT INTO public.games VALUES (411, 72, 987);\
INSERT INTO public.games VALUES (412, 72, 988);\
INSERT INTO public.games VALUES (413, 72, 989);\
INSERT INTO public.games VALUES (414, 72, 990);\
INSERT INTO public.games VALUES (415, 72, 991);\
INSERT INTO public.games VALUES (416, 72, 992);\
INSERT INTO public.games VALUES (417, 72, 993);\
INSERT INTO public.games VALUES (418, 72, 994);\
INSERT INTO public.games VALUES (419, 72, 995);\
INSERT INTO public.games VALUES (420, 72, 996);\
INSERT INTO public.games VALUES (421, 72, 997);\
INSERT INTO public.games VALUES (422, 72, 998);\
INSERT INTO public.games VALUES (423, 72, 999);\
INSERT INTO public.games VALUES (424, 72, 1000);\
INSERT INTO public.games VALUES (425, 72, 1001);\
INSERT INTO public.games VALUES (426, 72, 1002);\
INSERT INTO public.games VALUES (427, 72, 1003);\
INSERT INTO public.games VALUES (428, 72, 1004);\
INSERT INTO public.games VALUES (429, 72, 1005);\
INSERT INTO public.games VALUES (430, 72, 1006);\
INSERT INTO public.games VALUES (431, 72, 1007);\
INSERT INTO public.games VALUES (432, 72, 1008);\
INSERT INTO public.games VALUES (433, 72, 1009);\
INSERT INTO public.games VALUES (434, 72, 1010);\
INSERT INTO public.games VALUES (435, 72, 1011);\
INSERT INTO public.games VALUES (436, 72, 1012);\
INSERT INTO public.games VALUES (437, 72, 1013);\
INSERT INTO public.games VALUES (438, 72, 1014);\
INSERT INTO public.games VALUES (439, 72, 1015);\
INSERT INTO public.games VALUES (440, 72, 1016);\
INSERT INTO public.games VALUES (441, 72, 1017);\
INSERT INTO public.games VALUES (442, 72, 1018);\
INSERT INTO public.games VALUES (443, 72, 1019);\
INSERT INTO public.games VALUES (444, 72, 1020);\
INSERT INTO public.games VALUES (445, 72, 1021);\
INSERT INTO public.games VALUES (446, 72, 1022);\
INSERT INTO public.games VALUES (447, 72, 1023);\
INSERT INTO public.games VALUES (448, 72, 1024);\
INSERT INTO public.games VALUES (449, 72, 1025);\
INSERT INTO public.games VALUES (450, 72, 1026);\
INSERT INTO public.games VALUES (451, 72, 1027);\
INSERT INTO public.games VALUES (452, 72, 1028);\
INSERT INTO public.games VALUES (453, 72, 1029);\
INSERT INTO public.games VALUES (454, 72, 1030);\
INSERT INTO public.games VALUES (455, 72, 1031);\
INSERT INTO public.games VALUES (456, 72, 1032);\
INSERT INTO public.games VALUES (457, 72, 1033);\
INSERT INTO public.games VALUES (458, 72, 1034);\
INSERT INTO public.games VALUES (459, 72, 1035);\
INSERT INTO public.games VALUES (460, 72, 1036);\
INSERT INTO public.games VALUES (461, 72, 1037);\
INSERT INTO public.games VALUES (462, 72, 1038);\
INSERT INTO public.games VALUES (463, 72, 1039);\
INSERT INTO public.games VALUES (464, 72, 1040);\
INSERT INTO public.games VALUES (465, 72, 1041);\
INSERT INTO public.games VALUES (466, 72, 1042);\
INSERT INTO public.games VALUES (467, 72, 1043);\
INSERT INTO public.games VALUES (468, 72, 1044);\
INSERT INTO public.games VALUES (469, 72, 1045);\
INSERT INTO public.games VALUES (470, 72, 1046);\
INSERT INTO public.games VALUES (471, 72, 1047);\
INSERT INTO public.games VALUES (472, 72, 1048);\
INSERT INTO public.games VALUES (473, 72, 1049);\
INSERT INTO public.games VALUES (474, 72, 1050);\
INSERT INTO public.games VALUES (475, 72, 1051);\
INSERT INTO public.games VALUES (476, 72, 1052);\
INSERT INTO public.games VALUES (477, 72, 1053);\
INSERT INTO public.games VALUES (478, 72, 1054);\
INSERT INTO public.games VALUES (479, 72, 1055);\
INSERT INTO public.games VALUES (480, 72, 1056);\
INSERT INTO public.games VALUES (481, 72, 257);\
INSERT INTO public.games VALUES (482, 72, 1057);\
INSERT INTO public.games VALUES (483, 72, 258);\
INSERT INTO public.games VALUES (484, 72, 1058);\
INSERT INTO public.games VALUES (485, 72, 259);\
INSERT INTO public.games VALUES (486, 72, 1059);\
INSERT INTO public.games VALUES (487, 72, 260);\
INSERT INTO public.games VALUES (488, 72, 261);\
INSERT INTO public.games VALUES (489, 72, 1060);\
INSERT INTO public.games VALUES (490, 72, 262);\
INSERT INTO public.games VALUES (491, 72, 1061);\
INSERT INTO public.games VALUES (492, 72, 1062);\
INSERT INTO public.games VALUES (493, 72, 263);\
INSERT INTO public.games VALUES (494, 72, 1063);\
INSERT INTO public.games VALUES (495, 72, 264);\
INSERT INTO public.games VALUES (496, 72, 265);\
INSERT INTO public.games VALUES (497, 72, 1064);\
INSERT INTO public.games VALUES (498, 72, 266);\
INSERT INTO public.games VALUES (499, 72, 1065);\
INSERT INTO public.games VALUES (500, 72, 267);\
INSERT INTO public.games VALUES (501, 72, 1066);\
INSERT INTO public.games VALUES (502, 72, 1067);\
INSERT INTO public.games VALUES (503, 72, 268);\
INSERT INTO public.games VALUES (504, 72, 269);\
INSERT INTO public.games VALUES (505, 72, 1068);\
INSERT INTO public.games VALUES (506, 72, 270);\
INSERT INTO public.games VALUES (507, 72, 1069);\
INSERT INTO public.games VALUES (508, 72, 271);\
INSERT INTO public.games VALUES (509, 72, 1070);\
INSERT INTO public.games VALUES (510, 72, 272);\
INSERT INTO public.games VALUES (511, 72, 1071);\
INSERT INTO public.games VALUES (512, 72, 273);\
INSERT INTO public.games VALUES (513, 72, 1072);\
INSERT INTO public.games VALUES (514, 72, 274);\
INSERT INTO public.games VALUES (515, 72, 1073);\
INSERT INTO public.games VALUES (516, 72, 275);\
INSERT INTO public.games VALUES (517, 72, 1074);\
INSERT INTO public.games VALUES (518, 72, 1075);\
INSERT INTO public.games VALUES (519, 72, 276);\
INSERT INTO public.games VALUES (520, 72, 1076);\
INSERT INTO public.games VALUES (521, 72, 277);\
INSERT INTO public.games VALUES (522, 72, 1077);\
INSERT INTO public.games VALUES (523, 72, 278);\
INSERT INTO public.games VALUES (524, 72, 279);\
INSERT INTO public.games VALUES (525, 72, 1078);\
INSERT INTO public.games VALUES (526, 72, 280);\
INSERT INTO public.games VALUES (527, 72, 1079);\
INSERT INTO public.games VALUES (528, 72, 281);\
INSERT INTO public.games VALUES (529, 72, 1080);\
INSERT INTO public.games VALUES (530, 72, 282);\
INSERT INTO public.games VALUES (531, 72, 1081);\
INSERT INTO public.games VALUES (532, 72, 283);\
INSERT INTO public.games VALUES (533, 72, 1082);\
INSERT INTO public.games VALUES (534, 72, 284);\
INSERT INTO public.games VALUES (535, 72, 1083);\
INSERT INTO public.games VALUES (536, 72, 285);\
INSERT INTO public.games VALUES (537, 72, 1084);\
INSERT INTO public.games VALUES (538, 72, 286);\
INSERT INTO public.games VALUES (539, 72, 1085);\
INSERT INTO public.games VALUES (540, 72, 287);\
INSERT INTO public.games VALUES (541, 72, 1086);\
INSERT INTO public.games VALUES (542, 72, 288);\
INSERT INTO public.games VALUES (543, 72, 1087);\
INSERT INTO public.games VALUES (544, 72, 289);\
INSERT INTO public.games VALUES (545, 72, 1088);\
INSERT INTO public.games VALUES (546, 72, 290);\
INSERT INTO public.games VALUES (547, 72, 1089);\
INSERT INTO public.games VALUES (548, 72, 291);\
INSERT INTO public.games VALUES (549, 72, 1090);\
INSERT INTO public.games VALUES (550, 72, 292);\
INSERT INTO public.games VALUES (551, 72, 1091);\
INSERT INTO public.games VALUES (552, 72, 293);\
INSERT INTO public.games VALUES (553, 72, 1092);\
INSERT INTO public.games VALUES (554, 72, 294);\
INSERT INTO public.games VALUES (555, 72, 1093);\
INSERT INTO public.games VALUES (556, 72, 295);\
INSERT INTO public.games VALUES (557, 72, 1094);\
INSERT INTO public.games VALUES (558, 72, 296);\
INSERT INTO public.games VALUES (559, 72, 1095);\
INSERT INTO public.games VALUES (560, 72, 297);\
INSERT INTO public.games VALUES (561, 72, 1096);\
INSERT INTO public.games VALUES (562, 72, 298);\
INSERT INTO public.games VALUES (563, 72, 1097);\
INSERT INTO public.games VALUES (564, 72, 299);\
INSERT INTO public.games VALUES (565, 72, 1098);\
INSERT INTO public.games VALUES (566, 72, 300);\
INSERT INTO public.games VALUES (567, 72, 1099);\
INSERT INTO public.games VALUES (568, 72, 301);\
INSERT INTO public.games VALUES (569, 72, 302);\
INSERT INTO public.games VALUES (570, 72, 1100);\
INSERT INTO public.games VALUES (571, 72, 303);\
INSERT INTO public.games VALUES (572, 72, 1101);\
INSERT INTO public.games VALUES (573, 72, 304);\
INSERT INTO public.games VALUES (574, 72, 1102);\
INSERT INTO public.games VALUES (575, 72, 1103);\
INSERT INTO public.games VALUES (576, 72, 305);\
INSERT INTO public.games VALUES (577, 72, 1104);\
INSERT INTO public.games VALUES (578, 72, 306);\
INSERT INTO public.games VALUES (579, 72, 1105);\
INSERT INTO public.games VALUES (580, 72, 307);\
INSERT INTO public.games VALUES (581, 72, 1106);\
INSERT INTO public.games VALUES (582, 72, 308);\
INSERT INTO public.games VALUES (583, 72, 1107);\
INSERT INTO public.games VALUES (584, 72, 309);\
INSERT INTO public.games VALUES (585, 72, 1108);\
INSERT INTO public.games VALUES (586, 72, 310);\
INSERT INTO public.games VALUES (587, 72, 1109);\
INSERT INTO public.games VALUES (588, 72, 311);\
INSERT INTO public.games VALUES (589, 72, 312);\
INSERT INTO public.games VALUES (590, 72, 1110);\
INSERT INTO public.games VALUES (591, 72, 313);\
INSERT INTO public.games VALUES (592, 72, 1111);\
INSERT INTO public.games VALUES (593, 72, 314);\
INSERT INTO public.games VALUES (594, 72, 1112);\
INSERT INTO public.games VALUES (595, 72, 315);\
INSERT INTO public.games VALUES (596, 72, 1113);\
INSERT INTO public.games VALUES (597, 72, 316);\
INSERT INTO public.games VALUES (598, 72, 1114);\
INSERT INTO public.games VALUES (599, 72, 317);\
INSERT INTO public.games VALUES (600, 72, 1115);\
INSERT INTO public.games VALUES (601, 72, 318);\
INSERT INTO public.games VALUES (602, 72, 1116);\
INSERT INTO public.games VALUES (603, 72, 319);\
INSERT INTO public.games VALUES (604, 72, 1117);\
INSERT INTO public.games VALUES (605, 72, 1118);\
INSERT INTO public.games VALUES (606, 72, 320);\
INSERT INTO public.games VALUES (607, 72, 321);\
INSERT INTO public.games VALUES (608, 72, 1119);\
INSERT INTO public.games VALUES (609, 72, 322);\
INSERT INTO public.games VALUES (610, 72, 1120);\
INSERT INTO public.games VALUES (611, 72, 323);\
INSERT INTO public.games VALUES (612, 72, 1121);\
INSERT INTO public.games VALUES (613, 72, 324);\
INSERT INTO public.games VALUES (614, 72, 1122);\
INSERT INTO public.games VALUES (615, 72, 325);\
INSERT INTO public.games VALUES (616, 72, 1123);\
INSERT INTO public.games VALUES (617, 72, 326);\
INSERT INTO public.games VALUES (618, 72, 1124);\
INSERT INTO public.games VALUES (619, 72, 327);\
INSERT INTO public.games VALUES (620, 72, 1125);\
INSERT INTO public.games VALUES (621, 72, 328);\
INSERT INTO public.games VALUES (622, 72, 1126);\
INSERT INTO public.games VALUES (623, 72, 329);\
INSERT INTO public.games VALUES (624, 72, 1127);\
INSERT INTO public.games VALUES (625, 72, 330);\
INSERT INTO public.games VALUES (626, 72, 1128);\
INSERT INTO public.games VALUES (627, 72, 331);\
INSERT INTO public.games VALUES (628, 72, 1129);\
INSERT INTO public.games VALUES (629, 72, 332);\
INSERT INTO public.games VALUES (630, 72, 333);\
INSERT INTO public.games VALUES (631, 72, 1130);\
INSERT INTO public.games VALUES (632, 72, 334);\
INSERT INTO public.games VALUES (633, 72, 1131);\
INSERT INTO public.games VALUES (634, 72, 335);\
INSERT INTO public.games VALUES (635, 72, 1132);\
INSERT INTO public.games VALUES (636, 72, 1133);\
INSERT INTO public.games VALUES (637, 72, 336);\
INSERT INTO public.games VALUES (638, 72, 1134);\
INSERT INTO public.games VALUES (639, 72, 337);\
INSERT INTO public.games VALUES (640, 72, 1135);\
INSERT INTO public.games VALUES (641, 72, 338);\
INSERT INTO public.games VALUES (642, 72, 339);\
INSERT INTO public.games VALUES (643, 72, 1136);\
INSERT INTO public.games VALUES (644, 72, 340);\
INSERT INTO public.games VALUES (645, 72, 1137);\
INSERT INTO public.games VALUES (646, 72, 1138);\
INSERT INTO public.games VALUES (647, 72, 341);\
INSERT INTO public.games VALUES (648, 72, 1139);\
INSERT INTO public.games VALUES (649, 72, 342);\
INSERT INTO public.games VALUES (650, 72, 343);\
INSERT INTO public.games VALUES (651, 72, 1140);\
INSERT INTO public.games VALUES (652, 72, 1141);\
INSERT INTO public.games VALUES (653, 72, 344);\
INSERT INTO public.games VALUES (654, 72, 1142);\
INSERT INTO public.games VALUES (655, 72, 345);\
INSERT INTO public.games VALUES (656, 72, 1143);\
INSERT INTO public.games VALUES (657, 72, 346);\
INSERT INTO public.games VALUES (658, 72, 347);\
INSERT INTO public.games VALUES (659, 72, 1144);\
INSERT INTO public.games VALUES (660, 72, 348);\
INSERT INTO public.games VALUES (661, 72, 1145);\
INSERT INTO public.games VALUES (662, 72, 349);\
INSERT INTO public.games VALUES (663, 72, 1146);\
INSERT INTO public.games VALUES (664, 72, 350);\
INSERT INTO public.games VALUES (665, 72, 1147);\
INSERT INTO public.games VALUES (666, 72, 1148);\
INSERT INTO public.games VALUES (667, 72, 351);\
INSERT INTO public.games VALUES (668, 72, 1149);\
INSERT INTO public.games VALUES (669, 72, 352);\
INSERT INTO public.games VALUES (670, 72, 1150);\
INSERT INTO public.games VALUES (671, 72, 353);\
INSERT INTO public.games VALUES (672, 72, 1151);\
INSERT INTO public.games VALUES (673, 72, 354);\
INSERT INTO public.games VALUES (674, 72, 1152);\
INSERT INTO public.games VALUES (675, 72, 355);\
INSERT INTO public.games VALUES (676, 72, 356);\
INSERT INTO public.games VALUES (677, 72, 1153);\
INSERT INTO public.games VALUES (678, 72, 357);\
INSERT INTO public.games VALUES (679, 72, 1154);\
INSERT INTO public.games VALUES (680, 72, 358);\
INSERT INTO public.games VALUES (681, 72, 1155);\
INSERT INTO public.games VALUES (682, 72, 359);\
INSERT INTO public.games VALUES (683, 72, 1156);\
INSERT INTO public.games VALUES (684, 72, 360);\
INSERT INTO public.games VALUES (685, 72, 1157);\
INSERT INTO public.games VALUES (686, 72, 361);\
INSERT INTO public.games VALUES (687, 72, 1158);\
INSERT INTO public.games VALUES (688, 72, 362);\
INSERT INTO public.games VALUES (689, 72, 1159);\
INSERT INTO public.games VALUES (690, 72, 363);\
INSERT INTO public.games VALUES (691, 72, 1160);\
INSERT INTO public.games VALUES (692, 72, 364);\
INSERT INTO public.games VALUES (693, 72, 1161);\
INSERT INTO public.games VALUES (694, 72, 365);\
INSERT INTO public.games VALUES (695, 72, 1162);\
INSERT INTO public.games VALUES (696, 72, 366);\
INSERT INTO public.games VALUES (697, 72, 1163);\
INSERT INTO public.games VALUES (698, 72, 367);\
INSERT INTO public.games VALUES (699, 72, 1164);\
INSERT INTO public.games VALUES (700, 72, 368);\
INSERT INTO public.games VALUES (701, 72, 1165);\
INSERT INTO public.games VALUES (702, 72, 369);\
INSERT INTO public.games VALUES (703, 72, 1166);\
INSERT INTO public.games VALUES (704, 72, 370);\
INSERT INTO public.games VALUES (705, 72, 371);\
INSERT INTO public.games VALUES (706, 72, 1167);\
INSERT INTO public.games VALUES (707, 72, 372);\
INSERT INTO public.games VALUES (708, 72, 1168);\
INSERT INTO public.games VALUES (709, 72, 373);\
INSERT INTO public.games VALUES (710, 72, 1169);\
INSERT INTO public.games VALUES (711, 72, 1170);\
INSERT INTO public.games VALUES (712, 72, 374);\
INSERT INTO public.games VALUES (713, 72, 375);\
INSERT INTO public.games VALUES (714, 72, 1171);\
INSERT INTO public.games VALUES (715, 72, 376);\
INSERT INTO public.games VALUES (716, 72, 1172);\
INSERT INTO public.games VALUES (717, 72, 377);\
INSERT INTO public.games VALUES (718, 72, 1173);\
INSERT INTO public.games VALUES (719, 72, 378);\
INSERT INTO public.games VALUES (720, 72, 1174);\
INSERT INTO public.games VALUES (721, 72, 379);\
INSERT INTO public.games VALUES (722, 72, 1175);\
INSERT INTO public.games VALUES (723, 72, 380);\
INSERT INTO public.games VALUES (724, 72, 1176);\
INSERT INTO public.games VALUES (725, 72, 381);\
INSERT INTO public.games VALUES (726, 72, 1177);\
INSERT INTO public.games VALUES (727, 72, 382);\
INSERT INTO public.games VALUES (728, 72, 1178);\
INSERT INTO public.games VALUES (729, 72, 383);\
INSERT INTO public.games VALUES (730, 72, 1179);\
INSERT INTO public.games VALUES (731, 72, 384);\
INSERT INTO public.games VALUES (732, 72, 385);\
INSERT INTO public.games VALUES (733, 72, 1180);\
INSERT INTO public.games VALUES (734, 72, 386);\
INSERT INTO public.games VALUES (735, 72, 1181);\
INSERT INTO public.games VALUES (736, 72, 387);\
INSERT INTO public.games VALUES (737, 72, 1182);\
INSERT INTO public.games VALUES (738, 72, 1183);\
INSERT INTO public.games VALUES (739, 72, 388);\
INSERT INTO public.games VALUES (740, 72, 389);\
INSERT INTO public.games VALUES (741, 72, 1184);\
INSERT INTO public.games VALUES (742, 72, 1185);\
INSERT INTO public.games VALUES (743, 72, 390);\
INSERT INTO public.games VALUES (744, 72, 1186);\
INSERT INTO public.games VALUES (745, 72, 391);\
INSERT INTO public.games VALUES (746, 72, 1187);\
INSERT INTO public.games VALUES (747, 72, 392);\
INSERT INTO public.games VALUES (748, 72, 1188);\
INSERT INTO public.games VALUES (749, 72, 393);\
INSERT INTO public.games VALUES (750, 72, 1189);\
INSERT INTO public.games VALUES (751, 72, 394);\
INSERT INTO public.games VALUES (752, 72, 1190);\
INSERT INTO public.games VALUES (753, 72, 395);\
INSERT INTO public.games VALUES (755, 72, 396);\
INSERT INTO public.games VALUES (754, 72, 1191);\
INSERT INTO public.games VALUES (756, 72, 1192);\
INSERT INTO public.games VALUES (757, 72, 397);\
INSERT INTO public.games VALUES (758, 72, 1193);\
INSERT INTO public.games VALUES (759, 72, 398);\
INSERT INTO public.games VALUES (760, 72, 1194);\
INSERT INTO public.games VALUES (761, 72, 399);\
INSERT INTO public.games VALUES (762, 72, 1195);\
INSERT INTO public.games VALUES (763, 72, 400);\
INSERT INTO public.games VALUES (764, 72, 401);\
INSERT INTO public.games VALUES (765, 72, 1196);\
INSERT INTO public.games VALUES (766, 72, 1197);\
INSERT INTO public.games VALUES (767, 72, 402);\
INSERT INTO public.games VALUES (768, 72, 1198);\
INSERT INTO public.games VALUES (769, 72, 403);\
INSERT INTO public.games VALUES (770, 72, 404);\
INSERT INTO public.games VALUES (771, 72, 1199);\
INSERT INTO public.games VALUES (772, 72, 405);\
INSERT INTO public.games VALUES (773, 72, 1200);\
INSERT INTO public.games VALUES (774, 72, 406);\
INSERT INTO public.games VALUES (775, 72, 1201);\
INSERT INTO public.games VALUES (776, 72, 407);\
INSERT INTO public.games VALUES (777, 72, 1202);\
INSERT INTO public.games VALUES (778, 72, 408);\
INSERT INTO public.games VALUES (779, 72, 1203);\
INSERT INTO public.games VALUES (780, 72, 409);\
INSERT INTO public.games VALUES (781, 72, 1204);\
INSERT INTO public.games VALUES (782, 72, 410);\
INSERT INTO public.games VALUES (783, 72, 1205);\
INSERT INTO public.games VALUES (784, 72, 411);\
INSERT INTO public.games VALUES (785, 72, 412);\
INSERT INTO public.games VALUES (786, 72, 1206);\
INSERT INTO public.games VALUES (787, 72, 413);\
INSERT INTO public.games VALUES (788, 72, 1207);\
INSERT INTO public.games VALUES (789, 72, 414);\
INSERT INTO public.games VALUES (790, 72, 1208);\
INSERT INTO public.games VALUES (791, 72, 415);\
INSERT INTO public.games VALUES (792, 72, 1209);\
INSERT INTO public.games VALUES (793, 72, 416);\
INSERT INTO public.games VALUES (794, 72, 1210);\
INSERT INTO public.games VALUES (795, 72, 417);\
INSERT INTO public.games VALUES (796, 72, 1211);\
INSERT INTO public.games VALUES (797, 72, 418);\
INSERT INTO public.games VALUES (798, 72, 1212);\
INSERT INTO public.games VALUES (799, 72, 419);\
INSERT INTO public.games VALUES (800, 72, 1213);\
INSERT INTO public.games VALUES (801, 72, 420);\
INSERT INTO public.games VALUES (802, 72, 421);\
INSERT INTO public.games VALUES (803, 72, 1214);\
INSERT INTO public.games VALUES (804, 72, 422);\
INSERT INTO public.games VALUES (805, 72, 1215);\
INSERT INTO public.games VALUES (806, 72, 423);\
INSERT INTO public.games VALUES (807, 72, 1216);\
INSERT INTO public.games VALUES (808, 72, 424);\
INSERT INTO public.games VALUES (809, 72, 1217);\
INSERT INTO public.games VALUES (810, 72, 425);\
INSERT INTO public.games VALUES (811, 72, 1218);\
INSERT INTO public.games VALUES (812, 72, 426);\
INSERT INTO public.games VALUES (813, 72, 1219);\
INSERT INTO public.games VALUES (814, 72, 427);\
INSERT INTO public.games VALUES (815, 72, 1220);\
INSERT INTO public.games VALUES (816, 72, 428);\
INSERT INTO public.games VALUES (817, 72, 1221);\
INSERT INTO public.games VALUES (818, 72, 429);\
INSERT INTO public.games VALUES (819, 72, 1222);\
INSERT INTO public.games VALUES (821, 72, 430);\
INSERT INTO public.games VALUES (820, 72, 1223);\
INSERT INTO public.games VALUES (822, 72, 1224);\
INSERT INTO public.games VALUES (823, 72, 431);\
INSERT INTO public.games VALUES (824, 72, 432);\
INSERT INTO public.games VALUES (825, 72, 1225);\
INSERT INTO public.games VALUES (826, 72, 433);\
INSERT INTO public.games VALUES (827, 72, 1226);\
INSERT INTO public.games VALUES (828, 72, 1227);\
INSERT INTO public.games VALUES (829, 72, 434);\
INSERT INTO public.games VALUES (830, 72, 1228);\
INSERT INTO public.games VALUES (831, 72, 435);\
INSERT INTO public.games VALUES (832, 72, 1229);\
INSERT INTO public.games VALUES (833, 72, 436);\
INSERT INTO public.games VALUES (834, 72, 1230);\
INSERT INTO public.games VALUES (835, 72, 437);\
INSERT INTO public.games VALUES (836, 72, 1231);\
INSERT INTO public.games VALUES (837, 72, 438);\
INSERT INTO public.games VALUES (838, 72, 439);\
INSERT INTO public.games VALUES (839, 72, 1232);\
INSERT INTO public.games VALUES (840, 72, 440);\
INSERT INTO public.games VALUES (841, 72, 1233);\
INSERT INTO public.games VALUES (842, 72, 1234);\
INSERT INTO public.games VALUES (843, 72, 441);\
INSERT INTO public.games VALUES (844, 72, 442);\
INSERT INTO public.games VALUES (845, 72, 1235);\
INSERT INTO public.games VALUES (846, 72, 443);\
INSERT INTO public.games VALUES (847, 72, 1236);\
INSERT INTO public.games VALUES (848, 72, 444);\
INSERT INTO public.games VALUES (849, 72, 1237);\
INSERT INTO public.games VALUES (850, 72, 445);\
INSERT INTO public.games VALUES (851, 72, 1238);\
INSERT INTO public.games VALUES (852, 72, 446);\
INSERT INTO public.games VALUES (853, 72, 1239);\
INSERT INTO public.games VALUES (854, 72, 447);\
INSERT INTO public.games VALUES (855, 72, 1240);\
INSERT INTO public.games VALUES (856, 72, 448);\
INSERT INTO public.games VALUES (857, 72, 1241);\
INSERT INTO public.games VALUES (858, 72, 449);\
INSERT INTO public.games VALUES (859, 72, 1242);\
INSERT INTO public.games VALUES (860, 72, 450);\
INSERT INTO public.games VALUES (861, 72, 1243);\
INSERT INTO public.games VALUES (862, 72, 451);\
INSERT INTO public.games VALUES (863, 72, 1244);\
INSERT INTO public.games VALUES (864, 72, 452);\
INSERT INTO public.games VALUES (865, 72, 1245);\
INSERT INTO public.games VALUES (866, 72, 453);\
INSERT INTO public.games VALUES (867, 72, 1246);\
INSERT INTO public.games VALUES (868, 72, 454);\
INSERT INTO public.games VALUES (869, 72, 455);\
INSERT INTO public.games VALUES (870, 72, 1247);\
INSERT INTO public.games VALUES (871, 72, 1248);\
INSERT INTO public.games VALUES (872, 72, 456);\
INSERT INTO public.games VALUES (873, 72, 1249);\
INSERT INTO public.games VALUES (874, 72, 457);\
INSERT INTO public.games VALUES (875, 72, 1250);\
INSERT INTO public.games VALUES (876, 72, 458);\
INSERT INTO public.games VALUES (877, 72, 1251);\
INSERT INTO public.games VALUES (878, 72, 459);\
INSERT INTO public.games VALUES (879, 72, 1252);\
INSERT INTO public.games VALUES (880, 72, 460);\
INSERT INTO public.games VALUES (881, 72, 1253);\
INSERT INTO public.games VALUES (882, 72, 1254);\
INSERT INTO public.games VALUES (883, 72, 461);\
INSERT INTO public.games VALUES (884, 72, 1255);\
INSERT INTO public.games VALUES (885, 72, 462);\
INSERT INTO public.games VALUES (886, 72, 1256);\
INSERT INTO public.games VALUES (887, 72, 463);\
INSERT INTO public.games VALUES (888, 72, 1257);\
INSERT INTO public.games VALUES (889, 72, 464);\
INSERT INTO public.games VALUES (890, 72, 1258);\
INSERT INTO public.games VALUES (891, 72, 465);\
INSERT INTO public.games VALUES (892, 72, 1259);\
INSERT INTO public.games VALUES (893, 72, 466);\
INSERT INTO public.games VALUES (894, 72, 1260);\
INSERT INTO public.games VALUES (895, 72, 1261);\
INSERT INTO public.games VALUES (896, 72, 467);\
INSERT INTO public.games VALUES (897, 72, 1262);\
INSERT INTO public.games VALUES (898, 72, 468);\
INSERT INTO public.games VALUES (900, 72, 469);\
INSERT INTO public.games VALUES (899, 72, 1263);\
INSERT INTO public.games VALUES (901, 72, 470);\
INSERT INTO public.games VALUES (902, 72, 1264);\
INSERT INTO public.games VALUES (903, 72, 471);\
INSERT INTO public.games VALUES (904, 72, 1265);\
INSERT INTO public.games VALUES (905, 72, 472);\
INSERT INTO public.games VALUES (906, 72, 1266);\
INSERT INTO public.games VALUES (907, 72, 473);\
INSERT INTO public.games VALUES (908, 72, 1267);\
INSERT INTO public.games VALUES (909, 72, 474);\
INSERT INTO public.games VALUES (910, 72, 1268);\
INSERT INTO public.games VALUES (911, 72, 475);\
INSERT INTO public.games VALUES (912, 72, 1269);\
INSERT INTO public.games VALUES (913, 72, 476);\
INSERT INTO public.games VALUES (914, 72, 1270);\
INSERT INTO public.games VALUES (915, 72, 477);\
INSERT INTO public.games VALUES (916, 72, 1271);\
INSERT INTO public.games VALUES (917, 72, 478);\
INSERT INTO public.games VALUES (918, 72, 1272);\
INSERT INTO public.games VALUES (919, 72, 479);\
INSERT INTO public.games VALUES (920, 72, 1273);\
INSERT INTO public.games VALUES (921, 72, 480);\
INSERT INTO public.games VALUES (922, 72, 481);\
INSERT INTO public.games VALUES (923, 72, 1274);\
INSERT INTO public.games VALUES (924, 72, 482);\
INSERT INTO public.games VALUES (925, 72, 1275);\
INSERT INTO public.games VALUES (926, 72, 483);\
INSERT INTO public.games VALUES (927, 72, 1276);\
INSERT INTO public.games VALUES (928, 72, 484);\
INSERT INTO public.games VALUES (929, 72, 1277);\
INSERT INTO public.games VALUES (930, 72, 485);\
INSERT INTO public.games VALUES (931, 72, 1278);\
INSERT INTO public.games VALUES (932, 72, 486);\
INSERT INTO public.games VALUES (933, 72, 1279);\
INSERT INTO public.games VALUES (934, 72, 487);\
INSERT INTO public.games VALUES (935, 72, 1280);\
INSERT INTO public.games VALUES (936, 72, 488);\
INSERT INTO public.games VALUES (937, 72, 1281);\
INSERT INTO public.games VALUES (938, 72, 489);\
INSERT INTO public.games VALUES (939, 72, 1282);\
INSERT INTO public.games VALUES (940, 72, 490);\
INSERT INTO public.games VALUES (941, 72, 1283);\
INSERT INTO public.games VALUES (942, 72, 491);\
INSERT INTO public.games VALUES (943, 72, 1284);\
INSERT INTO public.games VALUES (944, 72, 492);\
INSERT INTO public.games VALUES (945, 72, 1285);\
INSERT INTO public.games VALUES (946, 72, 493);\
INSERT INTO public.games VALUES (947, 72, 1286);\
INSERT INTO public.games VALUES (948, 72, 494);\
INSERT INTO public.games VALUES (949, 72, 1287);\
INSERT INTO public.games VALUES (950, 72, 495);\
INSERT INTO public.games VALUES (951, 72, 1288);\
INSERT INTO public.games VALUES (952, 72, 496);\
INSERT INTO public.games VALUES (953, 72, 1289);\
INSERT INTO public.games VALUES (954, 72, 497);\
INSERT INTO public.games VALUES (955, 72, 1290);\
INSERT INTO public.games VALUES (956, 72, 498);\
INSERT INTO public.games VALUES (957, 72, 499);\
INSERT INTO public.games VALUES (958, 72, 1291);\
INSERT INTO public.games VALUES (959, 72, 500);\
INSERT INTO public.games VALUES (960, 72, 1292);\
INSERT INTO public.games VALUES (961, 72, 501);\
INSERT INTO public.games VALUES (962, 72, 1293);\
INSERT INTO public.games VALUES (963, 72, 502);\
INSERT INTO public.games VALUES (964, 72, 1294);\
INSERT INTO public.games VALUES (965, 72, 503);\
INSERT INTO public.games VALUES (966, 72, 1295);\
INSERT INTO public.games VALUES (967, 72, 504);\
INSERT INTO public.games VALUES (968, 72, 1296);\
INSERT INTO public.games VALUES (969, 72, 1297);\
INSERT INTO public.games VALUES (970, 72, 505);\
INSERT INTO public.games VALUES (971, 72, 1298);\
INSERT INTO public.games VALUES (972, 72, 506);\
INSERT INTO public.games VALUES (973, 72, 507);\
INSERT INTO public.games VALUES (974, 72, 1299);\
INSERT INTO public.games VALUES (975, 72, 508);\
INSERT INTO public.games VALUES (976, 72, 1300);\
INSERT INTO public.games VALUES (977, 72, 509);\
INSERT INTO public.games VALUES (978, 72, 1301);\
INSERT INTO public.games VALUES (979, 72, 510);\
INSERT INTO public.games VALUES (980, 72, 1302);\
INSERT INTO public.games VALUES (981, 72, 511);\
INSERT INTO public.games VALUES (982, 72, 1303);\
INSERT INTO public.games VALUES (983, 72, 512);\
INSERT INTO public.games VALUES (984, 72, 1304);\
INSERT INTO public.games VALUES (985, 72, 513);\
INSERT INTO public.games VALUES (986, 72, 1305);\
INSERT INTO public.games VALUES (987, 72, 514);\
INSERT INTO public.games VALUES (988, 72, 1306);\
INSERT INTO public.games VALUES (989, 72, 1307);\
INSERT INTO public.games VALUES (990, 72, 1308);\
INSERT INTO public.games VALUES (991, 72, 1309);\
INSERT INTO public.games VALUES (992, 72, 1310);\
INSERT INTO public.games VALUES (993, 72, 1311);\
INSERT INTO public.games VALUES (994, 73, 160);\
INSERT INTO public.games VALUES (995, 72, 1312);\
INSERT INTO public.games VALUES (996, 73, 161);\
INSERT INTO public.games VALUES (997, 72, 1313);\
INSERT INTO public.games VALUES (998, 73, 162);\
INSERT INTO public.games VALUES (999, 72, 1314);\
INSERT INTO public.games VALUES (1000, 73, 163);\
INSERT INTO public.games VALUES (1001, 73, 164);\
INSERT INTO public.games VALUES (1002, 73, 165);\
INSERT INTO public.games VALUES (1003, 73, 166);\
INSERT INTO public.games VALUES (1004, 73, 167);\
INSERT INTO public.games VALUES (1005, 73, 168);\
INSERT INTO public.games VALUES (1006, 73, 169);\
INSERT INTO public.games VALUES (1007, 73, 170);\
INSERT INTO public.games VALUES (1008, 73, 171);\
INSERT INTO public.games VALUES (1009, 73, 172);\
INSERT INTO public.games VALUES (1010, 73, 173);\
INSERT INTO public.games VALUES (1011, 73, 174);\
INSERT INTO public.games VALUES (1012, 73, 175);\
INSERT INTO public.games VALUES (1013, 73, 176);\
INSERT INTO public.games VALUES (1014, 73, 177);\
INSERT INTO public.games VALUES (1015, 73, 178);\
INSERT INTO public.games VALUES (1016, 73, 179);\
INSERT INTO public.games VALUES (1017, 73, 180);\
INSERT INTO public.games VALUES (1018, 73, 181);\
INSERT INTO public.games VALUES (1019, 73, 182);\
INSERT INTO public.games VALUES (1020, 73, 183);\
INSERT INTO public.games VALUES (1021, 73, 184);\
INSERT INTO public.games VALUES (1022, 73, 185);\
INSERT INTO public.games VALUES (1023, 73, 186);\
INSERT INTO public.games VALUES (1024, 73, 187);\
INSERT INTO public.games VALUES (1025, 73, 188);\
INSERT INTO public.games VALUES (1026, 73, 189);\
INSERT INTO public.games VALUES (1027, 73, 190);\
INSERT INTO public.games VALUES (1028, 73, 191);\
INSERT INTO public.games VALUES (1029, 73, 192);\
INSERT INTO public.games VALUES (1030, 73, 193);\
INSERT INTO public.games VALUES (1031, 73, 194);\
INSERT INTO public.games VALUES (1032, 73, 195);\
INSERT INTO public.games VALUES (1033, 73, 196);\
INSERT INTO public.games VALUES (1034, 73, 197);\
INSERT INTO public.games VALUES (1035, 73, 198);\
INSERT INTO public.games VALUES (1036, 73, 199);\
INSERT INTO public.games VALUES (1037, 73, 200);\
INSERT INTO public.games VALUES (1038, 73, 201);\
INSERT INTO public.games VALUES (1039, 73, 202);\
INSERT INTO public.games VALUES (1040, 73, 203);\
INSERT INTO public.games VALUES (1041, 73, 204);\
INSERT INTO public.games VALUES (1042, 73, 205);\
INSERT INTO public.games VALUES (1043, 73, 206);\
INSERT INTO public.games VALUES (1044, 73, 207);\
INSERT INTO public.games VALUES (1045, 73, 208);\
INSERT INTO public.games VALUES (1046, 73, 209);\
INSERT INTO public.games VALUES (1047, 73, 210);\
INSERT INTO public.games VALUES (1048, 73, 211);\
INSERT INTO public.games VALUES (1049, 73, 212);\
INSERT INTO public.games VALUES (1050, 73, 213);\
INSERT INTO public.games VALUES (1051, 73, 214);\
INSERT INTO public.games VALUES (1052, 73, 215);\
INSERT INTO public.games VALUES (1053, 73, 216);\
INSERT INTO public.games VALUES (1054, 73, 217);\
INSERT INTO public.games VALUES (1055, 73, 218);\
INSERT INTO public.games VALUES (1056, 73, 219);\
INSERT INTO public.games VALUES (1057, 73, 220);\
INSERT INTO public.games VALUES (1058, 73, 221);\
INSERT INTO public.games VALUES (1059, 73, 222);\
INSERT INTO public.games VALUES (1060, 73, 223);\
INSERT INTO public.games VALUES (1061, 73, 224);\
INSERT INTO public.games VALUES (1062, 73, 225);\
INSERT INTO public.games VALUES (1063, 73, 226);\
INSERT INTO public.games VALUES (1064, 73, 227);\
INSERT INTO public.games VALUES (1065, 73, 228);\
INSERT INTO public.games VALUES (1066, 73, 229);\
INSERT INTO public.games VALUES (1067, 73, 230);\
INSERT INTO public.games VALUES (1068, 73, 231);\
INSERT INTO public.games VALUES (1069, 73, 232);\
INSERT INTO public.games VALUES (1070, 73, 233);\
INSERT INTO public.games VALUES (1071, 73, 234);\
INSERT INTO public.games VALUES (1072, 73, 235);\
INSERT INTO public.games VALUES (1073, 73, 236);\
INSERT INTO public.games VALUES (1074, 73, 237);\
INSERT INTO public.games VALUES (1075, 73, 238);\
INSERT INTO public.games VALUES (1076, 73, 239);\
INSERT INTO public.games VALUES (1077, 73, 240);\
INSERT INTO public.games VALUES (1078, 73, 241);\
INSERT INTO public.games VALUES (1079, 73, 242);\
INSERT INTO public.games VALUES (1080, 73, 243);\
INSERT INTO public.games VALUES (1081, 73, 244);\
INSERT INTO public.games VALUES (1082, 73, 245);\
INSERT INTO public.games VALUES (1083, 73, 246);\
INSERT INTO public.games VALUES (1084, 73, 247);\
INSERT INTO public.games VALUES (1085, 73, 248);\
INSERT INTO public.games VALUES (1086, 73, 249);\
INSERT INTO public.games VALUES (1087, 73, 250);\
INSERT INTO public.games VALUES (1088, 73, 251);\
INSERT INTO public.games VALUES (1089, 73, 252);\
INSERT INTO public.games VALUES (1090, 73, 253);\
INSERT INTO public.games VALUES (1091, 73, 254);\
INSERT INTO public.games VALUES (1092, 73, 255);\
INSERT INTO public.games VALUES (1093, 73, 256);\
INSERT INTO public.games VALUES (1094, 73, 257);\
INSERT INTO public.games VALUES (1095, 73, 258);\
INSERT INTO public.games VALUES (1096, 73, 259);\
INSERT INTO public.games VALUES (1097, 73, 260);\
INSERT INTO public.games VALUES (1098, 73, 261);\
INSERT INTO public.games VALUES (1099, 73, 262);\
INSERT INTO public.games VALUES (1100, 73, 263);\
INSERT INTO public.games VALUES (1101, 73, 264);\
INSERT INTO public.games VALUES (1102, 73, 265);\
INSERT INTO public.games VALUES (1103, 73, 266);\
INSERT INTO public.games VALUES (1104, 73, 267);\
INSERT INTO public.games VALUES (1105, 73, 268);\
INSERT INTO public.games VALUES (1106, 73, 269);\
INSERT INTO public.games VALUES (1107, 73, 270);\
INSERT INTO public.games VALUES (1108, 73, 271);\
INSERT INTO public.games VALUES (1109, 73, 272);\
INSERT INTO public.games VALUES (1110, 73, 273);\
INSERT INTO public.games VALUES (1111, 73, 274);\
INSERT INTO public.games VALUES (1112, 73, 275);\
INSERT INTO public.games VALUES (1113, 73, 276);\
INSERT INTO public.games VALUES (1114, 73, 277);\
INSERT INTO public.games VALUES (1115, 73, 278);\
INSERT INTO public.games VALUES (1116, 73, 279);\
INSERT INTO public.games VALUES (1117, 73, 280);\
INSERT INTO public.games VALUES (1118, 73, 281);\
INSERT INTO public.games VALUES (1119, 73, 282);\
INSERT INTO public.games VALUES (1120, 73, 283);\
INSERT INTO public.games VALUES (1121, 73, 284);\
INSERT INTO public.games VALUES (1122, 73, 285);\
INSERT INTO public.games VALUES (1123, 73, 286);\
INSERT INTO public.games VALUES (1124, 73, 287);\
INSERT INTO public.games VALUES (1125, 73, 288);\
INSERT INTO public.games VALUES (1126, 73, 289);\
INSERT INTO public.games VALUES (1127, 73, 290);\
INSERT INTO public.games VALUES (1128, 73, 291);\
INSERT INTO public.games VALUES (1129, 73, 292);\
INSERT INTO public.games VALUES (1130, 73, 293);\
INSERT INTO public.games VALUES (1131, 73, 294);\
INSERT INTO public.games VALUES (1132, 73, 295);\
INSERT INTO public.games VALUES (1133, 73, 296);\
INSERT INTO public.games VALUES (1134, 73, 297);\
INSERT INTO public.games VALUES (1135, 73, 298);\
INSERT INTO public.games VALUES (1136, 73, 299);\
INSERT INTO public.games VALUES (1137, 73, 300);\
INSERT INTO public.games VALUES (1138, 73, 301);\
INSERT INTO public.games VALUES (1139, 73, 302);\
INSERT INTO public.games VALUES (1140, 73, 303);\
INSERT INTO public.games VALUES (1141, 73, 304);\
INSERT INTO public.games VALUES (1142, 73, 305);\
INSERT INTO public.games VALUES (1143, 73, 306);\
INSERT INTO public.games VALUES (1144, 73, 307);\
INSERT INTO public.games VALUES (1145, 73, 308);\
INSERT INTO public.games VALUES (1146, 73, 309);\
INSERT INTO public.games VALUES (1147, 73, 310);\
INSERT INTO public.games VALUES (1148, 73, 311);\
INSERT INTO public.games VALUES (1149, 73, 312);\
INSERT INTO public.games VALUES (1150, 73, 313);\
INSERT INTO public.games VALUES (1151, 73, 314);\
INSERT INTO public.games VALUES (1152, 73, 315);\
INSERT INTO public.games VALUES (1153, 73, 316);\
INSERT INTO public.games VALUES (1154, 73, 317);\
INSERT INTO public.games VALUES (1155, 73, 318);\
INSERT INTO public.games VALUES (1156, 73, 319);\
INSERT INTO public.games VALUES (1157, 73, 320);\
INSERT INTO public.games VALUES (1158, 73, 751);\
INSERT INTO public.games VALUES (1159, 73, 752);\
INSERT INTO public.games VALUES (1160, 73, 753);\
INSERT INTO public.games VALUES (1161, 73, 754);\
INSERT INTO public.games VALUES (1162, 73, 755);\
INSERT INTO public.games VALUES (1163, 73, 756);\
INSERT INTO public.games VALUES (1164, 73, 757);\
INSERT INTO public.games VALUES (1165, 73, 758);\
INSERT INTO public.games VALUES (1166, 73, 759);\
INSERT INTO public.games VALUES (1167, 73, 760);\
INSERT INTO public.games VALUES (1168, 73, 761);\
INSERT INTO public.games VALUES (1169, 73, 762);\
INSERT INTO public.games VALUES (1170, 73, 763);\
INSERT INTO public.games VALUES (1171, 73, 764);\
INSERT INTO public.games VALUES (1172, 73, 765);\
INSERT INTO public.games VALUES (1173, 73, 766);\
INSERT INTO public.games VALUES (1174, 73, 767);\
INSERT INTO public.games VALUES (1175, 73, 768);\
INSERT INTO public.games VALUES (1176, 73, 769);\
INSERT INTO public.games VALUES (1177, 73, 770);\
INSERT INTO public.games VALUES (1178, 73, 771);\
INSERT INTO public.games VALUES (1179, 73, 772);\
INSERT INTO public.games VALUES (1180, 73, 773);\
INSERT INTO public.games VALUES (1181, 73, 774);\
INSERT INTO public.games VALUES (1182, 73, 775);\
INSERT INTO public.games VALUES (1183, 73, 776);\
INSERT INTO public.games VALUES (1184, 73, 777);\
INSERT INTO public.games VALUES (1185, 73, 778);\
INSERT INTO public.games VALUES (1186, 73, 779);\
INSERT INTO public.games VALUES (1187, 73, 780);\
INSERT INTO public.games VALUES (1188, 73, 781);\
INSERT INTO public.games VALUES (1189, 73, 782);\
INSERT INTO public.games VALUES (1190, 73, 783);\
INSERT INTO public.games VALUES (1191, 73, 784);\
INSERT INTO public.games VALUES (1192, 73, 785);\
INSERT INTO public.games VALUES (1193, 73, 786);\
INSERT INTO public.games VALUES (1194, 73, 787);\
INSERT INTO public.games VALUES (1195, 73, 788);\
INSERT INTO public.games VALUES (1196, 73, 789);\
INSERT INTO public.games VALUES (1197, 73, 790);\
INSERT INTO public.games VALUES (1198, 73, 791);\
INSERT INTO public.games VALUES (1199, 73, 792);\
INSERT INTO public.games VALUES (1200, 73, 793);\
INSERT INTO public.games VALUES (1201, 73, 794);\
INSERT INTO public.games VALUES (1202, 73, 795);\
INSERT INTO public.games VALUES (1203, 73, 796);\
INSERT INTO public.games VALUES (1204, 73, 797);\
INSERT INTO public.games VALUES (1205, 73, 798);\
INSERT INTO public.games VALUES (1206, 73, 799);\
INSERT INTO public.games VALUES (1207, 73, 800);\
INSERT INTO public.games VALUES (1208, 73, 801);\
INSERT INTO public.games VALUES (1209, 73, 802);\
INSERT INTO public.games VALUES (1210, 73, 803);\
INSERT INTO public.games VALUES (1211, 73, 804);\
INSERT INTO public.games VALUES (1212, 73, 805);\
INSERT INTO public.games VALUES (1213, 73, 806);\
INSERT INTO public.games VALUES (1214, 73, 807);\
INSERT INTO public.games VALUES (1215, 73, 808);\
INSERT INTO public.games VALUES (1216, 73, 809);\
INSERT INTO public.games VALUES (1217, 73, 810);\
INSERT INTO public.games VALUES (1218, 73, 811);\
INSERT INTO public.games VALUES (1219, 73, 812);\
INSERT INTO public.games VALUES (1220, 73, 813);\
INSERT INTO public.games VALUES (1221, 73, 814);\
INSERT INTO public.games VALUES (1222, 73, 815);\
INSERT INTO public.games VALUES (1223, 73, 816);\
INSERT INTO public.games VALUES (1224, 73, 817);\
INSERT INTO public.games VALUES (1225, 73, 818);\
INSERT INTO public.games VALUES (1226, 73, 819);\
INSERT INTO public.games VALUES (1227, 73, 820);\
INSERT INTO public.games VALUES (1228, 73, 821);\
INSERT INTO public.games VALUES (1229, 73, 822);\
INSERT INTO public.games VALUES (1230, 73, 823);\
INSERT INTO public.games VALUES (1231, 73, 824);\
INSERT INTO public.games VALUES (1232, 73, 825);\
INSERT INTO public.games VALUES (1233, 73, 826);\
INSERT INTO public.games VALUES (1234, 73, 827);\
INSERT INTO public.games VALUES (1235, 73, 828);\
INSERT INTO public.games VALUES (1236, 73, 829);\
INSERT INTO public.games VALUES (1237, 73, 830);\
INSERT INTO public.games VALUES (1238, 73, 831);\
INSERT INTO public.games VALUES (1239, 73, 832);\
INSERT INTO public.games VALUES (1240, 73, 833);\
INSERT INTO public.games VALUES (1241, 73, 834);\
INSERT INTO public.games VALUES (1242, 73, 835);\
INSERT INTO public.games VALUES (1243, 73, 836);\
INSERT INTO public.games VALUES (1244, 73, 837);\
INSERT INTO public.games VALUES (1245, 73, 838);\
INSERT INTO public.games VALUES (1246, 73, 839);\
INSERT INTO public.games VALUES (1247, 73, 840);\
INSERT INTO public.games VALUES (1248, 73, 841);\
INSERT INTO public.games VALUES (1249, 73, 842);\
INSERT INTO public.games VALUES (1250, 73, 843);\
INSERT INTO public.games VALUES (1251, 73, 844);\
INSERT INTO public.games VALUES (1252, 73, 845);\
INSERT INTO public.games VALUES (1253, 73, 846);\
INSERT INTO public.games VALUES (1254, 73, 847);\
INSERT INTO public.games VALUES (1255, 73, 848);\
INSERT INTO public.games VALUES (1256, 73, 849);\
INSERT INTO public.games VALUES (1257, 73, 850);\
INSERT INTO public.games VALUES (1258, 73, 851);\
INSERT INTO public.games VALUES (1259, 73, 852);\
INSERT INTO public.games VALUES (1260, 73, 853);\
INSERT INTO public.games VALUES (1261, 73, 854);\
INSERT INTO public.games VALUES (1262, 73, 855);\
INSERT INTO public.games VALUES (1263, 73, 856);\
INSERT INTO public.games VALUES (1264, 73, 857);\
INSERT INTO public.games VALUES (1265, 73, 858);\
INSERT INTO public.games VALUES (1266, 73, 859);\
INSERT INTO public.games VALUES (1267, 73, 860);\
INSERT INTO public.games VALUES (1268, 73, 861);\
INSERT INTO public.games VALUES (1269, 73, 862);\
INSERT INTO public.games VALUES (1270, 73, 863);\
INSERT INTO public.games VALUES (1271, 73, 864);\
INSERT INTO public.games VALUES (1272, 73, 865);\
INSERT INTO public.games VALUES (1273, 73, 866);\
INSERT INTO public.games VALUES (1274, 73, 867);\
INSERT INTO public.games VALUES (1275, 73, 868);\
INSERT INTO public.games VALUES (1276, 73, 869);\
INSERT INTO public.games VALUES (1277, 73, 870);\
INSERT INTO public.games VALUES (1278, 73, 871);\
INSERT INTO public.games VALUES (1279, 73, 872);\
INSERT INTO public.games VALUES (1280, 73, 873);\
INSERT INTO public.games VALUES (1281, 73, 874);\
INSERT INTO public.games VALUES (1282, 73, 875);\
INSERT INTO public.games VALUES (1283, 73, 876);\
INSERT INTO public.games VALUES (1284, 73, 877);\
INSERT INTO public.games VALUES (1285, 73, 878);\
INSERT INTO public.games VALUES (1286, 73, 879);\
INSERT INTO public.games VALUES (1287, 73, 880);\
INSERT INTO public.games VALUES (1288, 73, 881);\
INSERT INTO public.games VALUES (1289, 73, 882);\
INSERT INTO public.games VALUES (1290, 73, 883);\
INSERT INTO public.games VALUES (1291, 73, 884);\
INSERT INTO public.games VALUES (1292, 73, 885);\
INSERT INTO public.games VALUES (1293, 73, 886);\
INSERT INTO public.games VALUES (1294, 73, 887);\
INSERT INTO public.games VALUES (1295, 73, 888);\
INSERT INTO public.games VALUES (1296, 73, 889);\
INSERT INTO public.games VALUES (1297, 73, 890);\
INSERT INTO public.games VALUES (1298, 73, 891);\
INSERT INTO public.games VALUES (1299, 73, 892);\
INSERT INTO public.games VALUES (1300, 73, 893);\
INSERT INTO public.games VALUES (1301, 73, 894);\
INSERT INTO public.games VALUES (1302, 73, 895);\
INSERT INTO public.games VALUES (1303, 73, 896);\
INSERT INTO public.games VALUES (1304, 73, 897);\
INSERT INTO public.games VALUES (1305, 73, 898);\
INSERT INTO public.games VALUES (1306, 73, 899);\
INSERT INTO public.games VALUES (1307, 73, 900);\
INSERT INTO public.games VALUES (1308, 73, 901);\
INSERT INTO public.games VALUES (1309, 73, 902);\
INSERT INTO public.games VALUES (1310, 73, 903);\
INSERT INTO public.games VALUES (1311, 73, 904);\
INSERT INTO public.games VALUES (1312, 73, 905);\
INSERT INTO public.games VALUES (1313, 73, 906);\
INSERT INTO public.games VALUES (1314, 73, 907);\
INSERT INTO public.games VALUES (1315, 73, 908);\
INSERT INTO public.games VALUES (1316, 73, 909);\
INSERT INTO public.games VALUES (1317, 73, 910);\
INSERT INTO public.games VALUES (1318, 73, 911);\
INSERT INTO public.games VALUES (1319, 73, 912);\
INSERT INTO public.games VALUES (1320, 73, 913);\
INSERT INTO public.games VALUES (1321, 73, 914);\
INSERT INTO public.games VALUES (1322, 73, 915);\
INSERT INTO public.games VALUES (1323, 73, 916);\
INSERT INTO public.games VALUES (1324, 73, 917);\
INSERT INTO public.games VALUES (1325, 73, 918);\
INSERT INTO public.games VALUES (1326, 73, 919);\
INSERT INTO public.games VALUES (1327, 73, 920);\
INSERT INTO public.games VALUES (1328, 73, 921);\
INSERT INTO public.games VALUES (1329, 73, 922);\
INSERT INTO public.games VALUES (1330, 73, 923);\
INSERT INTO public.games VALUES (1331, 73, 924);\
INSERT INTO public.games VALUES (1332, 73, 925);\
INSERT INTO public.games VALUES (1333, 73, 926);\
INSERT INTO public.games VALUES (1334, 73, 927);\
INSERT INTO public.games VALUES (1335, 73, 928);\
INSERT INTO public.games VALUES (1336, 73, 929);\
INSERT INTO public.games VALUES (1337, 73, 930);\
INSERT INTO public.games VALUES (1338, 73, 931);\
INSERT INTO public.games VALUES (1339, 73, 932);\
INSERT INTO public.games VALUES (1340, 73, 933);\
INSERT INTO public.games VALUES (1341, 73, 934);\
INSERT INTO public.games VALUES (1342, 73, 935);\
INSERT INTO public.games VALUES (1343, 73, 936);\
INSERT INTO public.games VALUES (1344, 73, 937);\
INSERT INTO public.games VALUES (1345, 73, 938);\
INSERT INTO public.games VALUES (1346, 73, 939);\
INSERT INTO public.games VALUES (1347, 73, 940);\
INSERT INTO public.games VALUES (1348, 73, 941);\
INSERT INTO public.games VALUES (1349, 73, 942);\
INSERT INTO public.games VALUES (1350, 73, 943);\
INSERT INTO public.games VALUES (1351, 73, 944);\
INSERT INTO public.games VALUES (1352, 73, 945);\
INSERT INTO public.games VALUES (1353, 73, 946);\
INSERT INTO public.games VALUES (1354, 73, 947);\
INSERT INTO public.games VALUES (1355, 73, 948);\
INSERT INTO public.games VALUES (1356, 73, 949);\
INSERT INTO public.games VALUES (1357, 73, 950);\
INSERT INTO public.games VALUES (1358, 73, 951);\
INSERT INTO public.games VALUES (1359, 73, 952);\
INSERT INTO public.games VALUES (1360, 73, 953);\
INSERT INTO public.games VALUES (1361, 73, 954);\
INSERT INTO public.games VALUES (1362, 73, 955);\
INSERT INTO public.games VALUES (1363, 73, 956);\
INSERT INTO public.games VALUES (1364, 73, 957);\
INSERT INTO public.games VALUES (1365, 73, 958);\
INSERT INTO public.games VALUES (1366, 73, 959);\
INSERT INTO public.games VALUES (1367, 73, 960);\
INSERT INTO public.games VALUES (1368, 73, 961);\
INSERT INTO public.games VALUES (1369, 73, 962);\
INSERT INTO public.games VALUES (1370, 73, 963);\
INSERT INTO public.games VALUES (1371, 73, 964);\
INSERT INTO public.games VALUES (1372, 73, 965);\
INSERT INTO public.games VALUES (1373, 73, 966);\
INSERT INTO public.games VALUES (1374, 73, 967);\
INSERT INTO public.games VALUES (1375, 73, 968);\
INSERT INTO public.games VALUES (1376, 73, 969);\
INSERT INTO public.games VALUES (1377, 73, 970);\
INSERT INTO public.games VALUES (1378, 73, 971);\
INSERT INTO public.games VALUES (1379, 73, 972);\
INSERT INTO public.games VALUES (1380, 73, 973);\
INSERT INTO public.games VALUES (1381, 73, 974);\
INSERT INTO public.games VALUES (1382, 73, 975);\
INSERT INTO public.games VALUES (1383, 73, 976);\
INSERT INTO public.games VALUES (1384, 73, 977);\
INSERT INTO public.games VALUES (1385, 73, 978);\
INSERT INTO public.games VALUES (1386, 73, 979);\
INSERT INTO public.games VALUES (1387, 73, 980);\
INSERT INTO public.games VALUES (1388, 73, 981);\
INSERT INTO public.games VALUES (1389, 73, 982);\
INSERT INTO public.games VALUES (1390, 73, 983);\
INSERT INTO public.games VALUES (1391, 73, 984);\
INSERT INTO public.games VALUES (1392, 73, 985);\
INSERT INTO public.games VALUES (1393, 73, 986);\
INSERT INTO public.games VALUES (1394, 73, 987);\
INSERT INTO public.games VALUES (1395, 73, 988);\
INSERT INTO public.games VALUES (1396, 73, 989);\
INSERT INTO public.games VALUES (1397, 73, 990);\
INSERT INTO public.games VALUES (1398, 73, 991);\
INSERT INTO public.games VALUES (1399, 73, 992);\
INSERT INTO public.games VALUES (1400, 73, 993);\
INSERT INTO public.games VALUES (1401, 73, 994);\
INSERT INTO public.games VALUES (1402, 73, 995);\
INSERT INTO public.games VALUES (1403, 73, 996);\
INSERT INTO public.games VALUES (1404, 73, 997);\
INSERT INTO public.games VALUES (1405, 73, 998);\
INSERT INTO public.games VALUES (1406, 73, 999);\
INSERT INTO public.games VALUES (1407, 73, 1000);\
INSERT INTO public.games VALUES (1408, 73, 1001);\
INSERT INTO public.games VALUES (1409, 73, 1002);\
INSERT INTO public.games VALUES (1410, 73, 1003);\
INSERT INTO public.games VALUES (1411, 73, 1004);\
INSERT INTO public.games VALUES (1412, 73, 1005);\
INSERT INTO public.games VALUES (1413, 73, 1006);\
INSERT INTO public.games VALUES (1414, 73, 1007);\
INSERT INTO public.games VALUES (1415, 73, 1008);\
INSERT INTO public.games VALUES (1416, 73, 1009);\
INSERT INTO public.games VALUES (1417, 73, 1010);\
INSERT INTO public.games VALUES (1418, 73, 1011);\
INSERT INTO public.games VALUES (1419, 73, 1012);\
INSERT INTO public.games VALUES (1420, 73, 1013);\
INSERT INTO public.games VALUES (1421, 73, 1014);\
INSERT INTO public.games VALUES (1422, 73, 1015);\
INSERT INTO public.games VALUES (1423, 73, 1016);\
INSERT INTO public.games VALUES (1424, 73, 1017);\
INSERT INTO public.games VALUES (1425, 73, 1018);\
INSERT INTO public.games VALUES (1426, 73, 1019);\
INSERT INTO public.games VALUES (1427, 73, 1020);\
INSERT INTO public.games VALUES (1428, 73, 1021);\
INSERT INTO public.games VALUES (1429, 73, 1022);\
INSERT INTO public.games VALUES (1430, 73, 1023);\
INSERT INTO public.games VALUES (1431, 73, 1024);\
INSERT INTO public.games VALUES (1432, 73, 1025);\
INSERT INTO public.games VALUES (1433, 73, 1026);\
INSERT INTO public.games VALUES (1434, 73, 1027);\
INSERT INTO public.games VALUES (1435, 73, 1028);\
INSERT INTO public.games VALUES (1436, 73, 1029);\
INSERT INTO public.games VALUES (1437, 73, 1030);\
INSERT INTO public.games VALUES (1438, 73, 1031);\
INSERT INTO public.games VALUES (1439, 73, 1032);\
INSERT INTO public.games VALUES (1440, 73, 1033);\
INSERT INTO public.games VALUES (1441, 73, 1034);\
INSERT INTO public.games VALUES (1442, 73, 1035);\
INSERT INTO public.games VALUES (1443, 73, 1036);\
INSERT INTO public.games VALUES (1444, 73, 1037);\
INSERT INTO public.games VALUES (1445, 73, 1038);\
INSERT INTO public.games VALUES (1446, 73, 1039);\
INSERT INTO public.games VALUES (1447, 73, 1040);\
INSERT INTO public.games VALUES (1448, 73, 1041);\
INSERT INTO public.games VALUES (1449, 73, 1042);\
INSERT INTO public.games VALUES (1450, 73, 1043);\
INSERT INTO public.games VALUES (1451, 73, 1044);\
INSERT INTO public.games VALUES (1452, 73, 1045);\
INSERT INTO public.games VALUES (1453, 73, 1046);\
INSERT INTO public.games VALUES (1454, 73, 1047);\
INSERT INTO public.games VALUES (1455, 73, 1048);\
INSERT INTO public.games VALUES (1456, 73, 1049);\
INSERT INTO public.games VALUES (1457, 73, 1050);\
INSERT INTO public.games VALUES (1458, 73, 1051);\
INSERT INTO public.games VALUES (1459, 73, 1052);\
INSERT INTO public.games VALUES (1460, 73, 1053);\
INSERT INTO public.games VALUES (1461, 73, 1054);\
INSERT INTO public.games VALUES (1462, 73, 1055);\
INSERT INTO public.games VALUES (1463, 73, 1056);\
INSERT INTO public.games VALUES (1464, 73, 1057);\
INSERT INTO public.games VALUES (1465, 73, 1058);\
INSERT INTO public.games VALUES (1466, 73, 1059);\
INSERT INTO public.games VALUES (1467, 73, 1060);\
INSERT INTO public.games VALUES (1468, 73, 1061);\
INSERT INTO public.games VALUES (1469, 73, 1062);\
INSERT INTO public.games VALUES (1470, 73, 1063);\
INSERT INTO public.games VALUES (1471, 73, 1064);\
INSERT INTO public.games VALUES (1472, 73, 1065);\
INSERT INTO public.games VALUES (1473, 73, 1066);\
INSERT INTO public.games VALUES (1474, 73, 1067);\
INSERT INTO public.games VALUES (1475, 73, 1068);\
INSERT INTO public.games VALUES (1476, 73, 1069);\
INSERT INTO public.games VALUES (1477, 73, 1070);\
INSERT INTO public.games VALUES (1478, 73, 1071);\
INSERT INTO public.games VALUES (1479, 73, 1072);\
INSERT INTO public.games VALUES (1480, 73, 1073);\
INSERT INTO public.games VALUES (1481, 73, 1074);\
INSERT INTO public.games VALUES (1482, 73, 1075);\
INSERT INTO public.games VALUES (1483, 73, 1076);\
INSERT INTO public.games VALUES (1484, 73, 1077);\
INSERT INTO public.games VALUES (1485, 73, 1078);\
INSERT INTO public.games VALUES (1486, 73, 1079);\
INSERT INTO public.games VALUES (1487, 73, 1080);\
INSERT INTO public.games VALUES (1488, 73, 1081);\
INSERT INTO public.games VALUES (1489, 73, 1082);\
INSERT INTO public.games VALUES (1490, 73, 1083);\
INSERT INTO public.games VALUES (1491, 73, 1084);\
INSERT INTO public.games VALUES (1492, 73, 1085);\
INSERT INTO public.games VALUES (1493, 73, 1086);\
INSERT INTO public.games VALUES (1494, 73, 1087);\
INSERT INTO public.games VALUES (1495, 73, 1088);\
INSERT INTO public.games VALUES (1496, 73, 1089);\
INSERT INTO public.games VALUES (1497, 73, 1090);\
INSERT INTO public.games VALUES (1498, 73, 1091);\
INSERT INTO public.games VALUES (1499, 73, 1092);\
INSERT INTO public.games VALUES (1500, 73, 1093);\
INSERT INTO public.games VALUES (1501, 73, 1094);\
INSERT INTO public.games VALUES (1502, 73, 1095);\
INSERT INTO public.games VALUES (1503, 73, 1096);\
INSERT INTO public.games VALUES (1504, 73, 1097);\
INSERT INTO public.games VALUES (1505, 73, 1098);\
INSERT INTO public.games VALUES (1506, 73, 1099);\
INSERT INTO public.games VALUES (1507, 73, 1100);\
INSERT INTO public.games VALUES (1508, 73, 1101);\
INSERT INTO public.games VALUES (1509, 73, 1102);\
INSERT INTO public.games VALUES (1510, 73, 1103);\
INSERT INTO public.games VALUES (1511, 73, 1104);\
INSERT INTO public.games VALUES (1512, 73, 1105);\
INSERT INTO public.games VALUES (1513, 73, 1106);\
INSERT INTO public.games VALUES (1514, 73, 1107);\
INSERT INTO public.games VALUES (1515, 73, 1108);\
INSERT INTO public.games VALUES (1516, 73, 1109);\
INSERT INTO public.games VALUES (1517, 73, 1110);\
INSERT INTO public.games VALUES (1518, 73, 1111);\
INSERT INTO public.games VALUES (1519, 73, 1112);\
INSERT INTO public.games VALUES (1520, 73, 1113);\
INSERT INTO public.games VALUES (1521, 73, 1114);\
INSERT INTO public.games VALUES (1522, 73, 1115);\
INSERT INTO public.games VALUES (1523, 73, 1116);\
INSERT INTO public.games VALUES (1524, 73, 1117);\
INSERT INTO public.games VALUES (1525, 73, 1118);\
INSERT INTO public.games VALUES (1526, 73, 1119);\
INSERT INTO public.games VALUES (1527, 73, 1120);\
INSERT INTO public.games VALUES (1528, 73, 1121);\
INSERT INTO public.games VALUES (1529, 73, 1122);\
INSERT INTO public.games VALUES (1530, 73, 1123);\
INSERT INTO public.games VALUES (1531, 73, 1124);\
INSERT INTO public.games VALUES (1532, 73, 1125);\
INSERT INTO public.games VALUES (1533, 73, 1126);\
INSERT INTO public.games VALUES (1534, 73, 1127);\
INSERT INTO public.games VALUES (1535, 73, 1128);\
INSERT INTO public.games VALUES (1536, 73, 1129);\
INSERT INTO public.games VALUES (1537, 73, 1130);\
INSERT INTO public.games VALUES (1538, 73, 1131);\
INSERT INTO public.games VALUES (1539, 73, 1132);\
INSERT INTO public.games VALUES (1540, 73, 1133);\
INSERT INTO public.games VALUES (1541, 73, 1134);\
INSERT INTO public.games VALUES (1542, 73, 1135);\
INSERT INTO public.games VALUES (1543, 73, 1136);\
INSERT INTO public.games VALUES (1544, 73, 1137);\
INSERT INTO public.games VALUES (1545, 73, 1138);\
INSERT INTO public.games VALUES (1546, 73, 1139);\
INSERT INTO public.games VALUES (1547, 73, 1140);\
INSERT INTO public.games VALUES (1548, 73, 1141);\
INSERT INTO public.games VALUES (1549, 73, 1142);\
INSERT INTO public.games VALUES (1550, 73, 1143);\
INSERT INTO public.games VALUES (1551, 73, 1144);\
INSERT INTO public.games VALUES (1552, 73, 1145);\
INSERT INTO public.games VALUES (1553, 73, 1146);\
INSERT INTO public.games VALUES (1554, 73, 1147);\
INSERT INTO public.games VALUES (1555, 73, 1148);\
INSERT INTO public.games VALUES (1556, 73, 1149);\
INSERT INTO public.games VALUES (1557, 73, 1150);\
INSERT INTO public.games VALUES (1558, 73, 1151);\
INSERT INTO public.games VALUES (1559, 73, 1152);\
INSERT INTO public.games VALUES (1560, 73, 1153);\
INSERT INTO public.games VALUES (1561, 72, 942);\
INSERT INTO public.games VALUES (1562, 73, 1154);\
INSERT INTO public.games VALUES (1563, 72, 943);\
INSERT INTO public.games VALUES (1564, 73, 1155);\
INSERT INTO public.games VALUES (1565, 72, 944);\
INSERT INTO public.games VALUES (1566, 73, 1156);\
INSERT INTO public.games VALUES (1567, 73, 1157);\
INSERT INTO public.games VALUES (1568, 72, 945);\
INSERT INTO public.games VALUES (1569, 73, 1158);\
INSERT INTO public.games VALUES (1570, 72, 946);\
INSERT INTO public.games VALUES (1571, 73, 1159);\
INSERT INTO public.games VALUES (1572, 72, 947);\
INSERT INTO public.games VALUES (1573, 73, 1160);\
INSERT INTO public.games VALUES (1574, 72, 948);\
INSERT INTO public.games VALUES (1575, 73, 1161);\
INSERT INTO public.games VALUES (1576, 73, 1162);\
INSERT INTO public.games VALUES (1577, 72, 949);\
INSERT INTO public.games VALUES (1578, 73, 1163);\
INSERT INTO public.games VALUES (1579, 72, 950);\
INSERT INTO public.games VALUES (1580, 73, 1164);\
INSERT INTO public.games VALUES (1581, 72, 951);\
INSERT INTO public.games VALUES (1582, 73, 1165);\
INSERT INTO public.games VALUES (1583, 73, 1166);\
INSERT INTO public.games VALUES (1584, 72, 952);\
INSERT INTO public.games VALUES (1585, 73, 1167);\
INSERT INTO public.games VALUES (1586, 72, 953);\
INSERT INTO public.games VALUES (1587, 73, 1168);\
INSERT INTO public.games VALUES (1588, 72, 954);\
INSERT INTO public.games VALUES (1589, 73, 1169);\
INSERT INTO public.games VALUES (1590, 72, 955);\
INSERT INTO public.games VALUES (1591, 73, 1170);\
INSERT INTO public.games VALUES (1592, 72, 956);\
INSERT INTO public.games VALUES (1593, 73, 1171);\
INSERT INTO public.games VALUES (1594, 73, 1172);\
INSERT INTO public.games VALUES (1595, 72, 957);\
INSERT INTO public.games VALUES (1596, 73, 1173);\
INSERT INTO public.games VALUES (1597, 72, 958);\
INSERT INTO public.games VALUES (1598, 73, 1174);\
INSERT INTO public.games VALUES (1599, 72, 959);\
INSERT INTO public.games VALUES (1600, 73, 1175);\
INSERT INTO public.games VALUES (1601, 72, 960);\
INSERT INTO public.games VALUES (1602, 73, 1176);\
INSERT INTO public.games VALUES (1603, 72, 961);\
INSERT INTO public.games VALUES (1604, 73, 1177);\
INSERT INTO public.games VALUES (1605, 72, 962);\
INSERT INTO public.games VALUES (1606, 73, 1178);\
INSERT INTO public.games VALUES (1607, 72, 963);\
INSERT INTO public.games VALUES (1608, 73, 1179);\
INSERT INTO public.games VALUES (1609, 73, 1180);\
INSERT INTO public.games VALUES (1610, 72, 964);\
INSERT INTO public.games VALUES (1611, 73, 1181);\
INSERT INTO public.games VALUES (1612, 72, 965);\
INSERT INTO public.games VALUES (1613, 73, 1182);\
INSERT INTO public.games VALUES (1614, 72, 966);\
INSERT INTO public.games VALUES (1615, 73, 1183);\
INSERT INTO public.games VALUES (1616, 73, 1184);\
INSERT INTO public.games VALUES (1617, 72, 967);\
INSERT INTO public.games VALUES (1618, 73, 1185);\
INSERT INTO public.games VALUES (1619, 72, 968);\
INSERT INTO public.games VALUES (1620, 73, 1186);\
INSERT INTO public.games VALUES (1621, 72, 969);\
INSERT INTO public.games VALUES (1622, 73, 1187);\
INSERT INTO public.games VALUES (1623, 73, 1188);\
INSERT INTO public.games VALUES (1624, 72, 970);\
INSERT INTO public.games VALUES (1625, 73, 1189);\
INSERT INTO public.games VALUES (1626, 72, 971);\
INSERT INTO public.games VALUES (1627, 73, 1190);\
INSERT INTO public.games VALUES (1628, 72, 972);\
INSERT INTO public.games VALUES (1629, 73, 1191);\
INSERT INTO public.games VALUES (1630, 73, 1192);\
INSERT INTO public.games VALUES (1631, 72, 973);\
INSERT INTO public.games VALUES (1632, 73, 1193);\
INSERT INTO public.games VALUES (1633, 72, 974);\
INSERT INTO public.games VALUES (1634, 73, 1194);\
INSERT INTO public.games VALUES (1635, 72, 975);\
INSERT INTO public.games VALUES (1636, 73, 1195);\
INSERT INTO public.games VALUES (1637, 73, 1196);\
INSERT INTO public.games VALUES (1638, 72, 976);\
INSERT INTO public.games VALUES (1639, 73, 1197);\
INSERT INTO public.games VALUES (1640, 72, 977);\
INSERT INTO public.games VALUES (1641, 73, 1198);\
INSERT INTO public.games VALUES (1642, 72, 978);\
INSERT INTO public.games VALUES (1643, 73, 1199);\
INSERT INTO public.games VALUES (1644, 72, 979);\
INSERT INTO public.games VALUES (1645, 73, 1200);\
INSERT INTO public.games VALUES (1646, 72, 980);\
INSERT INTO public.games VALUES (1647, 73, 1201);\
INSERT INTO public.games VALUES (1648, 73, 1202);\
INSERT INTO public.games VALUES (1649, 72, 981);\
INSERT INTO public.games VALUES (1650, 73, 1203);\
INSERT INTO public.games VALUES (1651, 72, 982);\
INSERT INTO public.games VALUES (1652, 73, 1204);\
INSERT INTO public.games VALUES (1653, 73, 1205);\
INSERT INTO public.games VALUES (1654, 72, 983);\
INSERT INTO public.games VALUES (1655, 73, 1206);\
INSERT INTO public.games VALUES (1656, 72, 984);\
INSERT INTO public.games VALUES (1657, 73, 1207);\
INSERT INTO public.games VALUES (1658, 73, 1208);\
INSERT INTO public.games VALUES (1659, 72, 985);\
INSERT INTO public.games VALUES (1660, 73, 1209);\
INSERT INTO public.games VALUES (1661, 72, 986);\
INSERT INTO public.games VALUES (1662, 73, 1210);\
INSERT INTO public.games VALUES (1663, 72, 987);\
INSERT INTO public.games VALUES (1664, 73, 1211);\
INSERT INTO public.games VALUES (1665, 72, 988);\
INSERT INTO public.games VALUES (1666, 73, 1212);\
INSERT INTO public.games VALUES (1667, 73, 1213);\
INSERT INTO public.games VALUES (1668, 72, 989);\
INSERT INTO public.games VALUES (1669, 73, 1214);\
INSERT INTO public.games VALUES (1670, 72, 990);\
INSERT INTO public.games VALUES (1671, 73, 1215);\
INSERT INTO public.games VALUES (1672, 73, 1216);\
INSERT INTO public.games VALUES (1673, 72, 991);\
INSERT INTO public.games VALUES (1674, 73, 1217);\
INSERT INTO public.games VALUES (1675, 72, 992);\
INSERT INTO public.games VALUES (1676, 73, 1218);\
INSERT INTO public.games VALUES (1677, 72, 993);\
INSERT INTO public.games VALUES (1678, 73, 1219);\
INSERT INTO public.games VALUES (1679, 73, 1220);\
INSERT INTO public.games VALUES (1680, 72, 994);\
INSERT INTO public.games VALUES (1681, 73, 1221);\
INSERT INTO public.games VALUES (1682, 72, 995);\
INSERT INTO public.games VALUES (1683, 73, 1222);\
INSERT INTO public.games VALUES (1684, 72, 996);\
INSERT INTO public.games VALUES (1685, 73, 1223);\
INSERT INTO public.games VALUES (1686, 73, 1224);\
INSERT INTO public.games VALUES (1687, 72, 997);\
INSERT INTO public.games VALUES (1688, 73, 1225);\
INSERT INTO public.games VALUES (1689, 72, 998);\
INSERT INTO public.games VALUES (1690, 73, 1226);\
INSERT INTO public.games VALUES (1691, 72, 999);\
INSERT INTO public.games VALUES (1692, 73, 1227);\
INSERT INTO public.games VALUES (1693, 73, 1228);\
INSERT INTO public.games VALUES (1694, 72, 1000);\
INSERT INTO public.games VALUES (1695, 73, 1229);\
INSERT INTO public.games VALUES (1696, 72, 1001);\
INSERT INTO public.games VALUES (1697, 73, 1230);\
INSERT INTO public.games VALUES (1698, 72, 1002);\
INSERT INTO public.games VALUES (1699, 73, 1231);\
INSERT INTO public.games VALUES (1701, 73, 1232);\
INSERT INTO public.games VALUES (1700, 72, 1003);\
INSERT INTO public.games VALUES (1702, 73, 1233);\
INSERT INTO public.games VALUES (1703, 72, 1004);\
INSERT INTO public.games VALUES (1704, 73, 1234);\
INSERT INTO public.games VALUES (1705, 72, 1005);\
INSERT INTO public.games VALUES (1706, 73, 1235);\
INSERT INTO public.games VALUES (1707, 72, 1006);\
INSERT INTO public.games VALUES (1708, 73, 1236);\
INSERT INTO public.games VALUES (1709, 73, 1237);\
INSERT INTO public.games VALUES (1710, 72, 1007);\
INSERT INTO public.games VALUES (1711, 73, 1238);\
INSERT INTO public.games VALUES (1712, 72, 1008);\
INSERT INTO public.games VALUES (1713, 73, 1239);\
INSERT INTO public.games VALUES (1714, 72, 1009);\
INSERT INTO public.games VALUES (1715, 73, 1240);\
INSERT INTO public.games VALUES (1716, 73, 1241);\
INSERT INTO public.games VALUES (1717, 72, 1010);\
INSERT INTO public.games VALUES (1718, 73, 1242);\
INSERT INTO public.games VALUES (1719, 72, 1011);\
INSERT INTO public.games VALUES (1720, 73, 1243);\
INSERT INTO public.games VALUES (1721, 72, 1012);\
INSERT INTO public.games VALUES (1722, 73, 1244);\
INSERT INTO public.games VALUES (1723, 73, 1245);\
INSERT INTO public.games VALUES (1724, 72, 1013);\
INSERT INTO public.games VALUES (1725, 73, 1246);\
INSERT INTO public.games VALUES (1726, 72, 1014);\
INSERT INTO public.games VALUES (1727, 73, 1247);\
INSERT INTO public.games VALUES (1728, 72, 1015);\
INSERT INTO public.games VALUES (1729, 73, 1248);\
INSERT INTO public.games VALUES (1730, 72, 1016);\
INSERT INTO public.games VALUES (1731, 73, 1249);\
INSERT INTO public.games VALUES (1732, 73, 1250);\
INSERT INTO public.games VALUES (1733, 72, 1017);\
INSERT INTO public.games VALUES (1734, 73, 1251);\
INSERT INTO public.games VALUES (1735, 72, 1018);\
INSERT INTO public.games VALUES (1736, 73, 1252);\
INSERT INTO public.games VALUES (1737, 72, 1019);\
INSERT INTO public.games VALUES (1738, 73, 1253);\
INSERT INTO public.games VALUES (1739, 73, 1254);\
INSERT INTO public.games VALUES (1740, 72, 1020);\
INSERT INTO public.games VALUES (1741, 73, 1255);\
INSERT INTO public.games VALUES (1742, 72, 1021);\
INSERT INTO public.games VALUES (1743, 73, 1256);\
INSERT INTO public.games VALUES (1744, 72, 1022);\
INSERT INTO public.games VALUES (1745, 73, 1257);\
INSERT INTO public.games VALUES (1746, 73, 1258);\
INSERT INTO public.games VALUES (1747, 72, 1023);\
INSERT INTO public.games VALUES (1748, 73, 1259);\
INSERT INTO public.games VALUES (1749, 72, 1024);\
INSERT INTO public.games VALUES (1750, 73, 1260);\
INSERT INTO public.games VALUES (1751, 72, 1025);\
INSERT INTO public.games VALUES (1752, 73, 1261);\
INSERT INTO public.games VALUES (1753, 73, 1262);\
INSERT INTO public.games VALUES (1754, 72, 1026);\
INSERT INTO public.games VALUES (1755, 73, 1263);\
INSERT INTO public.games VALUES (1756, 72, 1027);\
INSERT INTO public.games VALUES (1757, 73, 1264);\
INSERT INTO public.games VALUES (1758, 72, 1028);\
INSERT INTO public.games VALUES (1759, 73, 1265);\
INSERT INTO public.games VALUES (1760, 73, 1266);\
INSERT INTO public.games VALUES (1761, 72, 1029);\
INSERT INTO public.games VALUES (1762, 73, 1267);\
INSERT INTO public.games VALUES (1763, 72, 1030);\
INSERT INTO public.games VALUES (1764, 73, 1268);\
INSERT INTO public.games VALUES (1765, 73, 1269);\
INSERT INTO public.games VALUES (1766, 72, 1031);\
INSERT INTO public.games VALUES (1767, 73, 1270);\
INSERT INTO public.games VALUES (1768, 72, 1032);\
INSERT INTO public.games VALUES (1769, 73, 1271);\
INSERT INTO public.games VALUES (1770, 72, 1033);\
INSERT INTO public.games VALUES (1771, 73, 1272);\
INSERT INTO public.games VALUES (1772, 72, 1034);\
INSERT INTO public.games VALUES (1773, 73, 1273);\
INSERT INTO public.games VALUES (1774, 73, 1274);\
INSERT INTO public.games VALUES (1775, 72, 1035);\
INSERT INTO public.games VALUES (1776, 73, 1275);\
INSERT INTO public.games VALUES (1777, 72, 1036);\
INSERT INTO public.games VALUES (1778, 73, 1276);\
INSERT INTO public.games VALUES (1779, 72, 1037);\
INSERT INTO public.games VALUES (1780, 73, 1277);\
INSERT INTO public.games VALUES (1781, 73, 1278);\
INSERT INTO public.games VALUES (1782, 72, 1038);\
INSERT INTO public.games VALUES (1783, 73, 1279);\
INSERT INTO public.games VALUES (1784, 72, 1039);\
INSERT INTO public.games VALUES (1785, 73, 1280);\
INSERT INTO public.games VALUES (1786, 73, 1281);\
INSERT INTO public.games VALUES (1787, 72, 1040);\
INSERT INTO public.games VALUES (1788, 73, 1282);\
INSERT INTO public.games VALUES (1789, 72, 1041);\
INSERT INTO public.games VALUES (1790, 73, 1283);\
INSERT INTO public.games VALUES (1791, 72, 1042);\
INSERT INTO public.games VALUES (1792, 73, 1284);\
INSERT INTO public.games VALUES (1793, 73, 1285);\
INSERT INTO public.games VALUES (1794, 72, 1043);\
INSERT INTO public.games VALUES (1795, 73, 1286);\
INSERT INTO public.games VALUES (1796, 72, 1044);\
INSERT INTO public.games VALUES (1797, 73, 1287);\
INSERT INTO public.games VALUES (1798, 72, 1045);\
INSERT INTO public.games VALUES (1799, 73, 1288);\
INSERT INTO public.games VALUES (1800, 72, 1046);\
INSERT INTO public.games VALUES (1801, 73, 1289);\
INSERT INTO public.games VALUES (1802, 73, 1290);\
INSERT INTO public.games VALUES (1803, 72, 1047);\
INSERT INTO public.games VALUES (1804, 73, 1291);\
INSERT INTO public.games VALUES (1805, 72, 1048);\
INSERT INTO public.games VALUES (1806, 73, 1292);\
INSERT INTO public.games VALUES (1807, 72, 1049);\
INSERT INTO public.games VALUES (1808, 73, 1293);\
INSERT INTO public.games VALUES (1809, 72, 1050);\
INSERT INTO public.games VALUES (1810, 73, 1294);\
INSERT INTO public.games VALUES (1811, 72, 1051);\
INSERT INTO public.games VALUES (1812, 73, 1295);\
INSERT INTO public.games VALUES (1813, 72, 1052);\
INSERT INTO public.games VALUES (1814, 73, 1296);\
INSERT INTO public.games VALUES (1815, 73, 1297);\
INSERT INTO public.games VALUES (1816, 72, 1053);\
INSERT INTO public.games VALUES (1817, 73, 1298);\
INSERT INTO public.games VALUES (1818, 72, 1054);\
INSERT INTO public.games VALUES (1819, 73, 1299);\
INSERT INTO public.games VALUES (1820, 72, 1055);\
INSERT INTO public.games VALUES (1821, 73, 1300);\
INSERT INTO public.games VALUES (1822, 73, 1301);\
INSERT INTO public.games VALUES (1823, 72, 1056);\
INSERT INTO public.games VALUES (1824, 73, 1302);\
INSERT INTO public.games VALUES (1825, 72, 1057);\
INSERT INTO public.games VALUES (1826, 73, 1303);\
INSERT INTO public.games VALUES (1827, 72, 1058);\
INSERT INTO public.games VALUES (1828, 73, 1304);\
INSERT INTO public.games VALUES (1829, 73, 1305);\
INSERT INTO public.games VALUES (1830, 72, 1059);\
INSERT INTO public.games VALUES (1831, 73, 1306);\
INSERT INTO public.games VALUES (1832, 72, 1060);\
INSERT INTO public.games VALUES (1833, 73, 1307);\
INSERT INTO public.games VALUES (1834, 72, 1061);\
INSERT INTO public.games VALUES (1835, 73, 1308);\
INSERT INTO public.games VALUES (1836, 73, 1309);\
INSERT INTO public.games VALUES (1837, 72, 1062);\
INSERT INTO public.games VALUES (1838, 73, 1310);\
INSERT INTO public.games VALUES (1839, 72, 1063);\
INSERT INTO public.games VALUES (1840, 73, 1311);\
INSERT INTO public.games VALUES (1841, 72, 1064);\
INSERT INTO public.games VALUES (1842, 73, 1312);\
INSERT INTO public.games VALUES (1843, 73, 1313);\
INSERT INTO public.games VALUES (1844, 72, 1065);\
INSERT INTO public.games VALUES (1845, 73, 1314);\
INSERT INTO public.games VALUES (1846, 72, 1066);\
INSERT INTO public.games VALUES (1847, 73, 1315);\
INSERT INTO public.games VALUES (1848, 72, 1067);\
INSERT INTO public.games VALUES (1849, 73, 1316);\
INSERT INTO public.games VALUES (1850, 72, 1068);\
INSERT INTO public.games VALUES (1851, 73, 1317);\
INSERT INTO public.games VALUES (1852, 73, 1318);\
INSERT INTO public.games VALUES (1853, 72, 1069);\
INSERT INTO public.games VALUES (1854, 73, 1319);\
INSERT INTO public.games VALUES (1855, 72, 1070);\
INSERT INTO public.games VALUES (1856, 73, 1320);\
INSERT INTO public.games VALUES (1857, 73, 1321);\
INSERT INTO public.games VALUES (1858, 72, 1071);\
INSERT INTO public.games VALUES (1859, 73, 1322);\
INSERT INTO public.games VALUES (1860, 72, 1072);\
INSERT INTO public.games VALUES (1861, 73, 1323);\
INSERT INTO public.games VALUES (1862, 72, 1073);\
INSERT INTO public.games VALUES (1863, 73, 1324);\
INSERT INTO public.games VALUES (1864, 73, 1325);\
INSERT INTO public.games VALUES (1865, 72, 1074);\
INSERT INTO public.games VALUES (1866, 73, 1326);\
INSERT INTO public.games VALUES (1867, 72, 1075);\
INSERT INTO public.games VALUES (1868, 73, 1327);\
INSERT INTO public.games VALUES (1869, 72, 1076);\
INSERT INTO public.games VALUES (1870, 73, 1328);\
INSERT INTO public.games VALUES (1871, 73, 1329);\
INSERT INTO public.games VALUES (1872, 72, 1077);\
INSERT INTO public.games VALUES (1873, 73, 1330);\
INSERT INTO public.games VALUES (1874, 72, 1078);\
INSERT INTO public.games VALUES (1875, 73, 1331);\
INSERT INTO public.games VALUES (1876, 72, 1079);\
INSERT INTO public.games VALUES (1877, 73, 1332);\
INSERT INTO public.games VALUES (1878, 73, 1333);\
INSERT INTO public.games VALUES (1879, 72, 1080);\
INSERT INTO public.games VALUES (1880, 73, 1334);\
INSERT INTO public.games VALUES (1881, 72, 1081);\
INSERT INTO public.games VALUES (1882, 73, 1335);\
INSERT INTO public.games VALUES (1883, 72, 1082);\
INSERT INTO public.games VALUES (1884, 73, 1336);\
INSERT INTO public.games VALUES (1885, 73, 1337);\
INSERT INTO public.games VALUES (1886, 72, 1083);\
INSERT INTO public.games VALUES (1887, 73, 1338);\
INSERT INTO public.games VALUES (1888, 72, 1084);\
INSERT INTO public.games VALUES (1889, 73, 1339);\
INSERT INTO public.games VALUES (1890, 73, 1340);\
INSERT INTO public.games VALUES (1891, 72, 1085);\
INSERT INTO public.games VALUES (1892, 73, 1341);\
INSERT INTO public.games VALUES (1893, 72, 1086);\
INSERT INTO public.games VALUES (1894, 73, 1342);\
INSERT INTO public.games VALUES (1895, 73, 1343);\
INSERT INTO public.games VALUES (1896, 72, 1087);\
INSERT INTO public.games VALUES (1897, 73, 1344);\
INSERT INTO public.games VALUES (1898, 72, 1088);\
INSERT INTO public.games VALUES (1899, 73, 1345);\
INSERT INTO public.games VALUES (1900, 72, 1089);\
INSERT INTO public.games VALUES (1901, 73, 1346);\
INSERT INTO public.games VALUES (1902, 72, 1090);\
INSERT INTO public.games VALUES (1903, 73, 1347);\
INSERT INTO public.games VALUES (1904, 72, 1091);\
INSERT INTO public.games VALUES (1905, 73, 1348);\
INSERT INTO public.games VALUES (1906, 72, 1092);\
INSERT INTO public.games VALUES (1907, 73, 1349);\
INSERT INTO public.games VALUES (1908, 73, 1350);\
INSERT INTO public.games VALUES (1909, 72, 1093);\
INSERT INTO public.games VALUES (1910, 73, 1351);\
INSERT INTO public.games VALUES (1911, 72, 1094);\
INSERT INTO public.games VALUES (1912, 73, 1352);\
INSERT INTO public.games VALUES (1913, 72, 1095);\
INSERT INTO public.games VALUES (1914, 73, 1353);\
INSERT INTO public.games VALUES (1915, 72, 1096);\
INSERT INTO public.games VALUES (1916, 73, 1354);\
INSERT INTO public.games VALUES (1917, 72, 1097);\
INSERT INTO public.games VALUES (1918, 73, 1355);\
INSERT INTO public.games VALUES (1919, 73, 1356);\
INSERT INTO public.games VALUES (1920, 72, 1098);\
INSERT INTO public.games VALUES (1921, 73, 1357);\
INSERT INTO public.games VALUES (1922, 72, 1099);\
INSERT INTO public.games VALUES (1923, 73, 1358);\
INSERT INTO public.games VALUES (1924, 72, 1100);\
INSERT INTO public.games VALUES (1925, 73, 1359);\
INSERT INTO public.games VALUES (1926, 72, 1101);\
INSERT INTO public.games VALUES (1927, 73, 1360);\
INSERT INTO public.games VALUES (1928, 73, 1361);\
INSERT INTO public.games VALUES (1929, 72, 1102);\
INSERT INTO public.games VALUES (1930, 73, 1362);\
INSERT INTO public.games VALUES (1931, 72, 1103);\
INSERT INTO public.games VALUES (1932, 73, 1363);\
INSERT INTO public.games VALUES (1933, 72, 1104);\
INSERT INTO public.games VALUES (1934, 73, 1364);\
INSERT INTO public.games VALUES (1935, 72, 1105);\
INSERT INTO public.games VALUES (1936, 73, 1365);\
INSERT INTO public.games VALUES (1937, 72, 1106);\
INSERT INTO public.games VALUES (1938, 73, 1366);\
INSERT INTO public.games VALUES (1939, 73, 1367);\
INSERT INTO public.games VALUES (1940, 72, 1107);\
INSERT INTO public.games VALUES (1941, 73, 1368);\
INSERT INTO public.games VALUES (1942, 72, 1108);\
INSERT INTO public.games VALUES (1943, 73, 1369);\
INSERT INTO public.games VALUES (1944, 72, 1109);\
INSERT INTO public.games VALUES (1945, 73, 1370);\
INSERT INTO public.games VALUES (1946, 72, 1110);\
INSERT INTO public.games VALUES (1947, 73, 1371);\
INSERT INTO public.games VALUES (1948, 73, 1372);\
INSERT INTO public.games VALUES (1949, 72, 1111);\
INSERT INTO public.games VALUES (1950, 73, 1373);\
INSERT INTO public.games VALUES (1951, 72, 1112);\
INSERT INTO public.games VALUES (1952, 73, 1374);\
INSERT INTO public.games VALUES (1953, 72, 1113);\
INSERT INTO public.games VALUES (1954, 73, 1375);\
INSERT INTO public.games VALUES (1955, 72, 1114);\
INSERT INTO public.games VALUES (1956, 73, 1376);\
INSERT INTO public.games VALUES (1957, 73, 1377);\
INSERT INTO public.games VALUES (1958, 72, 1115);\
INSERT INTO public.games VALUES (1959, 73, 1378);\
INSERT INTO public.games VALUES (1960, 72, 1116);\
INSERT INTO public.games VALUES (1961, 73, 1379);\
INSERT INTO public.games VALUES (1962, 72, 1117);\
INSERT INTO public.games VALUES (1963, 73, 1380);\
INSERT INTO public.games VALUES (1964, 72, 1118);\
INSERT INTO public.games VALUES (1965, 73, 1381);\
INSERT INTO public.games VALUES (1966, 72, 1119);\
INSERT INTO public.games VALUES (1967, 73, 1382);\
INSERT INTO public.games VALUES (1968, 72, 1120);\
INSERT INTO public.games VALUES (1969, 73, 1383);\
INSERT INTO public.games VALUES (1970, 73, 1384);\
INSERT INTO public.games VALUES (1971, 72, 1121);\
INSERT INTO public.games VALUES (1972, 73, 1385);\
INSERT INTO public.games VALUES (1973, 72, 1122);\
INSERT INTO public.games VALUES (1974, 73, 1386);\
INSERT INTO public.games VALUES (1975, 72, 1123);\
INSERT INTO public.games VALUES (1976, 73, 1387);\
INSERT INTO public.games VALUES (1977, 72, 1124);\
INSERT INTO public.games VALUES (1978, 73, 1388);\
INSERT INTO public.games VALUES (1979, 73, 1389);\
INSERT INTO public.games VALUES (1980, 72, 1125);\
INSERT INTO public.games VALUES (1981, 73, 1390);\
INSERT INTO public.games VALUES (1982, 72, 1126);\
INSERT INTO public.games VALUES (1983, 73, 1391);\
INSERT INTO public.games VALUES (1984, 72, 1127);\
INSERT INTO public.games VALUES (1985, 73, 1392);\
INSERT INTO public.games VALUES (1986, 73, 1393);\
INSERT INTO public.games VALUES (1987, 72, 1128);\
INSERT INTO public.games VALUES (1988, 73, 1394);\
INSERT INTO public.games VALUES (1989, 72, 1129);\
INSERT INTO public.games VALUES (1990, 73, 1395);\
INSERT INTO public.games VALUES (1991, 73, 1396);\
INSERT INTO public.games VALUES (1992, 72, 1130);\
INSERT INTO public.games VALUES (1993, 73, 1397);\
INSERT INTO public.games VALUES (1994, 72, 1131);\
INSERT INTO public.games VALUES (1995, 73, 1398);\
INSERT INTO public.games VALUES (1996, 72, 1132);\
INSERT INTO public.games VALUES (1997, 73, 1399);\
INSERT INTO public.games VALUES (1998, 73, 1400);\
INSERT INTO public.games VALUES (1999, 72, 1133);\
INSERT INTO public.games VALUES (2000, 73, 1401);\
INSERT INTO public.games VALUES (2001, 72, 1134);\
INSERT INTO public.games VALUES (2002, 73, 1402);\
INSERT INTO public.games VALUES (2003, 72, 1135);\
INSERT INTO public.games VALUES (2004, 73, 1403);\
INSERT INTO public.games VALUES (2005, 72, 1136);\
INSERT INTO public.games VALUES (2006, 73, 1404);\
INSERT INTO public.games VALUES (2007, 72, 1137);\
INSERT INTO public.games VALUES (2008, 73, 1405);\
INSERT INTO public.games VALUES (2009, 72, 1138);\
INSERT INTO public.games VALUES (2010, 73, 1406);\
INSERT INTO public.games VALUES (2011, 73, 1407);\
INSERT INTO public.games VALUES (2012, 72, 1139);\
INSERT INTO public.games VALUES (2013, 73, 1408);\
INSERT INTO public.games VALUES (2014, 72, 1140);\
INSERT INTO public.games VALUES (2015, 73, 1409);\
INSERT INTO public.games VALUES (2016, 73, 1410);\
INSERT INTO public.games VALUES (2017, 72, 1141);\
INSERT INTO public.games VALUES (2018, 72, 1142);\
INSERT INTO public.games VALUES (2019, 73, 1411);\
INSERT INTO public.games VALUES (2020, 72, 1143);\
INSERT INTO public.games VALUES (2021, 73, 1412);\
INSERT INTO public.games VALUES (2022, 73, 1413);\
INSERT INTO public.games VALUES (2023, 72, 1144);\
INSERT INTO public.games VALUES (2024, 73, 1414);\
INSERT INTO public.games VALUES (2025, 72, 1145);\
INSERT INTO public.games VALUES (2026, 73, 1415);\
INSERT INTO public.games VALUES (2027, 72, 1146);\
INSERT INTO public.games VALUES (2028, 73, 1416);\
INSERT INTO public.games VALUES (2029, 73, 1417);\
INSERT INTO public.games VALUES (2030, 72, 1147);\
INSERT INTO public.games VALUES (2031, 73, 1418);\
INSERT INTO public.games VALUES (2032, 72, 1148);\
INSERT INTO public.games VALUES (2033, 73, 1419);\
INSERT INTO public.games VALUES (2034, 72, 1149);\
INSERT INTO public.games VALUES (2035, 73, 1420);\
INSERT INTO public.games VALUES (2036, 72, 1150);\
INSERT INTO public.games VALUES (2037, 73, 1421);\
INSERT INTO public.games VALUES (2038, 73, 1422);\
INSERT INTO public.games VALUES (2039, 72, 1151);\
INSERT INTO public.games VALUES (2040, 73, 1423);\
INSERT INTO public.games VALUES (2041, 72, 1152);\
INSERT INTO public.games VALUES (2042, 73, 1424);\
INSERT INTO public.games VALUES (2043, 73, 1425);\
INSERT INTO public.games VALUES (2044, 72, 1153);\
INSERT INTO public.games VALUES (2045, 73, 1426);\
INSERT INTO public.games VALUES (2046, 72, 1154);\
INSERT INTO public.games VALUES (2047, 73, 1427);\
INSERT INTO public.games VALUES (2048, 73, 1428);\
INSERT INTO public.games VALUES (2049, 72, 1155);\
INSERT INTO public.games VALUES (2050, 73, 1429);\
INSERT INTO public.games VALUES (2051, 72, 1156);\
INSERT INTO public.games VALUES (2052, 73, 1430);\
INSERT INTO public.games VALUES (2053, 72, 1157);\
INSERT INTO public.games VALUES (2054, 73, 1431);\
INSERT INTO public.games VALUES (2055, 73, 1432);\
INSERT INTO public.games VALUES (2056, 72, 1158);\
INSERT INTO public.games VALUES (2057, 73, 1433);\
INSERT INTO public.games VALUES (2058, 72, 1159);\
INSERT INTO public.games VALUES (2059, 73, 1434);\
INSERT INTO public.games VALUES (2060, 72, 1160);\
INSERT INTO public.games VALUES (2061, 73, 1435);\
INSERT INTO public.games VALUES (2062, 72, 1161);\
INSERT INTO public.games VALUES (2063, 73, 1436);\
INSERT INTO public.games VALUES (2064, 73, 1437);\
INSERT INTO public.games VALUES (2065, 72, 1162);\
INSERT INTO public.games VALUES (2066, 73, 1438);\
INSERT INTO public.games VALUES (2067, 72, 1163);\
INSERT INTO public.games VALUES (2068, 73, 1439);\
INSERT INTO public.games VALUES (2069, 72, 1164);\
INSERT INTO public.games VALUES (2070, 73, 1440);\
INSERT INTO public.games VALUES (2071, 72, 1165);\
INSERT INTO public.games VALUES (2072, 73, 1441);\
INSERT INTO public.games VALUES (2073, 73, 1442);\
INSERT INTO public.games VALUES (2074, 72, 1166);\
INSERT INTO public.games VALUES (2075, 73, 1443);\
INSERT INTO public.games VALUES (2076, 72, 1167);\
INSERT INTO public.games VALUES (2077, 73, 1444);\
INSERT INTO public.games VALUES (2078, 72, 1168);\
INSERT INTO public.games VALUES (2079, 73, 1445);\
INSERT INTO public.games VALUES (2080, 72, 1169);\
INSERT INTO public.games VALUES (2081, 73, 1446);\
INSERT INTO public.games VALUES (2082, 73, 1447);\
INSERT INTO public.games VALUES (2083, 72, 1170);\
INSERT INTO public.games VALUES (2084, 73, 1448);\
INSERT INTO public.games VALUES (2085, 72, 1171);\
INSERT INTO public.games VALUES (2086, 73, 1449);\
INSERT INTO public.games VALUES (2087, 72, 1172);\
INSERT INTO public.games VALUES (2088, 73, 1450);\
INSERT INTO public.games VALUES (2089, 73, 1451);\
INSERT INTO public.games VALUES (2090, 72, 1173);\
INSERT INTO public.games VALUES (2091, 73, 1452);\
INSERT INTO public.games VALUES (2092, 72, 1174);\
INSERT INTO public.games VALUES (2093, 73, 1453);\
INSERT INTO public.games VALUES (2094, 72, 1175);\
INSERT INTO public.games VALUES (2095, 73, 1454);\
INSERT INTO public.games VALUES (2096, 73, 1455);\
INSERT INTO public.games VALUES (2097, 72, 1176);\
INSERT INTO public.games VALUES (2098, 73, 1456);\
INSERT INTO public.games VALUES (2099, 72, 1177);\
INSERT INTO public.games VALUES (2100, 73, 1457);\
INSERT INTO public.games VALUES (2101, 72, 1178);\
INSERT INTO public.games VALUES (2102, 73, 1458);\
INSERT INTO public.games VALUES (2103, 72, 1179);\
INSERT INTO public.games VALUES (2104, 73, 1459);\
INSERT INTO public.games VALUES (2105, 73, 1460);\
INSERT INTO public.games VALUES (2106, 72, 1180);\
INSERT INTO public.games VALUES (2107, 73, 1461);\
INSERT INTO public.games VALUES (2108, 72, 1181);\
INSERT INTO public.games VALUES (2109, 73, 1462);\
INSERT INTO public.games VALUES (2110, 72, 1182);\
INSERT INTO public.games VALUES (2111, 73, 1463);\
INSERT INTO public.games VALUES (2112, 72, 1183);\
INSERT INTO public.games VALUES (2113, 73, 1464);\
INSERT INTO public.games VALUES (2114, 72, 1184);\
INSERT INTO public.games VALUES (2115, 73, 1465);\
INSERT INTO public.games VALUES (2116, 73, 1466);\
INSERT INTO public.games VALUES (2117, 72, 1185);\
INSERT INTO public.games VALUES (2118, 73, 1467);\
INSERT INTO public.games VALUES (2119, 72, 1186);\
INSERT INTO public.games VALUES (2120, 73, 1468);\
INSERT INTO public.games VALUES (2121, 73, 1469);\
INSERT INTO public.games VALUES (2122, 72, 1187);\
INSERT INTO public.games VALUES (2123, 73, 1470);\
INSERT INTO public.games VALUES (2124, 72, 1188);\
INSERT INTO public.games VALUES (2125, 73, 1471);\
INSERT INTO public.games VALUES (2126, 73, 1472);\
INSERT INTO public.games VALUES (2127, 72, 1189);\
INSERT INTO public.games VALUES (2128, 73, 1473);\
INSERT INTO public.games VALUES (2129, 72, 1190);\
INSERT INTO public.games VALUES (2130, 73, 1474);\
INSERT INTO public.games VALUES (2131, 72, 1191);\
INSERT INTO public.games VALUES (2132, 73, 1475);\
INSERT INTO public.games VALUES (2133, 72, 1192);\
INSERT INTO public.games VALUES (2134, 73, 1476);\
INSERT INTO public.games VALUES (2135, 72, 1193);\
INSERT INTO public.games VALUES (2136, 73, 1477);\
INSERT INTO public.games VALUES (2137, 73, 1478);\
INSERT INTO public.games VALUES (2138, 72, 1194);\
INSERT INTO public.games VALUES (2139, 73, 1479);\
INSERT INTO public.games VALUES (2140, 72, 1195);\
INSERT INTO public.games VALUES (2141, 73, 1480);\
INSERT INTO public.games VALUES (2142, 72, 1196);\
INSERT INTO public.games VALUES (2143, 73, 1481);\
INSERT INTO public.games VALUES (2144, 72, 1197);\
INSERT INTO public.games VALUES (2145, 73, 1482);\
INSERT INTO public.games VALUES (2146, 73, 1483);\
INSERT INTO public.games VALUES (2147, 72, 1198);\
INSERT INTO public.games VALUES (2148, 73, 1484);\
INSERT INTO public.games VALUES (2149, 72, 1199);\
INSERT INTO public.games VALUES (2150, 73, 1485);\
INSERT INTO public.games VALUES (2151, 72, 1200);\
INSERT INTO public.games VALUES (2152, 73, 1486);\
INSERT INTO public.games VALUES (2153, 72, 1201);\
INSERT INTO public.games VALUES (2154, 73, 1487);\
INSERT INTO public.games VALUES (2155, 73, 1488);\
INSERT INTO public.games VALUES (2156, 72, 1202);\
INSERT INTO public.games VALUES (2157, 73, 1489);\
INSERT INTO public.games VALUES (2158, 72, 1203);\
INSERT INTO public.games VALUES (2159, 73, 1490);\
INSERT INTO public.games VALUES (2160, 73, 1491);\
INSERT INTO public.games VALUES (2161, 72, 1204);\
INSERT INTO public.games VALUES (2162, 73, 1492);\
INSERT INTO public.games VALUES (2163, 72, 1205);\
INSERT INTO public.games VALUES (2164, 73, 1493);\
INSERT INTO public.games VALUES (2165, 72, 1206);\
INSERT INTO public.games VALUES (2166, 73, 1494);\
INSERT INTO public.games VALUES (2167, 73, 1495);\
INSERT INTO public.games VALUES (2168, 72, 1207);\
INSERT INTO public.games VALUES (2169, 73, 1496);\
INSERT INTO public.games VALUES (2170, 72, 1208);\
INSERT INTO public.games VALUES (2171, 73, 1497);\
INSERT INTO public.games VALUES (2172, 73, 1498);\
INSERT INTO public.games VALUES (2173, 72, 1209);\
INSERT INTO public.games VALUES (2174, 73, 1499);\
INSERT INTO public.games VALUES (2175, 72, 1210);\
INSERT INTO public.games VALUES (2176, 73, 1500);\
INSERT INTO public.games VALUES (2177, 72, 1211);\
INSERT INTO public.games VALUES (2178, 73, 1501);\
INSERT INTO public.games VALUES (2179, 72, 1212);\
INSERT INTO public.games VALUES (2180, 73, 1502);\
INSERT INTO public.games VALUES (2181, 72, 1213);\
INSERT INTO public.games VALUES (2182, 72, 1214);\
INSERT INTO public.games VALUES (2183, 72, 1215);\
INSERT INTO public.games VALUES (2184, 72, 1216);\
INSERT INTO public.games VALUES (2185, 72, 1217);\
INSERT INTO public.games VALUES (2186, 72, 1218);\
INSERT INTO public.games VALUES (2187, 72, 1219);\
INSERT INTO public.games VALUES (2188, 72, 1220);\
INSERT INTO public.games VALUES (2189, 72, 1221);\
INSERT INTO public.games VALUES (2190, 72, 1222);\
INSERT INTO public.games VALUES (2191, 72, 1223);\
INSERT INTO public.games VALUES (2192, 72, 1224);\
INSERT INTO public.games VALUES (2193, 72, 1225);\
INSERT INTO public.games VALUES (2194, 72, 1226);\
INSERT INTO public.games VALUES (2195, 72, 1227);\
INSERT INTO public.games VALUES (2196, 72, 1228);\
INSERT INTO public.games VALUES (2197, 72, 1229);\
INSERT INTO public.games VALUES (2198, 72, 1230);\
INSERT INTO public.games VALUES (2199, 72, 1231);\
INSERT INTO public.games VALUES (2200, 72, 1232);\
INSERT INTO public.games VALUES (2201, 72, 1233);\
INSERT INTO public.games VALUES (2202, 72, 1234);\
INSERT INTO public.games VALUES (2203, 72, 1235);\
INSERT INTO public.games VALUES (2204, 72, 1236);\
INSERT INTO public.games VALUES (2205, 72, 1237);\
INSERT INTO public.games VALUES (2206, 72, 1238);\
INSERT INTO public.games VALUES (2207, 72, 1239);\
INSERT INTO public.games VALUES (2208, 72, 1240);\
INSERT INTO public.games VALUES (2209, 72, 1241);\
INSERT INTO public.games VALUES (2210, 72, 1242);\
INSERT INTO public.games VALUES (2211, 72, 1243);\
INSERT INTO public.games VALUES (2212, 72, 1244);\
INSERT INTO public.games VALUES (2213, 72, 1245);\
INSERT INTO public.games VALUES (2214, 72, 1246);\
INSERT INTO public.games VALUES (2215, 72, 1247);\
INSERT INTO public.games VALUES (2216, 72, 1248);\
INSERT INTO public.games VALUES (2217, 72, 1249);\
INSERT INTO public.games VALUES (2218, 72, 1250);\
INSERT INTO public.games VALUES (2219, 72, 1251);\
INSERT INTO public.games VALUES (2220, 72, 1252);\
INSERT INTO public.games VALUES (2221, 72, 1253);\
INSERT INTO public.games VALUES (2222, 72, 1254);\
INSERT INTO public.games VALUES (2223, 72, 1255);\
INSERT INTO public.games VALUES (2224, 72, 1256);\
INSERT INTO public.games VALUES (2225, 72, 1257);\
INSERT INTO public.games VALUES (2226, 72, 1258);\
INSERT INTO public.games VALUES (2227, 72, 1259);\
INSERT INTO public.games VALUES (2228, 72, 1260);\
INSERT INTO public.games VALUES (2229, 72, 1261);\
INSERT INTO public.games VALUES (2230, 72, 1262);\
INSERT INTO public.games VALUES (2231, 72, 1263);\
INSERT INTO public.games VALUES (2232, 72, 1264);\
INSERT INTO public.games VALUES (2233, 72, 1265);\
INSERT INTO public.games VALUES (2234, 72, 1266);\
INSERT INTO public.games VALUES (2235, 72, 1267);\
INSERT INTO public.games VALUES (2236, 72, 1268);\
INSERT INTO public.games VALUES (2237, 72, 1269);\
INSERT INTO public.games VALUES (2238, 72, 1270);\
INSERT INTO public.games VALUES (2239, 72, 1271);\
INSERT INTO public.games VALUES (2240, 72, 1272);\
INSERT INTO public.games VALUES (2241, 72, 1273);\
INSERT INTO public.games VALUES (2242, 72, 1274);\
INSERT INTO public.games VALUES (2243, 72, 1275);\
INSERT INTO public.games VALUES (2244, 72, 1276);\
INSERT INTO public.games VALUES (2245, 72, 1277);\
INSERT INTO public.games VALUES (2246, 72, 857);\
INSERT INTO public.games VALUES (2247, 72, 1278);\
INSERT INTO public.games VALUES (2248, 72, 1279);\
INSERT INTO public.games VALUES (2249, 72, 1280);\
INSERT INTO public.games VALUES (2250, 72, 1281);\
INSERT INTO public.games VALUES (2251, 72, 1282);\
INSERT INTO public.games VALUES (2252, 72, 1283);\
INSERT INTO public.games VALUES (2253, 72, 1284);\
INSERT INTO public.games VALUES (2254, 72, 1285);\
INSERT INTO public.games VALUES (2255, 72, 1286);\
INSERT INTO public.games VALUES (2256, 72, 1287);\
INSERT INTO public.games VALUES (2257, 72, 1288);\
INSERT INTO public.games VALUES (2258, 72, 1289);\
INSERT INTO public.games VALUES (2259, 72, 1290);\
INSERT INTO public.games VALUES (2260, 72, 1291);\
INSERT INTO public.games VALUES (2261, 72, 1292);\
INSERT INTO public.games VALUES (2262, 72, 1293);\
INSERT INTO public.games VALUES (2263, 72, 1294);\
INSERT INTO public.games VALUES (2264, 72, 1295);\
INSERT INTO public.games VALUES (2265, 72, 1296);\
INSERT INTO public.games VALUES (2266, 72, 1297);\
INSERT INTO public.games VALUES (2267, 72, 1298);\
INSERT INTO public.games VALUES (2268, 72, 1299);\
INSERT INTO public.games VALUES (2269, 72, 1300);\
INSERT INTO public.games VALUES (2270, 72, 1301);\
INSERT INTO public.games VALUES (2271, 72, 1302);\
INSERT INTO public.games VALUES (2272, 72, 1303);\
INSERT INTO public.games VALUES (2273, 72, 1304);\
INSERT INTO public.games VALUES (2274, 72, 1305);\
INSERT INTO public.games VALUES (2275, 72, 1306);\
INSERT INTO public.games VALUES (2276, 72, 1307);\
INSERT INTO public.games VALUES (2277, 72, 1308);\
INSERT INTO public.games VALUES (2278, 72, 1309);\
INSERT INTO public.games VALUES (2279, 72, 1310);\
INSERT INTO public.games VALUES (2280, 72, 1311);\
INSERT INTO public.games VALUES (2281, 72, 1312);\
INSERT INTO public.games VALUES (2282, 72, 1313);\
INSERT INTO public.games VALUES (2283, 72, 1314);\
INSERT INTO public.games VALUES (2284, 72, 1315);\
INSERT INTO public.games VALUES (2285, 72, 1316);\
INSERT INTO public.games VALUES (2286, 72, 1317);\
INSERT INTO public.games VALUES (2287, 72, 1318);\
INSERT INTO public.games VALUES (2288, 72, 1319);\
INSERT INTO public.games VALUES (2289, 72, 1320);\
INSERT INTO public.games VALUES (2290, 72, 1321);\
INSERT INTO public.games VALUES (2291, 72, 1322);\
INSERT INTO public.games VALUES (2292, 72, 1323);\
INSERT INTO public.games VALUES (2293, 72, 1324);\
INSERT INTO public.games VALUES (2294, 72, 1325);\
INSERT INTO public.games VALUES (2295, 72, 1326);\
INSERT INTO public.games VALUES (2296, 72, 1327);\
INSERT INTO public.games VALUES (2297, 72, 1328);\
INSERT INTO public.games VALUES (2298, 72, 865);\
INSERT INTO public.games VALUES (2299, 72, 1329);\
INSERT INTO public.games VALUES (2300, 72, 1330);\
INSERT INTO public.games VALUES (2301, 72, 1331);\
INSERT INTO public.games VALUES (2302, 72, 1332);\
INSERT INTO public.games VALUES (2303, 72, 1333);\
INSERT INTO public.games VALUES (2304, 72, 1334);\
INSERT INTO public.games VALUES (2305, 72, 1335);\
INSERT INTO public.games VALUES (2306, 72, 1336);\
INSERT INTO public.games VALUES (2307, 72, 1337);\
INSERT INTO public.games VALUES (2308, 72, 1338);\
INSERT INTO public.games VALUES (2309, 72, 1339);\
INSERT INTO public.games VALUES (2310, 72, 1340);\
INSERT INTO public.games VALUES (2311, 72, 1341);\
INSERT INTO public.games VALUES (2312, 72, 1342);\
INSERT INTO public.games VALUES (2313, 72, 1343);\
INSERT INTO public.games VALUES (2314, 72, 1344);\
INSERT INTO public.games VALUES (2315, 72, 1345);\
INSERT INTO public.games VALUES (2316, 72, 1346);\
INSERT INTO public.games VALUES (2317, 72, 1347);\
INSERT INTO public.games VALUES (2318, 72, 1348);\
INSERT INTO public.games VALUES (2319, 72, 1349);\
INSERT INTO public.games VALUES (2320, 74, 901);\
INSERT INTO public.games VALUES (2321, 74, 688);\
INSERT INTO public.games VALUES (2322, 75, 703);\
INSERT INTO public.games VALUES (2323, 75, 837);\
INSERT INTO public.games VALUES (2324, 74, 239);\
INSERT INTO public.games VALUES (2325, 74, 155);\
INSERT INTO public.games VALUES (2326, 74, 730);\
INSERT INTO public.games VALUES (2327, 76, 772);\
INSERT INTO public.games VALUES (2328, 76, 16);\
INSERT INTO public.games VALUES (2329, 77, 241);\
INSERT INTO public.games VALUES (2330, 77, 275);\
INSERT INTO public.games VALUES (2331, 76, 507);\
INSERT INTO public.games VALUES (2332, 76, 523);\
INSERT INTO public.games VALUES (2333, 76, 312);\
INSERT INTO public.games VALUES (2334, 78, 100);\
INSERT INTO public.games VALUES (2335, 78, 45);\
INSERT INTO public.games VALUES (2336, 79, 684);\
INSERT INTO public.games VALUES (2337, 79, 879);\
INSERT INTO public.games VALUES (2338, 78, 639);\
INSERT INTO public.games VALUES (2339, 78, 229);\
INSERT INTO public.games VALUES (2340, 78, 346);\
INSERT INTO public.games VALUES (2341, 80, 425);\
INSERT INTO public.games VALUES (2342, 80, 676);\
INSERT INTO public.games VALUES (2343, 81, 932);\
INSERT INTO public.games VALUES (2344, 81, 956);\
INSERT INTO public.games VALUES (2345, 80, 277);\
INSERT INTO public.games VALUES (2346, 82, 751);\
INSERT INTO public.games VALUES (2347, 82, 670);\
INSERT INTO public.games VALUES (2348, 83, 150);\
INSERT INTO public.games VALUES (2349, 83, 512);\
INSERT INTO public.games VALUES (2350, 82, 32);\
INSERT INTO public.games VALUES (2351, 84, 209);\
INSERT INTO public.games VALUES (2352, 84, 207);\
INSERT INTO public.games VALUES (2353, 85, 759);\
INSERT INTO public.games VALUES (2354, 85, 981);\
INSERT INTO public.games VALUES (2355, 84, 422);\
INSERT INTO public.games VALUES (2356, 9, 14);\
INSERT INTO public.games VALUES (2357, 86, 411);\
INSERT INTO public.games VALUES (2358, 86, 948);\
INSERT INTO public.games VALUES (2359, 87, 410);\
INSERT INTO public.games VALUES (2360, 87, 184);\
INSERT INTO public.games VALUES (2361, 86, 728);\
INSERT INTO public.games VALUES (2362, 94, 877);\
INSERT INTO public.games VALUES (2363, 94, 148);\
INSERT INTO public.games VALUES (2364, 95, 998);\
INSERT INTO public.games VALUES (2365, 95, 837);\
INSERT INTO public.games VALUES (2366, 94, 442);\
INSERT INTO public.games VALUES (2367, 9, 9);\
INSERT INTO public.games VALUES (2368, 96, 68);\
INSERT INTO public.games VALUES (2369, 96, 200);\
INSERT INTO public.games VALUES (2370, 97, 774);\
INSERT INTO public.games VALUES (2371, 97, 56);\
INSERT INTO public.games VALUES (2372, 96, 30);\
INSERT INTO public.games VALUES (2373, 98, 626);\
INSERT INTO public.games VALUES (2374, 98, 773);\
INSERT INTO public.games VALUES (2375, 99, 391);\
INSERT INTO public.games VALUES (2376, 99, 389);\
INSERT INTO public.games VALUES (2377, 98, 337);\
INSERT INTO public.games VALUES (2378, 100, 125);\
INSERT INTO public.games VALUES (2379, 100, 621);\
INSERT INTO public.games VALUES (2380, 101, 538);\
INSERT INTO public.games VALUES (2381, 101, 353);\
INSERT INTO public.games VALUES (2382, 100, 717);\
INSERT INTO public.games VALUES (2383, 102, 847);\
INSERT INTO public.games VALUES (2384, 102, 373);\
INSERT INTO public.games VALUES (2385, 103, 820);\
INSERT INTO public.games VALUES (2386, 103, 840);\
INSERT INTO public.games VALUES (2387, 102, 751);\
INSERT INTO public.games VALUES (2388, 102, 85);\
INSERT INTO public.games VALUES (2389, 102, 35);\
INSERT INTO public.games VALUES (2390, 104, 166);\
INSERT INTO public.games VALUES (2391, 104, 259);\
INSERT INTO public.games VALUES (2392, 105, 347);\
INSERT INTO public.games VALUES (2393, 105, 139);\
INSERT INTO public.games VALUES (2394, 104, 118);\
INSERT INTO public.games VALUES (2395, 104, 720);\
INSERT INTO public.games VALUES (2396, 104, 811);\
INSERT INTO public.games VALUES (2397, 109, 299);\
INSERT INTO public.games VALUES (2398, 109, 572);\
INSERT INTO public.games VALUES (2399, 108, 895);\
INSERT INTO public.games VALUES (2400, 108, 261);\
INSERT INTO public.games VALUES (2401, 108, 354);\
INSERT INTO public.games VALUES (2402, 9, 11);\
INSERT INTO public.games VALUES (2403, 110, 611);\
INSERT INTO public.games VALUES (2404, 110, 641);\
INSERT INTO public.games VALUES (2405, 111, 863);\
INSERT INTO public.games VALUES (2406, 111, 998);\
INSERT INTO public.games VALUES (2407, 110, 166);\
INSERT INTO public.games VALUES (2408, 110, 861);\
INSERT INTO public.games VALUES (2409, 110, 788);\
INSERT INTO public.games VALUES (2410, 112, 249);\
INSERT INTO public.games VALUES (2411, 112, 295);\
INSERT INTO public.games VALUES (2412, 113, 72);\
INSERT INTO public.games VALUES (2413, 113, 23);\
INSERT INTO public.games VALUES (2414, 112, 611);\
INSERT INTO public.games VALUES (2415, 112, 427);\
INSERT INTO public.games VALUES (2416, 112, 392);\
INSERT INTO public.games VALUES (2417, 114, 579);\
INSERT INTO public.games VALUES (2418, 114, 129);\
INSERT INTO public.games VALUES (2419, 115, 793);\
INSERT INTO public.games VALUES (2420, 115, 848);\
INSERT INTO public.games VALUES (2421, 114, 430);\
INSERT INTO public.games VALUES (2422, 114, 49);\
INSERT INTO public.games VALUES (2423, 114, 770);\
INSERT INTO public.games VALUES (2424, 116, 537);\
INSERT INTO public.games VALUES (2425, 116, 162);\
INSERT INTO public.games VALUES (2426, 117, 226);\
INSERT INTO public.games VALUES (2427, 117, 440);\
INSERT INTO public.games VALUES (2428, 116, 254);\
INSERT INTO public.games VALUES (2429, 116, 738);\
INSERT INTO public.games VALUES (2430, 116, 525);\
INSERT INTO public.games VALUES (2431, 118, 697);\
INSERT INTO public.games VALUES (2432, 118, 788);\
INSERT INTO public.games VALUES (2433, 119, 459);\
INSERT INTO public.games VALUES (2434, 119, 747);\
INSERT INTO public.games VALUES (2435, 118, 511);\
INSERT INTO public.games VALUES (2436, 118, 85);\
INSERT INTO public.games VALUES (2437, 118, 556);\
INSERT INTO public.games VALUES (2438, 120, 99);\
INSERT INTO public.games VALUES (2439, 120, 637);\
INSERT INTO public.games VALUES (2440, 121, 980);\
INSERT INTO public.games VALUES (2441, 121, 255);\
INSERT INTO public.games VALUES (2442, 120, 340);\
INSERT INTO public.games VALUES (2443, 120, 779);\
INSERT INTO public.games VALUES (2444, 120, 338);\
INSERT INTO public.games VALUES (2445, 122, 953);\
INSERT INTO public.games VALUES (2446, 122, 106);\
INSERT INTO public.games VALUES (2447, 123, 111);\
INSERT INTO public.games VALUES (2448, 123, 593);\
INSERT INTO public.games VALUES (2449, 122, 792);\
INSERT INTO public.games VALUES (2450, 122, 162);\
INSERT INTO public.games VALUES (2451, 122, 647);\
INSERT INTO public.games VALUES (2452, 124, 334);\
INSERT INTO public.games VALUES (2453, 124, 278);\
INSERT INTO public.games VALUES (2454, 125, 638);\
INSERT INTO public.games VALUES (2455, 125, 385);\
INSERT INTO public.games VALUES (2456, 124, 689);\
INSERT INTO public.games VALUES (2457, 124, 27);\
INSERT INTO public.games VALUES (2458, 124, 492);\
\
\
--\
-- Data for Name: usernames; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.usernames VALUES (1, 'user_1710802808487');\
INSERT INTO public.usernames VALUES (2, 'user_1710802808486');\
INSERT INTO public.usernames VALUES (3, 'user_1710802921340');\
INSERT INTO public.usernames VALUES (4, 'user_1710802921339');\
INSERT INTO public.usernames VALUES (5, 'user_1710803001323');\
INSERT INTO public.usernames VALUES (6, 'user_1710803001322');\
INSERT INTO public.usernames VALUES (7, 'user_1710803132520');\
INSERT INTO public.usernames VALUES (8, 'user_1710803132519');\
INSERT INTO public.usernames VALUES (9, 'rodrigo');\
INSERT INTO public.usernames VALUES (10, 'user_1710803413757');\
INSERT INTO public.usernames VALUES (11, 'user_1710803413756');\
INSERT INTO public.usernames VALUES (12, 'user_1710803497113');\
INSERT INTO public.usernames VALUES (13, 'user_1710803497112');\
INSERT INTO public.usernames VALUES (14, 'user_1710803516821');\
INSERT INTO public.usernames VALUES (15, 'user_1710803516820');\
INSERT INTO public.usernames VALUES (16, 'user_1710803531318');\
INSERT INTO public.usernames VALUES (17, 'user_1710803531317');\
INSERT INTO public.usernames VALUES (18, 'user_1710803587906');\
INSERT INTO public.usernames VALUES (19, 'user_1710803587905');\
INSERT INTO public.usernames VALUES (20, 'user_1710803622159');\
INSERT INTO public.usernames VALUES (21, 'user_1710803622158');\
INSERT INTO public.usernames VALUES (22, 'user_1710803663951');\
INSERT INTO public.usernames VALUES (23, 'user_1710803663950');\
INSERT INTO public.usernames VALUES (24, 'user_1710803809590');\
INSERT INTO public.usernames VALUES (25, 'user_1710803809589');\
INSERT INTO public.usernames VALUES (26, 'user_1710803863852');\
INSERT INTO public.usernames VALUES (27, 'user_1710803863851');\
INSERT INTO public.usernames VALUES (28, 'user_1710803973176');\
INSERT INTO public.usernames VALUES (29, 'user_1710803973175');\
INSERT INTO public.usernames VALUES (30, 'user_1710804003672');\
INSERT INTO public.usernames VALUES (31, 'user_1710804003671');\
INSERT INTO public.usernames VALUES (32, 'user_1710804150798');\
INSERT INTO public.usernames VALUES (33, 'user_1710804150797');\
INSERT INTO public.usernames VALUES (34, 'user_1710804219870');\
INSERT INTO public.usernames VALUES (35, 'user_1710804219869');\
INSERT INTO public.usernames VALUES (36, 'user_1710804333462');\
INSERT INTO public.usernames VALUES (37, 'user_1710804333461');\
INSERT INTO public.usernames VALUES (38, 'user_1710804368652');\
INSERT INTO public.usernames VALUES (39, 'user_1710804368651');\
INSERT INTO public.usernames VALUES (40, 'user_1710804387357');\
INSERT INTO public.usernames VALUES (41, 'user_1710804387356');\
INSERT INTO public.usernames VALUES (42, 'user_1710804440947');\
INSERT INTO public.usernames VALUES (43, 'user_1710804440946');\
INSERT INTO public.usernames VALUES (44, 'user_1710804508251');\
INSERT INTO public.usernames VALUES (45, 'user_1710804508250');\
INSERT INTO public.usernames VALUES (46, 'renato');\
INSERT INTO public.usernames VALUES (47, 'giorgione');\
INSERT INTO public.usernames VALUES (48, 'user_1710805053634');\
INSERT INTO public.usernames VALUES (49, 'user_1710805053633');\
INSERT INTO public.usernames VALUES (50, 'user_1710805286176');\
INSERT INTO public.usernames VALUES (51, 'user_1710805286175');\
INSERT INTO public.usernames VALUES (52, 'user_1710805392799');\
INSERT INTO public.usernames VALUES (53, 'user_1710805392798');\
INSERT INTO public.usernames VALUES (54, 'user_1710805412911');\
INSERT INTO public.usernames VALUES (55, 'user_1710805412910');\
INSERT INTO public.usernames VALUES (56, 'user_1710805637198');\
INSERT INTO public.usernames VALUES (57, 'user_1710805637197');\
INSERT INTO public.usernames VALUES (58, 'user_1710805935876');\
INSERT INTO public.usernames VALUES (59, 'user_1710805935875');\
INSERT INTO public.usernames VALUES (60, 'user_1710805974995');\
INSERT INTO public.usernames VALUES (61, 'user_1710805974994');\
INSERT INTO public.usernames VALUES (62, 'user_1710805996254');\
INSERT INTO public.usernames VALUES (63, 'user_1710805996253');\
INSERT INTO public.usernames VALUES (64, 'user_1710806061828');\
INSERT INTO public.usernames VALUES (65, 'user_1710806061827');\
INSERT INTO public.usernames VALUES (66, 'user_1710806253792');\
INSERT INTO public.usernames VALUES (67, 'user_1710806253791');\
INSERT INTO public.usernames VALUES (68, 'user_1710806274955');\
INSERT INTO public.usernames VALUES (69, 'user_1710806274954');\
INSERT INTO public.usernames VALUES (70, 'user_1710806293035');\
INSERT INTO public.usernames VALUES (71, 'user_1710806293034');\
INSERT INTO public.usernames VALUES (72, 'user_1710806565094');\
INSERT INTO public.usernames VALUES (73, 'user_1710806565093');\
INSERT INTO public.usernames VALUES (74, 'user_1710806605239');\
INSERT INTO public.usernames VALUES (75, 'user_1710806605238');\
INSERT INTO public.usernames VALUES (76, 'user_1710806668504');\
INSERT INTO public.usernames VALUES (77, 'user_1710806668503');\
INSERT INTO public.usernames VALUES (78, 'user_1710806681015');\
INSERT INTO public.usernames VALUES (79, 'user_1710806681014');\
INSERT INTO public.usernames VALUES (80, 'user_1710806721305');\
INSERT INTO public.usernames VALUES (81, 'user_1710806721304');\
INSERT INTO public.usernames VALUES (82, 'user_1710806738952');\
INSERT INTO public.usernames VALUES (83, 'user_1710806738951');\
INSERT INTO public.usernames VALUES (84, 'user_1710806766359');\
INSERT INTO public.usernames VALUES (85, 'user_1710806766358');\
INSERT INTO public.usernames VALUES (86, 'user_1710806851742');\
INSERT INTO public.usernames VALUES (87, 'user_1710806851741');\
INSERT INTO public.usernames VALUES (88, 'user_1710806876781');\
INSERT INTO public.usernames VALUES (89, 'user_1710806876780');\
INSERT INTO public.usernames VALUES (90, 'user_1710806879543');\
INSERT INTO public.usernames VALUES (91, 'user_1710806879542');\
INSERT INTO public.usernames VALUES (92, 'user_1710806910115');\
INSERT INTO public.usernames VALUES (93, 'user_1710806910114');\
INSERT INTO public.usernames VALUES (94, 'user_1710806956006');\
INSERT INTO public.usernames VALUES (95, 'user_1710806956005');\
INSERT INTO public.usernames VALUES (96, 'user_1710806986973');\
INSERT INTO public.usernames VALUES (97, 'user_1710806986972');\
INSERT INTO public.usernames VALUES (98, 'user_1710807019794');\
INSERT INTO public.usernames VALUES (99, 'user_1710807019793');\
INSERT INTO public.usernames VALUES (100, 'user_1710807024419');\
INSERT INTO public.usernames VALUES (101, 'user_1710807024418');\
INSERT INTO public.usernames VALUES (102, 'user_1710807043003');\
INSERT INTO public.usernames VALUES (103, 'user_1710807043002');\
INSERT INTO public.usernames VALUES (104, 'user_1710807066157');\
INSERT INTO public.usernames VALUES (105, 'user_1710807066156');\
INSERT INTO public.usernames VALUES (106, 'user_1710807255386');\
INSERT INTO public.usernames VALUES (107, 'user_1710807255385');\
INSERT INTO public.usernames VALUES (108, 'user_1710807268007');\
INSERT INTO public.usernames VALUES (109, 'user_1710807268006');\
INSERT INTO public.usernames VALUES (110, 'user_1710807412864');\
INSERT INTO public.usernames VALUES (111, 'user_1710807412863');\
INSERT INTO public.usernames VALUES (112, 'user_1710807473352');\
INSERT INTO public.usernames VALUES (113, 'user_1710807473351');\
INSERT INTO public.usernames VALUES (114, 'user_1710807502106');\
INSERT INTO public.usernames VALUES (115, 'user_1710807502105');\
INSERT INTO public.usernames VALUES (116, 'user_1710808761468');\
INSERT INTO public.usernames VALUES (117, 'user_1710808761467');\
INSERT INTO public.usernames VALUES (118, 'user_1710808817425');\
INSERT INTO public.usernames VALUES (119, 'user_1710808817424');\
INSERT INTO public.usernames VALUES (120, 'user_1710808852029');\
INSERT INTO public.usernames VALUES (121, 'user_1710808852028');\
INSERT INTO public.usernames VALUES (122, 'user_1710808924729');\
INSERT INTO public.usernames VALUES (123, 'user_1710808924728');\
INSERT INTO public.usernames VALUES (124, 'user_1710808958464');\
INSERT INTO public.usernames VALUES (125, 'user_1710808958463');\
\
\
--\
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.games_game_id_seq', 2458, true);\
\
\
--\
-- Name: usernames_username_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.usernames_username_id_seq', 125, true);\
\
\
--\
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.games\
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);\
\
\
--\
-- Name: usernames usernames_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.usernames\
    ADD CONSTRAINT usernames_pkey PRIMARY KEY (username_id);\
\
\
--\
-- Name: usernames usernames_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.usernames\
    ADD CONSTRAINT usernames_username_key UNIQUE (username);\
\
\
--\
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.games\
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.usernames(username_id);\
\
\
--\
-- PostgreSQL database dump complete\
--\
\
}