--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: kevinlopez
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO kevinlopez;

--
-- Name: heavyweights; Type: TABLE; Schema: public; Owner: kevinlopez
--

CREATE TABLE public.heavyweights (
    id integer NOT NULL,
    rank text,
    name text,
    link text,
    heavyweights_boxer_id integer,
    points integer,
    age integer,
    wins text,
    losses text,
    draws text
);


ALTER TABLE public.heavyweights OWNER TO kevinlopez;

--
-- Name: heavyweights_id_seq; Type: SEQUENCE; Schema: public; Owner: kevinlopez
--

CREATE SEQUENCE public.heavyweights_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.heavyweights_id_seq OWNER TO kevinlopez;

--
-- Name: heavyweights_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevinlopez
--

ALTER SEQUENCE public.heavyweights_id_seq OWNED BY public.heavyweights.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: kevinlopez
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO kevinlopez;

--
-- Name: heavyweights id; Type: DEFAULT; Schema: public; Owner: kevinlopez
--

ALTER TABLE ONLY public.heavyweights ALTER COLUMN id SET DEFAULT nextval('public.heavyweights_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: kevinlopez
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-09-27 17:27:16.251238	2019-09-27 17:27:16.251238
\.


--
-- Data for Name: heavyweights; Type: TABLE DATA; Schema: public; Owner: kevinlopez
--

COPY public.heavyweights (id, rank, name, link, heavyweights_boxer_id, points, age, wins, losses, draws) FROM stdin;
1	1	Andy Ruiz Jr*	http://boxrec.com/en/proboxer/489762	489762	755	30	33	1	0
2	2	Deontay Wilder*	http://boxrec.com/en/proboxer/468841	468841	623	33	41	0	1
3	3	Anthony Joshua*	http://boxrec.com/en/proboxer/659461	659461	604	29	22	1	0
4	4	Tyson Fury	http://boxrec.com/en/proboxer/479205	479205	550	31	29	0	1
5	5	Alexander Povetkin	http://boxrec.com/en/proboxer/318081	318081	483	40	35	2	0
6	6	Dillian Whyte	http://boxrec.com/en/proboxer/569964	569964	421	31	26	1	0
7	7	Jarrell Miller	http://boxrec.com/en/proboxer/498837	498837	367	31	23	0	1
8	8	Luis Ortiz*	http://boxrec.com/en/proboxer/528949	528949	364	40	31	1	0
9	9	Kubrat Pulev*	http://boxrec.com/en/proboxer/511850	511850	340	38	27	1	0
10	10	Adam Kownacki	http://boxrec.com/en/proboxer/512994	512994	247	30	20	0	0
11	11	Joseph Parker*	http://boxrec.com/en/proboxer/613846	613846	226	27	26	2	0
12	12	Dereck Chisora*	http://boxrec.com/en/proboxer/381739	381739	194	35	31	9	0
13	13	Filip Hrgovic	http://boxrec.com/en/proboxer/813758	813758	177	27	9	0	0
14	14	Dominic Breazeale	http://boxrec.com/en/proboxer/629462	629462	169	34	20	2	0
15	15	Oscar Rivas	http://boxrec.com/en/proboxer/503964	503964	152	32	26	1	0
16	16	Christian Hammer	http://boxrec.com/en/proboxer/475159	475159	144	32	24	6	0
17	17	Gerald Washington	http://boxrec.com/en/proboxer/621653	621653	135	37	20	3	1
18	18	Charles Martin	http://boxrec.com/en/proboxer/631078	631078	125	33	27	2	1
19	19	Joe Joyce	http://boxrec.com/en/proboxer/811429	811429	125	34	10	0	0
20	20	David Price	http://boxrec.com/en/proboxer/483755	483755	124	36	25	6	0
21	21	Evgeny Romanov	http://boxrec.com/en/proboxer/768670	768670	122	34	14	0	0
22	22	Michael Hunter	http://boxrec.com/en/proboxer/640268	640268	122	31	18	1	0
23	23	Tomasz Adamek	http://boxrec.com/en/proboxer/14883	14883	117	42	53	6	0
24	24	Hughie Fury	http://boxrec.com/en/proboxer/643611	643611	115	25	23	3	0
25	25	Marco Huck	http://boxrec.com/en/proboxer/280342	280342	97	34	41	5	1
26	26	Efe Ajagba	http://boxrec.com/en/proboxer/804221	804221	92	25	11	0	0
27	27	Carlos Takam	http://boxrec.com/en/proboxer/355273	355273	90	38	37	5	1
28	28	Daniel Dubois*	http://boxrec.com/en/proboxer/787430	787430	87	22	12	0	0
29	29	Agit Kabayel	http://boxrec.com/en/proboxer/575332	575332	75	27	19	0	0
30	30	Simon Kean	http://boxrec.com/en/proboxer/733157	733157	73	30	17	1	0
31	31	Petar Milas	http://boxrec.com/en/proboxer/741417	741417	72	24	14	0	0
32	32	Artur Szpilka*	http://boxrec.com/en/proboxer/473857	473857	67	30	22	4	0
33	33	David Allen	http://boxrec.com/en/proboxer/630710	630710	63	27	17	5	2
34	34	Robert Helenius	http://boxrec.com/en/proboxer/451505	451505	60	35	28	3	0
35	35	Eric Molina	http://boxrec.com/en/proboxer/387871	387871	60	37	27	5	0
36	36	Lucas Browne*	http://boxrec.com/en/proboxer/489046	489046	55	40	28	2	0
37	37	Bryant Jennings	http://boxrec.com/en/proboxer/529630	529630	55	35	24	4	0
38	38	Bermane Stiverne	http://boxrec.com/en/proboxer/324806	324806	53	40	25	4	1
39	39	Martin Bakole Ilunga	http://boxrec.com/en/proboxer/681602	681602	51	\N	13	1	0
40	40	Chris Arreola	http://boxrec.com/en/proboxer/212248	212248	51	38	38	6	1
41	41	Erkan Teper	http://boxrec.com/en/proboxer/545749	545749	48	37	20	3	0
42	42	Sergey Kuzmin	http://boxrec.com/en/proboxer/703923	703923	46	32	15	1	0
43	43	Lukasz Rozanski	http://boxrec.com/en/proboxer/734408	734408	45	33	11	0	0
44	44	Tony Yoka*	http://boxrec.com/en/proboxer/795843	795843	45	27	6	0	0
45	45	Ali Eren Demirezen	http://boxrec.com/en/proboxer/775950	775950	45	29	11	1	0
46	46	Otto Wallin	http://boxrec.com/en/proboxer/651121	651121	43	28	20	1	0
47	47	Andrey Fedosov	http://boxrec.com/en/proboxer/219370	219370	42	33	31	3	0
48	48	Mariusz Wach	http://boxrec.com/en/proboxer/309799	309799	39	39	34	5	0
49	49	Mario Heredia*	http://boxrec.com/en/proboxer/601830	601830	37	26	16	7	1
50	50	Samuel Peter	http://boxrec.com/en/proboxer/32364	32364	35	39	38	8	0
51	51	Joey Dawejko	http://boxrec.com/en/proboxer/512687	512687	35	29	20	7	4
52	52	Mladen Miljas	http://boxrec.com/en/proboxer/763287	763287	34	26	12	0	0
53	53	Alexander Dimitrenko	http://boxrec.com/en/proboxer/79357	79357	33	37	41	6	0
54	54	Shawndell Terell Winters	http://boxrec.com/en/proboxer/719466	719466	30	38	12	2	0
55	55	Dillon Carman	http://boxrec.com/en/proboxer/574621	574621	30	33	14	5	0
56	56	Alexander Frank	http://boxrec.com/en/proboxer/682283	682283	30	33	17	0	1
57	57	Tom Schwarz*	http://boxrec.com/en/proboxer/655566	655566	29	25	25	1	0
58	58	Nathan Gorman	http://boxrec.com/en/proboxer/739980	739980	28	23	16	1	0
59	59	Alex Leapai	http://boxrec.com/en/proboxer/261205	261205	25	39	32	8	4
60	60	Andriy Rudenko	http://boxrec.com/en/proboxer/374937	374937	24	36	32	4	0
61	61	Amir Mansour	http://boxrec.com/en/proboxer/23704	23704	24	47	23	4	1
62	62	Arnold Gjergjaj	http://boxrec.com/en/proboxer/510397	510397	23	34	33	3	0
63	63	Victor Emilio Ramirez	http://boxrec.com/en/proboxer/352748	352748	23	35	26	4	1
64	64	Jermaine Franklin*	http://boxrec.com/en/proboxer/716569	716569	23	25	19	0	0
65	65	Sergiej Werwejko	http://boxrec.com/en/proboxer/746744	746744	22	31	11	2	0
66	66	Oliver McCall	http://boxrec.com/en/proboxer/451	451	22	54	59	14	0
67	67	Frank Sanchez Faure	http://boxrec.com/en/proboxer/814335	814335	22	27	13	0	0
68	68	Alexander Ustinov	http://boxrec.com/en/proboxer/314868	314868	22	42	35	4	0
69	69	Umut Camkiran	http://boxrec.com/en/proboxer/664204	664204	19	30	12	0	0
70	70	Tyrone Spong*	http://boxrec.com/en/proboxer/713216	713216	19	34	14	0	0
71	71	Ivan Dychko	http://boxrec.com/en/proboxer/813592	813592	19	29	9	0	0
72	72	Junior Fa	http://boxrec.com/en/proboxer/742693	742693	18	29	18	0	0
73	73	Travis Kauffman	http://boxrec.com/en/proboxer/343636	343636	18	34	32	3	0
74	74	Chazz Witherspoon	http://boxrec.com/en/proboxer/284612	284612	17	38	38	3	0
75	75	Robert Alfonso	http://boxrec.com/en/proboxer/632393	632393	15	32	19	0	1
76	76	Dominick Guinn*	http://boxrec.com/en/proboxer/15726	15726	15	44	37	13	1
77	77	Zhilei Zhang	http://boxrec.com/en/proboxer/692149	692149	15	36	20	0	0
78	78	Ytalo Perea	http://boxrec.com/en/proboxer/646375	646375	14	26	11	5	2
79	79	Kamil Sokolowski	http://boxrec.com/en/proboxer/698269	698269	14	33	7	15	2
80	80	Gonzalo Omar Basile*	http://boxrec.com/en/proboxer/185947	185947	14	45	74	12	0
81	81	Izuagbe Ugonoh	http://boxrec.com/en/proboxer/550312	550312	14	32	18	2	0
82	82	Attila Levin	http://boxrec.com/en/proboxer/14165	14165	13	42	35	4	0
83	83	Rodney Hernandez	http://boxrec.com/en/proboxer/585454	585454	12	30	13	8	2
84	84	Arslanbek Makhmudov*	http://boxrec.com/en/proboxer/817769	817769	12	30	8	0	0
85	85	Carlos Negron	http://boxrec.com/en/proboxer/489720	489720	12	32	20	3	0
86	86	Bogdan Dinu	http://boxrec.com/en/proboxer/449561	449561	12	33	18	2	0
87	87	Johnny Muller	http://boxrec.com/en/proboxer/490254	490254	12	\N	21	8	2
88	88	Evgenios Lazaridis	http://boxrec.com/en/proboxer/651723	651723	11	31	15	2	0
89	89	Jerry Forrest	http://boxrec.com/en/proboxer/622344	622344	11	31	26	3	0
90	90	Michael Wallisch*	http://boxrec.com/en/proboxer/531663	531663	10	33	20	2	0
91	91	Vladyslav Sirenko	http://boxrec.com/en/proboxer/800125	800125	10	24	12	0	0
92	92	Stephan Shaw	http://boxrec.com/en/proboxer/672064	672064	10	27	12	0	0
93	93	Ray Austin	http://boxrec.com/en/proboxer/16778	16778	10	48	29	10	4
94	94	Iago Kiladze	http://boxrec.com/en/proboxer/422432	422432	10	33	26	4	1
95	95	Oleksandr Teslenko	http://boxrec.com/en/proboxer/727779	727779	10	27	16	1	0
96	96	Sherman Williams	http://boxrec.com/en/proboxer/14256	14256	9	47	42	15	2
97	97	Shigabudin Aliev	http://boxrec.com/en/proboxer/836567	836567	9	26	8	0	0
98	98	Elvis Moyo	http://boxrec.com/en/proboxer/469065	469065	9	35	9	6	2
99	99	Trey Lippe	http://boxrec.com/en/proboxer/678288	678288	9	30	16	0	0
100	100	Tshibuabua Kalonga	http://boxrec.com/en/proboxer/396836	396836	8	36	9	0	0
101	101	Facundo Nahuel Simal	http://boxrec.com/en/proboxer/451320	451320	8	33	22	0	1
102	102	Kevin Johnson*	http://boxrec.com/en/proboxer/173416	173416	8	40	34	14	1
103	103	Devin Vargas	http://boxrec.com/en/proboxer/283628	283628	8	37	21	5	0
104	104	Yakup Saglam*	http://boxrec.com/en/proboxer/368978	368978	8	42	42	5	0
105	105	Jonathan Rice	http://boxrec.com/en/proboxer/679276	679276	8	32	13	4	1
106	106	Herve Hubeaux*	http://boxrec.com/en/proboxer/530540	530540	7	27	31	3	0
107	107	Marcin Siwy*	http://boxrec.com/en/proboxer/590077	590077	7	28	19	0	0
108	108	Hemi Ahio	http://boxrec.com/en/proboxer/679269	679269	7	29	15	0	0
109	109	Pavel Sour*	http://boxrec.com/en/proboxer/785279	785279	7	36	11	1	0
110	110	Ruann Visser	http://boxrec.com/en/proboxer/694641	694641	7	28	17	2	0
111	111	Joshua Tufte	http://boxrec.com/en/proboxer/560005	560005	7	32	19	3	0
112	112	Darmani Rock*	http://boxrec.com/en/proboxer/752985	752985	7	23	16	0	0
113	113	Cassius Chaney*	http://boxrec.com/en/proboxer/715608	715608	7	32	16	0	0
114	114	Adam Braidwood	http://boxrec.com/en/proboxer/481634	481634	7	35	14	2	0
115	115	George Arias	http://boxrec.com/en/proboxer/698932	698932	7	27	14	0	0
116	116	Demsey McKean*	http://boxrec.com/en/proboxer/702784	702784	7	29	16	0	0
117	117	Oleksandr Zakhozhyi	http://boxrec.com/en/proboxer/803101	803101	7	26	12	0	0
118	118	Fabio Wardley	http://boxrec.com/en/proboxer/785893	785893	6	24	8	0	0
119	119	Tom Little	http://boxrec.com/en/proboxer/576438	576438	6	32	10	7	0
120	120	LaRon Mitchell	http://boxrec.com/en/proboxer/652739	652739	6	39	16	2	0
121	121	Kem Ljungquist	http://boxrec.com/en/proboxer/816268	816268	6	29	9	0	0
122	122	Cyril Leonet*	http://boxrec.com/en/proboxer/379189	379189	6	36	15	10	3
123	123	Agron Smakici*	http://boxrec.com/en/proboxer/574472	574472	6	29	15	0	0
124	124	Rydell Booker	http://boxrec.com/en/proboxer/58875	58875	6	38	26	2	0
125	125	Raphael Tronche*	http://boxrec.com/en/proboxer/521513	521513	6	29	12	0	0
126	126	Mark De Mori*	http://boxrec.com/en/proboxer/237842	237842	6	37	37	2	2
127	127	Guido Vianello	http://boxrec.com/en/proboxer/849885	849885	6	25	5	0	0
128	128	Joe Hanks	http://boxrec.com/en/proboxer/431653	431653	5	36	23	3	0
129	129	Alex Dickinson*	http://boxrec.com/en/proboxer/801419	801419	5	32	10	1	0
130	130	Junior Anthony Wright	http://boxrec.com/en/proboxer/584992	584992	5	33	17	3	1
131	131	Gregory Corbin	http://boxrec.com/en/proboxer/616873	616873	5	38	15	2	0
132	132	Ariel Esteban Bracamonte*	http://boxrec.com/en/proboxer/790637	790637	5	26	9	3	0
133	133	Vladimir Tereshkin*	http://boxrec.com/en/proboxer/397632	397632	5	31	21	0	1
134	134	Kristian Prenga	http://boxrec.com/en/proboxer/760653	760653	5	28	9	1	0
135	135	Hussein Muhamed*	http://boxrec.com/en/proboxer/707814	707814	5	28	13	0	0
136	136	Josh Sandland*	http://boxrec.com/en/proboxer/782449	782449	5	27	3	1	1
137	137	Arslan Yallyev*	http://boxrec.com/en/proboxer/828618	828618	5	22	5	0	0
138	138	Mirko Tintor	http://boxrec.com/en/proboxer/753870	753870	5	32	15	3	1
139	139	Ivan Di Berardino	http://boxrec.com/en/proboxer/687902	687902	5	37	9	1	1
140	140	Christian Lewandowski	http://boxrec.com/en/proboxer/703794	703794	5	26	12	3	0
141	141	Kristijan Krstacic*	http://boxrec.com/en/proboxer/540890	540890	5	38	17	2	0
142	142	Onoriode Ehwarieme	http://boxrec.com/en/proboxer/555940	555940	5	31	17	1	0
143	143	Alexander Flores*	http://boxrec.com/en/proboxer/534091	534091	5	29	17	2	1
144	144	Bowie Tupou	http://boxrec.com/en/proboxer/348804	348804	5	37	28	6	0
145	145	Labinot Xhoxhaj	http://boxrec.com/en/proboxer/762250	762250	5	26	12	0	0
146	146	Santander Silgado*	http://boxrec.com/en/proboxer/389896	389896	4	34	28	7	0
147	147	Apti Davtaev	http://boxrec.com/en/proboxer/643273	643273	4	30	18	0	1
148	148	Herman Ene Purcell*	http://boxrec.com/en/proboxer/662388	662388	4	24	15	8	0
149	149	Willie Jake Jr	http://boxrec.com/en/proboxer/737004	737004	4	36	8	3	1
150	150	Victor Bisbal	http://boxrec.com/en/proboxer/290909	290909	4	39	23	4	0
151	151	Mark Bennett	http://boxrec.com/en/proboxer/813796	813796	4	31	5	0	0
152	152	Will Nasio	http://boxrec.com/en/proboxer/640110	640110	4	33	12	4	0
153	153	Robert Simms*	http://boxrec.com/en/proboxer/730313	730313	4	35	9	3	0
154	154	Faiga Opelu*	http://boxrec.com/en/proboxer/790906	790906	4	25	11	1	1
155	155	Maurenzo Smith	http://boxrec.com/en/proboxer/305886	305886	4	41	21	11	4
156	156	Samir Nebo	http://boxrec.com/en/proboxer/593190	593190	4	38	10	3	1
157	157	Senad Gashi*	http://boxrec.com/en/proboxer/687864	687864	4	29	18	3	0
158	158	Sergio Ramirez*	http://boxrec.com/en/proboxer/673053	673053	4	34	18	6	0
159	159	Bakhodir Jalolov*	http://boxrec.com/en/proboxer/834487	834487	4	25	6	0	0
160	160	Donovan Dennis*	http://boxrec.com/en/proboxer/598044	598044	4	32	12	4	0
161	161	Boris Estenfelder*	http://boxrec.com/en/proboxer/538855	538855	4	32	11	1	1
162	162	Jonathon Guidry	http://boxrec.com/en/proboxer/682513	682513	4	29	14	0	2
163	163	Kash Ali	http://boxrec.com/en/proboxer/584978	584978	4	27	15	1	0
164	164	Rogelio Omar Rossi	http://boxrec.com/en/proboxer/385460	385460	4	37	20	8	1
165	165	Pezhman Seifkhani*	http://boxrec.com/en/proboxer/718454	718454	4	28	9	0	0
166	166	Carl Davis Drumond	http://boxrec.com/en/proboxer/308999	308999	4	44	32	5	0
167	167	Vikapita Meroro	http://boxrec.com/en/proboxer/357372	357372	4	34	29	7	0
168	168	Albon Pervizaj	http://boxrec.com/en/proboxer/790661	790661	4	24	12	0	0
169	169	Jacek Christoph Piatek*	http://boxrec.com/en/proboxer/731894	731894	4	46	10	0	0
170	170	Jeremiah Williams	http://boxrec.com/en/proboxer/441947	441947	4	47	15	13	1
171	171	Zhan Kossobutskiy*	http://boxrec.com/en/proboxer/808005	808005	4	30	11	0	0
172	172	Julian Fernandez*	http://boxrec.com/en/proboxer/783061	783061	4	26	13	1	0
173	173	Yasmany Consuegra	http://boxrec.com/en/proboxer/528951	528951	3	35	18	3	0
174	174	Niall Kennedy	http://boxrec.com/en/proboxer/718566	718566	3	35	13	1	1
175	175	Christian Thun	http://boxrec.com/en/proboxer/825272	825272	3	27	4	0	0
176	176	Isaac Munoz Gutierrez	http://boxrec.com/en/proboxer/582299	582299	3	27	12	0	1
177	177	Willis Meehan*	http://boxrec.com/en/proboxer/704879	704879	3	24	9	0	0
178	178	Keenan Hickmon*	http://boxrec.com/en/proboxer/712457	712457	3	31	6	4	1
179	179	Patrick Korte	http://boxrec.com/en/proboxer/712537	712537	3	35	16	1	0
180	180	Jay McFarlane*	http://boxrec.com/en/proboxer/779576	779576	3	21	10	3	0
181	181	Steve Vukosa	http://boxrec.com/en/proboxer/48247	48247	3	42	12	1	0
182	182	Mohamed Soltby	http://boxrec.com/en/proboxer/676811	676811	3	28	16	2	0
183	183	Erik Pfeifer	http://boxrec.com/en/proboxer/847455	847455	3	32	6	0	0
184	184	Terrell Jamal Woods*	http://boxrec.com/en/proboxer/583273	583273	3	30	21	45	7
185	185	Michael Polite Coffie	http://boxrec.com/en/proboxer/815296	815296	3	33	6	0	0
186	186	Boban Filipovic	http://boxrec.com/en/proboxer/674375	674375	3	43	26	1	0
187	187	Gabriel Enguema	http://boxrec.com/en/proboxer/656399	656399	3	35	10	9	0
188	188	Jesus Israel Molina	http://boxrec.com/en/proboxer/762885	762885	3	29	8	1	1
189	189	Roman Gorst*	http://boxrec.com/en/proboxer/847814	847814	3	30	5	0	0
190	190	Kristaps Zutis	http://boxrec.com/en/proboxer/695273	695273	3	29	7	1	2
191	191	Tomas Salek	http://boxrec.com/en/proboxer/796559	796559	3	21	10	1	0
192	192	James McKenzie Morrison*	http://boxrec.com/en/proboxer/699496	699496	3	29	16	0	2
193	193	Jack Mulowayi	http://boxrec.com/en/proboxer/735878	735878	3	32	7	1	1
194	194	Newfel Ouatah*	http://boxrec.com/en/proboxer/506809	506809	3	33	16	3	0
195	195	Nick Webb*	http://boxrec.com/en/proboxer/714625	714625	3	32	13	2	0
196	196	Ruslan Myrsatayev	http://boxrec.com/en/proboxer/744714	744714	3	34	6	0	0
197	197	Mike Balogun	http://boxrec.com/en/proboxer/702744	702744	3	35	14	0	0
198	198	Marian Dzupka	http://boxrec.com/en/proboxer/829155	829155	3	21	8	0	0
199	199	Razvan Cojanu	http://boxrec.com/en/proboxer/565200	565200	3	32	16	6	0
200	200	Alexandru Gabroveanu	http://boxrec.com/en/proboxer/704649	704649	3	31	13	0	0
201	201	Ellis Machin*	http://boxrec.com/en/proboxer/842130	842130	3	27	3	0	1
202	202	Ronald Johnson*	http://boxrec.com/en/proboxer/282547	282547	3	33	16	1	0
203	203	Alante Green*	http://boxrec.com/en/proboxer/778277	778277	3	27	7	0	1
204	204	Avery Gibson	http://boxrec.com/en/proboxer/622969	622969	3	36	9	8	4
205	205	Craig Lewis	http://boxrec.com/en/proboxer/696174	696174	3	34	14	4	1
206	206	Flo Simba	http://boxrec.com/en/proboxer/517085	517085	3	30	15	5	0
207	207	Elvis Garcia Munoz	http://boxrec.com/en/proboxer/799864	799864	3	29	8	0	0
208	208	Nick Jones	http://boxrec.com/en/proboxer/720981	720981	3	32	7	2	0
209	209	Don Haynesworth	http://boxrec.com/en/proboxer/698036	698036	3	37	16	3	1
210	210	Nick Kisner*	http://boxrec.com/en/proboxer/524367	524367	3	28	21	4	1
211	211	Julius Lloyd-Long	http://boxrec.com/en/proboxer/30144	30144	3	42	18	24	1
212	212	Adnan Redzovic	http://boxrec.com/en/proboxer/276970	276970	3	42	20	3	0
213	213	Chauncy Welliver	http://boxrec.com/en/proboxer/50877	50877	3	36	57	12	5
214	214	Ramon Argentino Guidetti	http://boxrec.com/en/proboxer/370515	370515	2	38	3	19	5
215	215	Joe Cusumano	http://boxrec.com/en/proboxer/543200	543200	2	31	18	3	0
216	216	Quian Davis	http://boxrec.com/en/proboxer/726736	726736	2	39	6	0	2
217	217	Simon Vallily*	http://boxrec.com/en/proboxer/640357	640357	2	34	15	2	1
218	218	Marcelo Nascimento*	http://boxrec.com/en/proboxer/421738	421738	2	38	18	19	0
219	219	Michael Pirotton	http://boxrec.com/en/proboxer/864330	864330	2	23	4	0	0
220	220	Mariano Ruben Diaz Strunz	http://boxrec.com/en/proboxer/373703	373703	2	37	13	15	1
221	221	Justin Jones	http://boxrec.com/en/proboxer/429552	429552	2	37	22	0	2
222	222	Fabio Tuiach*	http://boxrec.com/en/proboxer/250868	250868	2	39	29	6	0
223	223	Jorge Alejandro Arias	http://boxrec.com/en/proboxer/771165	771165	2	25	8	1	1
224	224	Ignacio Esparza	http://boxrec.com/en/proboxer/202946	202946	2	42	22	3	0
225	225	Djuar El Scheich	http://boxrec.com/en/proboxer/790046	790046	2	27	11	0	0
226	226	Denis Bakhtov	http://boxrec.com/en/proboxer/17779	17779	2	39	39	17	0
227	227	Roberto Thomas White	http://boxrec.com/en/proboxer/397484	397484	2	49	15	12	3
228	228	Luca D'Ortenzi	http://boxrec.com/en/proboxer/765570	765570	2	31	10	1	0
229	229	Lamont Capers	http://boxrec.com/en/proboxer/633021	633021	2	28	9	14	5
230	230	Leandro Daniel Robutti	http://boxrec.com/en/proboxer/696821	696821	2	33	6	4	0
231	231	Habib Vuqiterna	http://boxrec.com/en/proboxer/837015	837015	2	27	3	0	0
232	232	Randall Rayment	http://boxrec.com/en/proboxer/705838	705838	2	33	9	5	0
233	233	Jason Bergman	http://boxrec.com/en/proboxer/378520	378520	2	35	27	17	2
234	234	Jean Pierre Augustin	http://boxrec.com/en/proboxer/673904	673904	2	31	17	1	1
235	235	Danny Calhoun	http://boxrec.com/en/proboxer/621235	621235	2	36	6	5	0
236	236	Kostiantyn Dovbyshchenko*	http://boxrec.com/en/proboxer/742181	742181	2	28	6	4	1
237	237	Eugen Buchmueller*	http://boxrec.com/en/proboxer/740651	740651	2	38	16	4	0
238	238	Faisal Ibnel Arrami	http://boxrec.com/en/proboxer/355949	355949	2	35	18	7	1
239	239	Shawn Laughery	http://boxrec.com/en/proboxer/559783	559783	2	28	9	3	0
240	240	Cristhian Nazareno Fernandez	http://boxrec.com/en/proboxer/630275	630275	2	40	9	8	2
241	241	Daniel Martz	http://boxrec.com/en/proboxer/601643	601643	2	28	18	8	1
242	242	Alexis Santos	http://boxrec.com/en/proboxer/483691	483691	2	30	19	3	0
243	243	Patrick Eneanya	http://boxrec.com/en/proboxer/687394	687394	2	32	10	2	0
244	244	Evan Gubera	http://boxrec.com/en/proboxer/827454	827454	2	26	3	0	0
245	245	Danilo Milacic	http://boxrec.com/en/proboxer/818532	818532	2	\N	6	0	0
246	246	Hasim Rahman Jr	http://boxrec.com/en/proboxer/790284	790284	2	28	8	0	0
247	247	Ryan Charles	http://boxrec.com/en/proboxer/833717	833717	2	32	6	0	0
248	248	Oleksandr Babanov	http://boxrec.com/en/proboxer/828558	828558	2	32	3	0	0
249	249	Osborn Machimana	http://boxrec.com/en/proboxer/24285	24285	2	40	23	13	2
250	250	Amron Sands	http://boxrec.com/en/proboxer/806568	806568	2	25	9	0	0
251	251	Stan Surmacz	http://boxrec.com/en/proboxer/730488	730488	2	29	11	1	0
252	252	Gabriel Hernandez	http://boxrec.com/en/proboxer/760082	760082	2	24	10	0	0
253	253	Artem Suslenkov	http://boxrec.com/en/proboxer/852456	852456	2	24	3	0	0
254	254	Kenny Cruz Carasquillo	http://boxrec.com/en/proboxer/391589	391589	2	30	3	3	1
255	255	Aldo Colliander	http://boxrec.com/en/proboxer/138474	138474	2	41	15	3	0
256	256	Ronald Baca	http://boxrec.com/en/proboxer/682793	682793	2	33	9	4	4
257	257	Chris Healey*	http://boxrec.com/en/proboxer/614225	614225	2	31	8	5	0
258	258	Viktar Chvarkou	http://boxrec.com/en/proboxer/762039	762039	2	34	2	5	0
259	259	Gasan Gimbatov	http://boxrec.com/en/proboxer/803100	803100	2	25	4	1	0
260	260	Juan Pedro Guglielmetti	http://boxrec.com/en/proboxer/456799	456799	2	46	11	5	0
261	261	Alex Mazikin	http://boxrec.com/en/proboxer/302151	302151	2	44	14	15	2
262	262	Tim Chemelli*	http://boxrec.com/en/proboxer/746872	746872	2	37	5	3	0
263	263	Dennis Lewandowski	http://boxrec.com/en/proboxer/703793	703793	2	25	13	4	0
264	264	Joseph Goodall	http://boxrec.com/en/proboxer/824368	824368	2	27	6	0	1
265	265	Byron Polley	http://boxrec.com/en/proboxer/27523	27523	2	39	30	24	2
266	266	Kris Terzievski*	http://boxrec.com/en/proboxer/764718	764718	2	\N	8	0	1
267	267	Tomislav Cikotic	http://boxrec.com/en/proboxer/873522	873522	1	31	2	0	0
268	268	Ivica Perkovic	http://boxrec.com/en/proboxer/111803	111803	1	45	28	34	0
269	269	Mensur Dedic	http://boxrec.com/en/proboxer/762615	762615	1	34	10	0	0
270	270	Cassius Anderson*	http://boxrec.com/en/proboxer/746667	746667	1	35	7	2	0
271	271	Joel Caudle*	http://boxrec.com/en/proboxer/727175	727175	1	29	8	3	2
272	272	Kimdo Bethel Boykin	http://boxrec.com/en/proboxer/499820	499820	1	34	11	2	1
273	273	Steven Lyons*	http://boxrec.com/en/proboxer/749093	749093	1	30	5	5	0
274	274	Ivan D'Adamo	http://boxrec.com/en/proboxer/804906	804906	1	39	4	1	1
275	275	Colby Madison	http://boxrec.com/en/proboxer/754151	754151	1	36	8	1	2
276	276	Kiki Toa Leutele*	http://boxrec.com/en/proboxer/756404	756404	1	25	7	0	2
277	277	Burak Sahin	http://boxrec.com/en/proboxer/615406	615406	1	28	13	1	0
278	278	Jeremiah Karpency	http://boxrec.com/en/proboxer/533930	533930	1	29	16	2	1
279	279	Trent Rawlins	http://boxrec.com/en/proboxer/722904	722904	1	33	10	2	1
280	280	Attila Kalman	http://boxrec.com/en/proboxer/523801	523801	1	26	4	1	0
281	281	Timothy Moten*	http://boxrec.com/en/proboxer/814728	814728	1	27	5	0	0
282	282	Naylor Ball	http://boxrec.com/en/proboxer/785985	785985	1	22	6	1	0
283	283	Tyrell Wright	http://boxrec.com/en/proboxer/622857	622857	1	32	9	3	2
284	284	Mike Bissett	http://boxrec.com/en/proboxer/628044	628044	1	34	15	12	1
285	285	Kamil Bodzioch*	http://boxrec.com/en/proboxer/846781	846781	1	23	4	0	0
286	286	Louison Loizou	http://boxrec.com/en/proboxer/856705	856705	1	39	7	0	0
287	287	Peter Kadiru*	http://boxrec.com/en/proboxer/862274	862274	1	22	4	0	0
288	288	Jonathan Hill	http://boxrec.com/en/proboxer/894200	894200	1	37	2	0	0
289	289	Justin Rolfe	http://boxrec.com/en/proboxer/828304	828304	1	28	2	1	0
290	290	Granit Shala	http://boxrec.com/en/proboxer/815820	815820	1	22	6	0	0
291	291	Mike Delshaun Ford	http://boxrec.com/en/proboxer/794616	794616	1	32	6	1	0
292	292	David Abraham	http://boxrec.com/en/proboxer/707482	707482	1	33	7	0	0
293	293	Pedro Julio Rodriguez	http://boxrec.com/en/proboxer/527975	527975	1	33	23	6	0
294	294	Leon Gavanas	http://boxrec.com/en/proboxer/831885	831885	1	21	4	0	0
295	295	Seung Jun Lee	http://boxrec.com/en/proboxer/885899	885899	1	26	1	0	0
296	296	Edi Delibaltaoglu	http://boxrec.com/en/proboxer/734673	734673	1	34	6	5	0
297	297	Marko Radonjic	http://boxrec.com/en/proboxer/804497	804497	1	29	20	0	0
298	298	Panuve Helu	http://boxrec.com/en/proboxer/718422	718422	1	24	11	2	1
299	299	Benjamin Adegbuyi	http://boxrec.com/en/proboxer/818005	818005	1	34	4	0	0
300	300	Blerim Hajdari	http://boxrec.com/en/proboxer/725440	725440	1	31	7	0	1
301	301	Abdulkerim Edilov	http://boxrec.com/en/proboxer/898835	898835	1	27	1	0	0
302	302	Adam Dyczka	http://boxrec.com/en/proboxer/891023	891023	1	28	1	0	0
303	303	Justice Siliga	http://boxrec.com/en/proboxer/562854	562854	1	\N	8	7	0
304	304	Andrew Chatman	http://boxrec.com/en/proboxer/862156	862156	1	24	1	0	0
305	305	Mauricio Junker*	http://boxrec.com/en/proboxer/793327	793327	1	33	3	1	0
306	306	Pedro Otas	http://boxrec.com/en/proboxer/234455	234455	1	41	32	5	1
307	307	Zakaria Azzouzi	http://boxrec.com/en/proboxer/455058	455058	1	33	14	4	2
308	308	Kevin Nicolas Espindola	http://boxrec.com/en/proboxer/815017	815017	1	22	5	1	0
309	309	Robert Szercsik	http://boxrec.com/en/proboxer/869869	869869	1	40	1	0	0
310	310	Boldizsar Balazs Czagler	http://boxrec.com/en/proboxer/854456	854456	1	26	2	1	0
311	311	James Wilson	http://boxrec.com/en/proboxer/795218	795218	1	32	7	0	1
312	312	Corey Barlow	http://boxrec.com/en/proboxer/752845	752845	1	32	3	4	2
313	313	Rafael Rios	http://boxrec.com/en/proboxer/694474	694474	1	34	9	2	0
314	314	Rodney Moore	http://boxrec.com/en/proboxer/63571	63571	1	43	20	18	2
315	315	Kertson Manswell	http://boxrec.com/en/proboxer/263525	263525	1	42	25	12	0
316	316	Saul Farah*	http://boxrec.com/en/proboxer/288089	288089	1	36	70	24	3
317	317	Tian Fick	http://boxrec.com/en/proboxer/804062	804062	1	35	8	0	0
318	318	Ricardo Humberto Ramirez	http://boxrec.com/en/proboxer/322677	322677	1	39	14	6	0
319	319	Marios Kollias	http://boxrec.com/en/proboxer/703004	703004	1	28	5	2	1
320	320	Hasan Kurnaz	http://boxrec.com/en/proboxer/699542	699542	1	31	5	6	0
321	321	Bradley Hamil	http://boxrec.com/en/proboxer/769548	769548	1	29	4	3	0
322	322	Irineu Beato Costa Junior	http://boxrec.com/en/proboxer/530280	530280	1	39	19	11	0
323	323	Jose Vazquez	http://boxrec.com/en/proboxer/622298	622298	1	29	6	4	1
324	324	Emir Ahmatovic	http://boxrec.com/en/proboxer/790662	790662	1	32	7	0	0
325	325	Christian Mariscal	http://boxrec.com/en/proboxer/770131	770131	1	39	13	4	0
326	326	Christian Larrondo	http://boxrec.com/en/proboxer/724458	724458	1	31	6	4	1
327	327	Leandro Rufino	http://boxrec.com/en/proboxer/625918	625918	1	43	6	1	1
328	328	Ben Sosoli	http://boxrec.com/en/proboxer/750301	750301	1	29	3	4	0
329	329	Richard Lartey	http://boxrec.com/en/proboxer/640243	640243	1	\N	14	2	0
330	330	Mahammadrasul Majidov	http://boxrec.com/en/proboxer/851449	851449	1	33	1	0	0
331	331	Paul Gallen	http://boxrec.com/en/proboxer/675567	675567	1	38	9	0	0
332	332	Clayton Laurent Jr	http://boxrec.com/en/proboxer/803600	803600	1	29	3	1	0
333	333	Danny Williams	http://boxrec.com/en/proboxer/6522	6522	1	46	53	28	0
334	334	Sung Min Lee	http://boxrec.com/en/proboxer/798658	798658	1	29	7	1	0
335	335	Raymond Ochieng	http://boxrec.com/en/proboxer/210846	210846	1	42	26	24	3
336	336	Fabio Maldonado	http://boxrec.com/en/proboxer/171565	171565	1	39	26	3	0
337	337	Radek Varak	http://boxrec.com/en/proboxer/689903	689903	1	42	6	8	0
338	338	Tair Kelekhsaev	http://boxrec.com/en/proboxer/819922	819922	1	25	6	0	0
339	339	Mourad Omar	http://boxrec.com/en/proboxer/814714	814714	1	24	6	2	0
340	340	Knife Didier*	http://boxrec.com/en/proboxer/769708	769708	1	40	6	4	0
341	341	Pablo Matias Magrini	http://boxrec.com/en/proboxer/513390	513390	1	40	19	6	1
342	342	Emilio Ezequiel Zarate	http://boxrec.com/en/proboxer/452366	452366	1	37	21	22	3
343	343	David Spilmont	http://boxrec.com/en/proboxer/646520	646520	1	28	10	4	0
344	344	Rashid Akzhigitov	http://boxrec.com/en/proboxer/705174	705174	1	36	8	0	0
345	345	Anthony Caputo Smith	http://boxrec.com/en/proboxer/492678	492678	1	34	16	9	0
346	346	David Howe	http://boxrec.com/en/proboxer/467783	467783	1	39	14	11	0
347	347	Adam Stewart*	http://boxrec.com/en/proboxer/750008	750008	1	30	8	0	1
348	348	Abigail Soto	http://boxrec.com/en/proboxer/738733	738733	1	32	12	0	1
349	349	Nahuel Collosi	http://boxrec.com/en/proboxer/773827	773827	1	\N	6	1	0
350	350	Miljan Rovcanin	http://boxrec.com/en/proboxer/607373	607373	1	25	20	2	0
351	351	Ali Kiydin	http://boxrec.com/en/proboxer/793301	793301	1	28	8	1	0
352	352	Laszlo L Fekete	http://boxrec.com/en/proboxer/798633	798633	1	32	4	2	0
353	353	Dorian Darch*	http://boxrec.com/en/proboxer/576152	576152	1	35	12	10	1
354	354	Anthony Hollaway	http://boxrec.com/en/proboxer/870953	870953	1	25	1	1	0
355	355	Carlouse Welch	http://boxrec.com/en/proboxer/808687	808687	1	39	10	2	1
356	356	Danny Rio*	http://boxrec.com/en/proboxer/759461	759461	1	28	4	3	2
357	357	Roney Hines*	http://boxrec.com/en/proboxer/839362	839362	1	24	7	0	0
358	358	Chris Norrad	http://boxrec.com/en/proboxer/499606	499606	1	35	17	1	0
359	359	Ed Fountain	http://boxrec.com/en/proboxer/614789	614789	1	30	12	7	0
360	360	John Hopoate*	http://boxrec.com/en/proboxer/358180	358180	1	44	12	6	0
361	361	Michael Marrone	http://boxrec.com/en/proboxer/241087	241087	1	34	21	11	0
362	362	Jone Volau	http://boxrec.com/en/proboxer/734652	734652	1	36	5	5	0
363	363	Sanel Papic	http://boxrec.com/en/proboxer/507716	507716	1	41	24	0	0
364	364	Robin Dupre	http://boxrec.com/en/proboxer/629731	629731	1	32	14	2	0
365	365	Hugo Trujillo*	http://boxrec.com/en/proboxer/639843	639843	1	28	4	2	1
366	366	Wilmer Vasquez	http://boxrec.com/en/proboxer/379643	379643	1	38	11	0	2
367	367	Stacy Frazier	http://boxrec.com/en/proboxer/25893	25893	1	49	16	22	0
368	368	Marino Goles	http://boxrec.com/en/proboxer/486350	486350	1	39	24	10	0
369	369	Dominic Vial	http://boxrec.com/en/proboxer/795659	795659	1	26	4	0	0
370	370	Grover Young	http://boxrec.com/en/proboxer/514335	514335	1	30	13	27	3
371	371	Ebenezer Tetteh*	http://boxrec.com/en/proboxer/611196	611196	1	31	19	0	0
372	372	Victor Daniel	http://boxrec.com/en/proboxer/768219	768219	1	27	4	0	0
373	373	Alexandros Kartozia	http://boxrec.com/en/proboxer/686975	686975	1	\N	7	1	1
374	374	Dell Long	http://boxrec.com/en/proboxer/716182	716182	1	29	6	5	2
375	375	Pablo Diaz	http://boxrec.com/en/proboxer/737862	737862	1	\N	6	6	0
376	376	Epifanio Mendoza	http://boxrec.com/en/proboxer/139128	139128	1	43	43	30	1
377	377	Colin Wilson	http://boxrec.com/en/proboxer/16516	16516	1	47	35	33	1
378	378	Sam Shewmaker*	http://boxrec.com/en/proboxer/814340	814340	1	35	5	1	0
379	379	Denis Murselovic	http://boxrec.com/en/proboxer/878818	878818	1	24	1	0	0
380	380	Quincy Palmer*	http://boxrec.com/en/proboxer/542832	542832	1	38	10	10	0
381	381	Willy Kyakonye	http://boxrec.com/en/proboxer/793176	793176	1	25	2	0	0
382	382	Sebastian Tuchscherer	http://boxrec.com/en/proboxer/476208	476208	1	33	15	17	0
383	383	Morris Okolla*	http://boxrec.com/en/proboxer/588089	588089	1	37	11	3	0
384	384	Vladimeri Khurtsia	http://boxrec.com/en/proboxer/852838	852838	1	26	1	1	0
385	385	Milans Volkovs	http://boxrec.com/en/proboxer/832460	832460	1	19	3	2	1
386	386	Hunter Sam	http://boxrec.com/en/proboxer/467186	467186	1	35	11	13	2
387	387	Juan Guajardo	http://boxrec.com/en/proboxer/637731	637731	1	30	5	6	1
388	388	Tamas Bajzath	http://boxrec.com/en/proboxer/602617	602617	1	36	12	23	2
389	389	Karim Berredjem	http://boxrec.com/en/proboxer/678845	678845	1	33	9	7	0
390	390	Gyula Bozai	http://boxrec.com/en/proboxer/443306	443306	1	45	16	10	4
391	391	Filimoni Taganikula*	http://boxrec.com/en/proboxer/733214	733214	1	38	5	3	0
392	392	Pietro Cappelli	http://boxrec.com/en/proboxer/830258	830258	1	35	1	1	0
393	393	Bernardo Marquez	http://boxrec.com/en/proboxer/715105	715105	1	26	11	4	1
394	394	Rudolf Jozic	http://boxrec.com/en/proboxer/751408	751408	1	27	4	3	0
395	395	Junior Pati*	http://boxrec.com/en/proboxer/271832	271832	1	37	12	23	1
396	396	Edson Cesar Antonio	http://boxrec.com/en/proboxer/244827	244827	1	42	40	9	1
397	397	Derek Cardenas	http://boxrec.com/en/proboxer/800207	800207	1	21	5	5	0
398	398	Richard Carmack	http://boxrec.com/en/proboxer/372266	372266	1	31	15	15	1
399	399	George Thompson	http://boxrec.com/en/proboxer/608194	608194	1	43	3	3	0
400	400	Miles Willington*	http://boxrec.com/en/proboxer/846778	846778	1	28	1	6	0
401	401	Markus Fuckner	http://boxrec.com/en/proboxer/700192	700192	1	48	11	0	0
402	402	Luis Pascual	http://boxrec.com/en/proboxer/607852	607852	0	27	14	5	0
403	403	Roger Izonritei	http://boxrec.com/en/proboxer/23930	23930	0	44	12	10	1
404	404	Abraham Pascual	http://boxrec.com/en/proboxer/714703	714703	0	21	12	7	0
405	405	Livin Castillo	http://boxrec.com/en/proboxer/25646	25646	0	43	16	14	0
406	406	Yohan Banks	http://boxrec.com/en/proboxer/427528	427528	0	44	9	12	4
407	407	Abel Pesut*	http://boxrec.com/en/proboxer/804155	804155	0	29	7	0	0
408	408	Nate Heaven	http://boxrec.com/en/proboxer/568581	568581	0	34	9	3	0
409	409	Kye Brooks	http://boxrec.com/en/proboxer/815823	815823	0	24	4	0	0
410	410	Sergio Romano	http://boxrec.com/en/proboxer/546988	546988	0	39	10	13	3
411	411	Ryu Ueda	http://boxrec.com/en/proboxer/686774	686774	0	27	8	1	1
412	412	Shidevin Brown	http://boxrec.com/en/proboxer/18135	18135	0	46	3	5	0
413	413	Daniel Balabula	http://boxrec.com/en/proboxer/841507	841507	0	29	5	0	0
414	414	Nikolas Charalampous	http://boxrec.com/en/proboxer/648971	648971	0	26	18	3	0
415	415	Carlos Carreon	http://boxrec.com/en/proboxer/773488	773488	0	24	7	6	0
416	416	Hector Perez*	http://boxrec.com/en/proboxer/680059	680059	0	28	5	2	0
417	417	James Jackson	http://boxrec.com/en/proboxer/810496	810496	0	22	4	0	1
418	418	Tristan James	http://boxrec.com/en/proboxer/788768	788768	0	32	3	3	2
419	419	Omar McKayle	http://boxrec.com/en/proboxer/834185	834185	0	34	1	1	0
420	420	Tony Attallah	http://boxrec.com/en/proboxer/815810	815810	0	23	3	0	0
421	421	Kenny Lemos	http://boxrec.com/en/proboxer/108740	108740	0	42	14	11	2
422	422	Deshawn Ross*	http://boxrec.com/en/proboxer/863712	863712	0	29	1	0	0
423	423	Paul Koon	http://boxrec.com/en/proboxer/700182	700182	0	33	4	0	0
424	424	Jurij Frank	http://boxrec.com/en/proboxer/511099	511099	0	35	13	4	0
425	425	Eriks Kalasnikovs	http://boxrec.com/en/proboxer/696022	696022	0	29	9	8	1
426	426	Huenkar Polat*	http://boxrec.com/en/proboxer/837860	837860	0	19	7	2	0
427	427	Gennadi Mentsikainen	http://boxrec.com/en/proboxer/738057	738057	0	28	6	4	0
428	428	Igor Mihaljevic*	http://boxrec.com/en/proboxer/716822	716822	0	40	5	14	0
429	429	Mladen Manev	http://boxrec.com/en/proboxer/759881	759881	0	30	2	5	0
430	430	Toni Thes	http://boxrec.com/en/proboxer/549080	549080	0	33	15	8	1
431	431	Jean Carlos Mina	http://boxrec.com/en/proboxer/770930	770930	0	\N	7	1	0
432	432	Tornike Puritchamiashvili	http://boxrec.com/en/proboxer/729484	729484	0	29	4	13	0
433	433	Christopher Lovejoy	http://boxrec.com/en/proboxer/746640	746640	0	35	18	0	0
434	434	Laszlo Toth	http://boxrec.com/en/proboxer/520747	520747	0	43	21	20	0
435	435	Cristian Oviedo	http://boxrec.com/en/proboxer/889757	889757	0	21	1	0	0
436	436	Chris Vendola	http://boxrec.com/en/proboxer/387735	387735	0	50	11	6	0
437	437	Michael Pareo	http://boxrec.com/en/proboxer/781940	781940	0	31	6	9	1
438	438	Marquis Valentine	http://boxrec.com/en/proboxer/768017	768017	0	26	5	6	0
439	439	Aaron Chavers	http://boxrec.com/en/proboxer/709544	709544	0	38	8	9	1
440	440	Nick Guivas	http://boxrec.com/en/proboxer/591190	591190	0	40	14	10	3
441	441	Sam Agustin Ruiz	http://boxrec.com/en/proboxer/773652	773652	0	\N	6	0	1
442	442	Oscar Torrez	http://boxrec.com/en/proboxer/828124	828124	0	28	7	0	0
443	443	Zoltan Csala	http://boxrec.com/en/proboxer/693220	693220	0	42	12	21	0
444	444	Jan Hrebik	http://boxrec.com/en/proboxer/798974	798974	0	28	2	14	0
445	445	Travis Clark	http://boxrec.com/en/proboxer/500433	500433	0	40	14	2	0
446	446	Junior Maletino Iakopo	http://boxrec.com/en/proboxer/534011	534011	0	44	3	20	2
447	447	Aaron Singleton	http://boxrec.com/en/proboxer/823942	823942	0	26	3	1	0
448	448	Ozcan Cetinkaya*	http://boxrec.com/en/proboxer/166192	166192	0	41	30	19	2
449	449	Santiago Martinez Perez	http://boxrec.com/en/proboxer/819906	819906	0	34	4	3	0
450	450	Elvis de Jesus Garcia	http://boxrec.com/en/proboxer/809960	809960	0	\N	6	0	0
451	451	Patrick Kennedy	http://boxrec.com/en/proboxer/51947	51947	0	45	15	4	1
452	452	Ruben Wolf	http://boxrec.com/en/proboxer/872151	872151	0	33	3	0	0
453	453	Luis Jose Marin Garcia	http://boxrec.com/en/proboxer/813522	813522	0	\N	5	2	0
454	454	Larry Knight*	http://boxrec.com/en/proboxer/711142	711142	0	27	3	20	1
455	455	Joshua Pretorius	http://boxrec.com/en/proboxer/801318	801318	0	26	6	4	0
456	456	Brandon Spencer*	http://boxrec.com/en/proboxer/555645	555645	0	35	7	18	2
457	457	Hugo Lomeli	http://boxrec.com/en/proboxer/97395	97395	0	37	21	14	1
458	458	Lenier Pero	http://boxrec.com/en/proboxer/852701	852701	0	26	3	0	0
459	459	Luis David Rodriguez Aguilar	http://boxrec.com/en/proboxer/586357	586357	0	24	6	25	2
460	460	Gueney Artak	http://boxrec.com/en/proboxer/828775	828775	0	30	6	0	0
461	461	Tamaz Zadishvili	http://boxrec.com/en/proboxer/789943	789943	0	26	4	13	1
462	462	Deon Ronny Hale	http://boxrec.com/en/proboxer/548881	548881	0	36	5	13	1
463	463	Sonny Conto*	http://boxrec.com/en/proboxer/861334	861334	0	23	4	0	0
464	464	Guillermo Casas*	http://boxrec.com/en/proboxer/766139	766139	0	25	8	2	1
465	465	German Skobenko	http://boxrec.com/en/proboxer/710497	710497	0	26	5	4	2
466	466	Haruna Osumanu*	http://boxrec.com/en/proboxer/798934	798934	0	39	11	0	0
467	467	Pavel Doroshilov	http://boxrec.com/en/proboxer/694305	694305	0	25	3	2	0
468	468	Ernest Reyna*	http://boxrec.com/en/proboxer/644990	644990	0	32	10	6	0
469	469	King Mou	http://boxrec.com/en/proboxer/824395	824395	0	26	2	0	1
470	470	Brandon Carmack	http://boxrec.com/en/proboxer/603109	603109	0	27	5	0	2
471	471	Guillermo Del Rio	http://boxrec.com/en/proboxer/697010	697010	0	30	2	3	1
472	472	Arsene Fosso*	http://boxrec.com/en/proboxer/854269	854269	0	36	2	0	0
473	473	Eric Pen	http://boxrec.com/en/proboxer/847104	847104	0	27	4	0	0
474	474	Marlon Williams	http://boxrec.com/en/proboxer/718698	718698	0	35	5	1	0
475	475	Josh Quailey	http://boxrec.com/en/proboxer/814592	814592	0	32	1	2	0
476	476	Jose Miguel Rodriguez Berrio	http://boxrec.com/en/proboxer/87969	87969	0	44	21	15	0
477	477	Jonathan Palata*	http://boxrec.com/en/proboxer/831965	831965	0	30	6	0	0
478	478	Dante Stone	http://boxrec.com/en/proboxer/825807	825807	0	25	3	1	0
479	479	Jonathan Tjandra	http://boxrec.com/en/proboxer/876578	876578	0	\N	1	0	0
480	480	Wilfrido Leal*	http://boxrec.com/en/proboxer/327859	327859	0	31	10	15	3
481	481	Ryan Watson	http://boxrec.com/en/proboxer/741536	741536	0	26	4	1	2
482	482	Matthew Greer*	http://boxrec.com/en/proboxer/151893	151893	0	42	16	24	0
483	483	Rubin Williams	http://boxrec.com/en/proboxer/58878	58878	0	43	29	33	1
484	484	Matt McKinney	http://boxrec.com/en/proboxer/665387	665387	0	38	6	3	2
485	485	Mehdi Ben Hamira	http://boxrec.com/en/proboxer/834822	834822	0	\N	3	0	0
486	486	Anar Mirzayev	http://boxrec.com/en/proboxer/779423	779423	0	36	4	1	0
487	487	Daso Simeunovic	http://boxrec.com/en/proboxer/815597	815597	0	22	3	4	0
488	488	Jesus Francisco Soto*	http://boxrec.com/en/proboxer/835913	835913	0	29	4	1	0
489	489	Moises Droz	http://boxrec.com/en/proboxer/32394	32394	0	48	14	10	0
490	490	Jaudiel Zepeda	http://boxrec.com/en/proboxer/223118	223118	0	36	13	28	1
491	491	Kahlil Smoot*	http://boxrec.com/en/proboxer/858103	858103	0	35	6	0	0
492	492	Leroy Childs	http://boxrec.com/en/proboxer/137288	137288	0	41	13	3	0
493	493	Angelo Rizzo	http://boxrec.com/en/proboxer/805343	805343	0	36	5	1	1
494	494	Travis Fulton*	http://boxrec.com/en/proboxer/18561	18561	0	42	25	48	2
495	495	Brendan Barrett	http://boxrec.com/en/proboxer/491140	491140	0	37	7	3	2
496	496	Shane Mumford	http://boxrec.com/en/proboxer/836576	836576	0	33	2	0	0
497	497	Gogita Gorgiladze	http://boxrec.com/en/proboxer/571146	571146	0	26	6	31	0
498	498	Andras Csomor	http://boxrec.com/en/proboxer/642242	642242	0	31	18	25	2
499	499	Miguel Cubos	http://boxrec.com/en/proboxer/442136	442136	0	30	13	21	1
500	500	Alphonce Mchumiatumbo	http://boxrec.com/en/proboxer/565922	565922	0	32	14	6	1
501	501	Ewerton Lemos Polaquini*	http://boxrec.com/en/proboxer/887582	887582	0	25	1	0	0
502	502	John Brand	http://boxrec.com/en/proboxer/806636	806636	0	25	5	0	0
503	503	Dieuly Aristilde	http://boxrec.com/en/proboxer/419308	419308	0	43	9	10	0
504	504	Michael Speed Sigarlaki	http://boxrec.com/en/proboxer/423922	423922	0	30	16	20	2
505	505	Oswaldo Ortega*	http://boxrec.com/en/proboxer/690502	690502	0	36	3	12	0
506	506	Nicolas Wamba*	http://boxrec.com/en/proboxer/854062	854062	0	31	3	0	0
507	507	John Kimuanga Massaw	http://boxrec.com/en/proboxer/443196	443196	0	40	3	4	0
508	508	Patrick Thunder Taito*	http://boxrec.com/en/proboxer/850171	850171	0	29	1	3	1
509	509	Brayan Asael Guzman	http://boxrec.com/en/proboxer/800206	800206	0	24	4	0	0
510	510	Tyrrell Anthony Herndon	http://boxrec.com/en/proboxer/738273	738273	0	32	12	4	0
511	511	Walter Palacios	http://boxrec.com/en/proboxer/45916	45916	0	38	20	20	2
512	512	Joris Bichet	http://boxrec.com/en/proboxer/854053	854053	0	\N	0	1	0
513	513	Alen Babic	http://boxrec.com/en/proboxer/852032	852032	0	28	2	0	0
514	514	Jens Tietze	http://boxrec.com/en/proboxer/664446	664446	0	43	14	1	0
515	515	Jody Lee Linthicum	http://boxrec.com/en/proboxer/386151	386151	0	31	2	8	0
516	516	Luke Sutherland	http://boxrec.com/en/proboxer/804761	804761	0	35	3	2	0
517	517	Jacek Chruslicki	http://boxrec.com/en/proboxer/645692	645692	0	33	5	0	0
518	518	Celso Pinzon	http://boxrec.com/en/proboxer/553454	553454	0	38	5	6	1
519	519	Hector Hodge	http://boxrec.com/en/proboxer/606192	606192	0	40	3	4	0
520	520	James Singh	http://boxrec.com/en/proboxer/833307	833307	0	24	4	2	0
521	521	Ferenc Bartus	http://boxrec.com/en/proboxer/821587	821587	0	33	4	2	0
522	522	Richard Nemeth	http://boxrec.com/en/proboxer/846479	846479	0	26	4	1	0
523	523	Jorge Sevilla Acosta	http://boxrec.com/en/proboxer/871390	871390	0	20	2	0	0
524	524	Taras Neudachyn	http://boxrec.com/en/proboxer/856379	856379	0	27	3	0	0
525	525	Matt Cameron	http://boxrec.com/en/proboxer/788769	788769	0	35	3	1	2
526	526	Luke Lyons	http://boxrec.com/en/proboxer/758297	758297	0	34	5	2	1
527	527	Madars Trivols	http://boxrec.com/en/proboxer/831179	831179	0	33	1	4	0
528	528	Cristian Galvez	http://boxrec.com/en/proboxer/496545	496545	0	38	17	4	0
529	529	Danny Whitaker*	http://boxrec.com/en/proboxer/888880	888880	0	\N	1	0	0
530	530	Mario Jagatic	http://boxrec.com/en/proboxer/780373	780373	0	35	0	2	0
531	531	Zaur Aylarov	http://boxrec.com/en/proboxer/827761	827761	0	28	6	0	0
532	532	Edson Roberto Dos Santos Borges	http://boxrec.com/en/proboxer/479036	479036	0	45	30	4	2
533	533	George Harris	http://boxrec.com/en/proboxer/849161	849161	0	27	4	0	0
534	534	Daniel Cota	http://boxrec.com/en/proboxer/322276	322276	0	\N	20	8	1
535	535	Maksim Kusnezow	http://boxrec.com/en/proboxer/788264	788264	0	35	5	0	0
536	536	Maksym Pedyura	http://boxrec.com/en/proboxer/365148	365148	0	42	14	15	1
537	537	Jonathan Foreman	http://boxrec.com/en/proboxer/808692	808692	0	31	5	1	0
538	538	Engin Solmaz	http://boxrec.com/en/proboxer/36415	36415	0	47	7	46	3
539	539	Raphael Akpejiori*	http://boxrec.com/en/proboxer/840891	840891	0	28	5	0	0
540	540	Samuel Miller	http://boxrec.com/en/proboxer/225646	225646	0	40	33	21	0
541	541	Misael Sanchez*	http://boxrec.com/en/proboxer/729367	729367	0	25	12	13	7
542	542	Jinner Guerrero	http://boxrec.com/en/proboxer/543491	543491	0	37	8	12	0
543	543	Andrea Pesce	http://boxrec.com/en/proboxer/611134	611134	0	34	6	7	3
544	544	Maurice Jones	http://boxrec.com/en/proboxer/713809	713809	0	26	6	0	0
545	545	Serdar Avci	http://boxrec.com/en/proboxer/885318	885318	0	34	2	0	0
546	546	Moses Johnson	http://boxrec.com/en/proboxer/829185	829185	0	26	4	0	0
547	547	Michael Matulis	http://boxrec.com/en/proboxer/821067	821067	0	26	5	1	0
548	548	Vladan Babic	http://boxrec.com/en/proboxer/838909	838909	0	28	3	0	0
549	549	Vincent Muziri	http://boxrec.com/en/proboxer/855399	855399	0	37	4	0	0
550	550	Marco Antonio Canedo	http://boxrec.com/en/proboxer/841625	841625	0	28	2	0	0
551	551	David Wilken	http://boxrec.com/en/proboxer/697850	697850	0	40	12	1	0
552	552	Mario Rodriguez	http://boxrec.com/en/proboxer/788764	788764	0	\N	4	0	2
553	553	Paul Zummach	http://boxrec.com/en/proboxer/814319	814319	0	28	4	2	0
554	554	Wilhelm Nebe	http://boxrec.com/en/proboxer/858578	858578	0	\N	3	0	0
555	555	Alejandro Garduno	http://boxrec.com/en/proboxer/766140	766140	0	20	2	15	2
556	556	Ernesto Beltran	http://boxrec.com/en/proboxer/644639	644639	0	25	13	5	0
557	557	Juan Abel Garza	http://boxrec.com/en/proboxer/816208	816208	0	26	3	0	0
558	558	Sung Jin Kwak	http://boxrec.com/en/proboxer/847972	847972	0	41	4	0	0
559	559	Wayman Carter	http://boxrec.com/en/proboxer/770658	770658	0	41	3	5	1
560	560	Miguel Angel Flores Gomez	http://boxrec.com/en/proboxer/724508	724508	0	34	2	8	2
561	561	Jose Castro	http://boxrec.com/en/proboxer/850724	850724	0	\N	4	1	0
562	562	Ben Hanebuth	http://boxrec.com/en/proboxer/896856	896856	0	\N	1	0	0
563	563	Troy Humbertson	http://boxrec.com/en/proboxer/820382	820382	0	\N	3	1	0
564	564	Patrick Mailata	http://boxrec.com/en/proboxer/850800	850800	0	24	2	0	0
565	565	Antonio Johnson	http://boxrec.com/en/proboxer/779007	779007	0	28	7	3	1
566	566	Roman Huerta	http://boxrec.com/en/proboxer/857475	857475	0	27	2	0	0
567	567	Steve Henderson	http://boxrec.com/en/proboxer/850246	850246	0	36	2	0	0
568	568	Andy Hoeschler	http://boxrec.com/en/proboxer/879851	879851	0	34	2	0	0
569	569	Amnin Omerika	http://boxrec.com/en/proboxer/891012	891012	0	32	2	0	0
570	570	Giorgi Tamazashvili	http://boxrec.com/en/proboxer/798359	798359	0	24	2	5	0
571	571	Ante Tolic	http://boxrec.com/en/proboxer/853761	853761	0	25	1	0	0
572	572	Jamie Bogovic	http://boxrec.com/en/proboxer/521750	521750	0	31	6	1	0
573	573	Waldo Cortes Acosta*	http://boxrec.com/en/proboxer/801439	801439	0	27	4	2	0
574	574	Christopher Martinez	http://boxrec.com/en/proboxer/856196	856196	0	48	1	0	0
575	575	Eduardo Salazar	http://boxrec.com/en/proboxer/872325	872325	0	\N	1	0	0
576	576	Randy Wachacha	http://boxrec.com/en/proboxer/826122	826122	0	35	1	1	0
577	577	Santino Turnbow	http://boxrec.com/en/proboxer/772738	772738	0	37	4	4	0
578	578	Ryan Williams*	http://boxrec.com/en/proboxer/761002	761002	0	\N	1	2	0
579	579	Petteri Kiviniemi	http://boxrec.com/en/proboxer/862598	862598	0	38	1	0	0
580	580	Ramon Olivas	http://boxrec.com/en/proboxer/582216	582216	0	28	14	14	0
581	581	Shkelqim Ademaj	http://boxrec.com/en/proboxer/786166	786166	0	28	1	2	0
582	582	Julian Esteban Ruiz	http://boxrec.com/en/proboxer/430590	430590	0	42	11	9	1
583	583	Lucian Atana*	http://boxrec.com/en/proboxer/885815	885815	0	\N	1	0	0
584	584	Dominik Musil	http://boxrec.com/en/proboxer/827883	827883	0	28	4	3	0
585	585	Eduardo Vitela	http://boxrec.com/en/proboxer/759752	759752	0	33	3	4	0
586	586	David Koswara	http://boxrec.com/en/proboxer/48938	48938	0	42	12	16	2
587	587	Abdulnaser Delalic	http://boxrec.com/en/proboxer/772806	772806	0	27	5	5	0
588	588	Davit Gogishvili	http://boxrec.com/en/proboxer/374557	374557	0	30	7	13	0
589	589	Francois Russell*	http://boxrec.com/en/proboxer/587882	587882	0	27	3	32	0
590	590	Soo Min Lee	http://boxrec.com/en/proboxer/856041	856041	0	20	1	2	0
591	591	Asad Adrovic	http://boxrec.com/en/proboxer/789080	789080	0	35	1	5	0
592	592	Norman Neely	http://boxrec.com/en/proboxer/870002	870002	0	29	3	0	0
593	593	Agbonson Yaovi	http://boxrec.com/en/proboxer/823001	823001	0	42	2	0	0
594	594	Alick Gogodo	http://boxrec.com/en/proboxer/763311	763311	0	28	4	4	0
595	595	Kenneth Bishop	http://boxrec.com/en/proboxer/655253	655253	0	45	2	3	1
596	596	Nuhu Azuma	http://boxrec.com/en/proboxer/573647	573647	0	34	9	3	0
597	597	Jesus Alberto Martinez Torres	http://boxrec.com/en/proboxer/529619	529619	0	29	22	13	1
598	598	Alban Galonnier	http://boxrec.com/en/proboxer/480480	480480	0	38	4	12	1
599	599	Johnny Molina	http://boxrec.com/en/proboxer/790033	790033	0	42	8	3	1
600	600	Muhamet Hajdaraj	http://boxrec.com/en/proboxer/829546	829546	0	26	2	0	0
601	601	Semisi Kalu*	http://boxrec.com/en/proboxer/852721	852721	0	\N	1	0	1
602	602	Igor Adiel Macedo da Silva	http://boxrec.com/en/proboxer/818588	818588	0	26	7	0	0
603	603	Eddie Jones	http://boxrec.com/en/proboxer/453557	453557	0	33	6	4	0
604	604	Taran Willett	http://boxrec.com/en/proboxer/817516	817516	0	27	4	0	0
605	605	Pedro Martinez	http://boxrec.com/en/proboxer/728112	728112	0	35	10	2	0
606	606	Khalid Smith	http://boxrec.com/en/proboxer/841578	841578	0	27	3	0	0
607	607	Antwaun Taylor*	http://boxrec.com/en/proboxer/700064	700064	0	34	4	12	0
608	608	Joseph White	http://boxrec.com/en/proboxer/734308	734308	0	27	0	3	2
609	609	Giorgi Urjumelashvili	http://boxrec.com/en/proboxer/781923	781923	0	24	4	7	0
610	610	Eduardo Rodrigo Pacheco	http://boxrec.com/en/proboxer/654097	654097	0	33	4	5	2
611	611	Ishmael Oladipo	http://boxrec.com/en/proboxer/838984	838984	0	31	1	0	1
612	612	Edgar Ramirez	http://boxrec.com/en/proboxer/758695	758695	0	24	3	1	0
613	613	Patrick Schaefer	http://boxrec.com/en/proboxer/871884	871884	0	25	3	0	0
614	614	Ariel Jimenez	http://boxrec.com/en/proboxer/818434	818434	0	\N	1	1	0
615	615	Markus Knoop	http://boxrec.com/en/proboxer/880180	880180	0	40	2	0	1
616	616	Vincenzo Febbo	http://boxrec.com/en/proboxer/842266	842266	0	29	3	1	0
617	617	Thomas Jones	http://boxrec.com/en/proboxer/658465	658465	0	29	5	8	0
618	618	Che St John	http://boxrec.com/en/proboxer/805815	805815	0	\N	5	0	0
619	619	Kendrick Houston	http://boxrec.com/en/proboxer/722552	722552	0	29	1	5	2
620	620	Jamie Anderson	http://boxrec.com/en/proboxer/829743	829743	0	33	1	1	0
621	621	Paddy Nevin*	http://boxrec.com/en/proboxer/847132	847132	0	\N	2	0	0
622	622	Shaun Seymore	http://boxrec.com/en/proboxer/634047	634047	0	35	9	0	1
623	623	Corey Williams	http://boxrec.com/en/proboxer/250412	250412	0	40	6	10	2
624	624	Carlos Sandoval*	http://boxrec.com/en/proboxer/64803	64803	0	41	10	16	1
625	625	Diogo da Conceicao Oliveira	http://boxrec.com/en/proboxer/807659	807659	0	29	2	5	0
626	626	Tim Bronson	http://boxrec.com/en/proboxer/661630	661630	0	34	3	11	0
627	627	Zheko Zhekov	http://boxrec.com/en/proboxer/759457	759457	0	29	3	5	1
628	628	Satria Antasena	http://boxrec.com/en/proboxer/391565	391565	0	33	8	15	0
629	629	Davmond Carter	http://boxrec.com/en/proboxer/847238	847238	0	25	1	2	1
630	630	Michal Lukacik	http://boxrec.com/en/proboxer/846489	846489	0	31	2	3	1
631	631	Cody Terry East	http://boxrec.com/en/proboxer/646593	646593	0	31	3	1	0
632	632	Ken Frank	http://boxrec.com/en/proboxer/510565	510565	0	41	6	7	1
633	633	Bernard Adie	http://boxrec.com/en/proboxer/538895	538895	0	46	16	8	0
634	634	Edward Hood	http://boxrec.com/en/proboxer/804531	804531	0	25	5	1	0
635	635	Ventura Vazquez	http://boxrec.com/en/proboxer/696054	696054	0	\N	5	0	1
636	636	Kizito Ruhamnye	http://boxrec.com/en/proboxer/486781	486781	0	33	3	6	0
637	637	Morgan Dessaux	http://boxrec.com/en/proboxer/700557	700557	0	37	5	7	0
638	638	Enrique Gastelum	http://boxrec.com/en/proboxer/690504	690504	0	33	8	3	0
639	639	Anthony Martinez	http://boxrec.com/en/proboxer/827050	827050	0	20	5	1	0
640	640	Esteban Raul Lopez	http://boxrec.com/en/proboxer/676610	676610	0	34	6	6	1
641	641	Phil Williams*	http://boxrec.com/en/proboxer/837237	837237	0	33	2	16	1
642	642	Marvin Hunt	http://boxrec.com/en/proboxer/14741	14741	0	48	14	43	1
643	643	Gilberto Matheus Domingos	http://boxrec.com/en/proboxer/492853	492853	0	33	22	10	0
644	644	Brian Imes	http://boxrec.com/en/proboxer/666282	666282	0	41	1	5	1
645	645	Sam Watt	http://boxrec.com/en/proboxer/854497	854497	0	\N	1	0	0
646	646	Juan Luis Lopez Alcaraz	http://boxrec.com/en/proboxer/512699	512699	0	35	4	27	3
647	647	Ja Sung Jo	http://boxrec.com/en/proboxer/749418	749418	0	33	3	3	0
648	648	Joel Stower	http://boxrec.com/en/proboxer/693604	693604	0	27	4	2	0
649	649	Jasmin Hasic	http://boxrec.com/en/proboxer/692460	692460	0	30	9	9	0
650	650	Sherman Artis Jr	http://boxrec.com/en/proboxer/539660	539660	0	33	3	4	0
651	651	Brett Jeffery	http://boxrec.com/en/proboxer/640461	640461	0	\N	4	2	0
652	652	Tigran Abraamyan	http://boxrec.com/en/proboxer/840038	840038	0	24	1	0	0
653	653	Gocha Mtchedlishvili	http://boxrec.com/en/proboxer/609167	609167	0	28	1	10	0
654	654	Andrew Satterfield	http://boxrec.com/en/proboxer/824404	824404	0	25	5	3	0
655	655	George Fa'avae	http://boxrec.com/en/proboxer/720238	720238	0	33	4	0	0
656	656	Nathan Bedwell	http://boxrec.com/en/proboxer/532893	532893	0	27	5	17	1
657	657	Ryan Covert*	http://boxrec.com/en/proboxer/457037	457037	0	41	2	2	0
658	658	Manuel Saldana	http://boxrec.com/en/proboxer/882994	882994	0	\N	0	0	1
659	659	George Fox*	http://boxrec.com/en/proboxer/837236	837236	0	27	2	0	0
660	660	Deniz Kozig	http://boxrec.com/en/proboxer/690217	690217	0	34	5	0	0
661	661	Chad Davis	http://boxrec.com/en/proboxer/429032	429032	0	40	5	15	0
662	662	Paolo Iannucci	http://boxrec.com/en/proboxer/572287	572287	0	32	4	4	0
663	663	Nkosi Solomon	http://boxrec.com/en/proboxer/846149	846149	0	24	1	1	0
664	664	Izim Izbaki*	http://boxrec.com/en/proboxer/855914	855914	0	24	2	0	0
665	665	Szabolcs Balazs	http://boxrec.com/en/proboxer/862985	862985	0	\N	1	0	0
666	666	Amir Elsaey	http://boxrec.com/en/proboxer/869142	869142	0	24	2	0	0
667	667	Nick Dragich	http://boxrec.com/en/proboxer/568031	568031	0	33	4	2	0
668	668	Marcelo Alejandro Chancalay	http://boxrec.com/en/proboxer/856731	856731	0	30	3	0	2
669	669	Marko Vucevic	http://boxrec.com/en/proboxer/640549	640549	0	33	5	2	0
670	670	Martin Rovcanin	http://boxrec.com/en/proboxer/652777	652777	0	49	6	0	0
671	671	Srdan Govedarica	http://boxrec.com/en/proboxer/716438	716438	0	30	7	8	0
672	672	Giovanni Rossoni	http://boxrec.com/en/proboxer/695645	695645	0	35	5	2	0
673	673	Isikeli Navuni	http://boxrec.com/en/proboxer/861607	861607	0	\N	1	1	0
674	674	Petero Qica	http://boxrec.com/en/proboxer/507168	507168	0	30	6	2	0
675	675	Osvaldo Peralta	http://boxrec.com/en/proboxer/706159	706159	0	\N	4	1	0
676	676	Saul Castro	http://boxrec.com/en/proboxer/811040	811040	0	\N	5	1	0
677	677	Davey Louis Vega Sanabria	http://boxrec.com/en/proboxer/761172	761172	0	31	5	0	0
678	678	Stefan Talabisco*	http://boxrec.com/en/proboxer/830639	830639	0	46	4	0	0
679	679	Nursultan Amanzholov	http://boxrec.com/en/proboxer/850619	850619	0	26	1	0	0
680	680	Nicoy Clarke*	http://boxrec.com/en/proboxer/794790	794790	0	38	2	4	0
681	681	Eric Schwartmann	http://boxrec.com/en/proboxer/723199	723199	0	29	6	4	0
682	682	Juan Luis Gonzalez	http://boxrec.com/en/proboxer/80635	80635	0	\N	3	23	0
683	683	Mahmoud Afia	http://boxrec.com/en/proboxer/890985	890985	0	25	1	0	0
684	684	Samir Barakovic	http://boxrec.com/en/proboxer/645507	645507	0	30	3	29	0
685	685	Rocco Nolfi	http://boxrec.com/en/proboxer/872565	872565	0	31	0	0	1
686	686	Rihards Bigis	http://boxrec.com/en/proboxer/602530	602530	0	26	14	7	0
687	687	Eric Clive Wahlin	http://boxrec.com/en/proboxer/730490	730490	0	36	5	0	0
688	688	Sergey Kalchugin	http://boxrec.com/en/proboxer/820603	820603	0	31	3	0	0
689	689	Unjel Pedford	http://boxrec.com/en/proboxer/869623	869623	0	29	4	0	0
690	690	Milen Paunov	http://boxrec.com/en/proboxer/702666	702666	0	35	5	7	0
691	691	Yamato Fujinaka	http://boxrec.com/en/proboxer/537308	537308	0	34	7	6	0
692	692	Gergely Horvath	http://boxrec.com/en/proboxer/763653	763653	0	25	7	12	0
693	693	Nihad Askalani	http://boxrec.com/en/proboxer/759664	759664	0	42	6	0	0
694	694	Lukas Wacker	http://boxrec.com/en/proboxer/872030	872030	0	32	1	0	0
695	695	Jeff King*	http://boxrec.com/en/proboxer/802873	802873	0	\N	0	3	2
696	696	Art Santore	http://boxrec.com/en/proboxer/848759	848759	0	46	1	0	0
697	697	Sergio Benjamin Vega	http://boxrec.com/en/proboxer/835518	835518	0	32	2	1	0
698	698	Jose Manuel Paredes	http://boxrec.com/en/proboxer/433177	433177	0	30	3	3	3
699	699	Jozsef Kormany	http://boxrec.com/en/proboxer/683007	683007	0	22	19	42	1
700	700	Clayton Soriano de Lyra	http://boxrec.com/en/proboxer/728032	728032	0	46	6	8	1
701	701	Alain Banongo	http://boxrec.com/en/proboxer/774852	774852	0	27	3	1	0
702	702	Elvis Verastegui Torrico*	http://boxrec.com/en/proboxer/715033	715033	0	45	8	0	0
703	703	Pawel Sowik	http://boxrec.com/en/proboxer/779809	779809	0	\N	3	2	0
704	704	Nader Tadros	http://boxrec.com/en/proboxer/802498	802498	0	23	2	1	1
705	705	Helaman Olguin	http://boxrec.com/en/proboxer/461887	461887	0	35	5	3	0
706	706	Volodymyr Katsuk	http://boxrec.com/en/proboxer/866126	866126	0	31	3	0	0
707	707	Alfredo Trevino	http://boxrec.com/en/proboxer/476234	476234	0	35	9	6	1
708	708	Julio Enrique Cuellar Cabrera	http://boxrec.com/en/proboxer/525317	525317	0	38	13	7	0
709	709	Fatih Ulusoy	http://boxrec.com/en/proboxer/725935	725935	0	37	2	0	0
710	710	Louie Darlin	http://boxrec.com/en/proboxer/707476	707476	0	30	4	0	1
711	711	Jonasa Kavika*	http://boxrec.com/en/proboxer/807252	807252	0	23	3	2	0
712	712	Curtis Head*	http://boxrec.com/en/proboxer/730314	730314	0	35	5	4	0
713	713	Fabio Piazza*	http://boxrec.com/en/proboxer/723432	723432	0	30	5	2	0
714	714	Tomas Hanza	http://boxrec.com/en/proboxer/838673	838673	0	35	3	0	0
715	715	Dave Mbah	http://boxrec.com/en/proboxer/700451	700451	0	34	3	3	1
716	716	Keith Rydell Mayes Jr	http://boxrec.com/en/proboxer/835607	835607	0	30	3	0	0
717	717	Vern Earwood	http://boxrec.com/en/proboxer/869683	869683	0	\N	3	0	0
718	718	Bahi Zaky	http://boxrec.com/en/proboxer/862338	862338	0	\N	0	3	0
719	719	Andy Perez	http://boxrec.com/en/proboxer/493359	493359	0	42	20	10	0
720	720	Irakli Gvenetadze	http://boxrec.com/en/proboxer/778394	778394	0	29	7	12	0
721	721	Tim Skolnik	http://boxrec.com/en/proboxer/446065	446065	0	38	2	0	1
722	722	Shayne Smith	http://boxrec.com/en/proboxer/828702	828702	0	\N	2	0	0
723	723	Dylan Courson	http://boxrec.com/en/proboxer/619790	619790	0	27	5	1	0
724	724	Lester De Paz	http://boxrec.com/en/proboxer/829229	829229	0	27	2	0	0
725	725	Eric Hempstead	http://boxrec.com/en/proboxer/738202	738202	0	\N	7	1	0
726	726	Cruz Alfredo Duran	http://boxrec.com/en/proboxer/840789	840789	0	\N	3	0	1
727	727	Andras Balazs Farkas*	http://boxrec.com/en/proboxer/673288	673288	0	30	5	5	0
728	728	Abdul Manem Kabbani	http://boxrec.com/en/proboxer/509513	509513	0	31	3	3	0
729	729	Cole Yarborough	http://boxrec.com/en/proboxer/861481	861481	0	36	3	0	0
730	730	Joseph Jones	http://boxrec.com/en/proboxer/424168	424168	0	47	4	5	0
731	731	Chris Walker	http://boxrec.com/en/proboxer/884897	884897	0	\N	1	0	0
732	732	Ibrahim Marshall	http://boxrec.com/en/proboxer/148367	148367	0	42	13	10	1
733	733	Manuel Banquez	http://boxrec.com/en/proboxer/393386	393386	0	38	8	7	2
734	734	Willie Harvey	http://boxrec.com/en/proboxer/724554	724554	0	34	3	2	1
735	735	Stanley Wright	http://boxrec.com/en/proboxer/694223	694223	0	28	7	0	0
736	736	Tamas Kantor	http://boxrec.com/en/proboxer/455755	455755	0	30	2	8	1
737	737	Tyrone Guy	http://boxrec.com/en/proboxer/868517	868517	0	43	0	0	2
738	738	Anthony Trotter	http://boxrec.com/en/proboxer/303413	303413	0	35	3	6	0
739	739	Davit Gorgiladze	http://boxrec.com/en/proboxer/684352	684352	0	24	3	17	0
740	740	Benjamin Hernandez	http://boxrec.com/en/proboxer/795462	795462	0	30	1	8	1
741	741	Jacob Snowden*	http://boxrec.com/en/proboxer/767663	767663	0	34	6	0	0
742	742	Jacek Glowacki	http://boxrec.com/en/proboxer/869082	869082	0	\N	1	0	0
743	743	Michael Cornelius	http://boxrec.com/en/proboxer/642486	642486	0	27	4	2	0
744	744	Omar Nunez Valderrama	http://boxrec.com/en/proboxer/707034	707034	0	31	0	14	1
745	745	Rojhat Bilgetekin	http://boxrec.com/en/proboxer/705347	705347	0	22	10	18	0
746	746	Aleksander Lepsveridze*	http://boxrec.com/en/proboxer/725299	725299	0	\N	3	5	1
747	747	Ibrahim Odobasic	http://boxrec.com/en/proboxer/820921	820921	0	24	3	9	0
748	748	Owen Minor	http://boxrec.com/en/proboxer/864204	864204	0	\N	2	0	0
749	749	Joshua Parrott	http://boxrec.com/en/proboxer/854619	854619	0	37	2	0	0
750	750	Ivan Pineda*	http://boxrec.com/en/proboxer/731059	731059	0	37	6	2	0
751	751	Arun Kumar	http://boxrec.com/en/proboxer/871708	871708	0	31	1	1	0
752	752	Victor Mashaka	http://boxrec.com/en/proboxer/726204	726204	0	25	4	0	0
753	753	Casper Turner	http://boxrec.com/en/proboxer/836575	836575	0	\N	2	1	0
754	754	Gyozo Horvath	http://boxrec.com/en/proboxer/839939	839939	0	\N	2	0	0
755	755	Michal Czykiel	http://boxrec.com/en/proboxer/855436	855436	0	24	2	0	0
756	756	Igor Shevadzutskiy	http://boxrec.com/en/proboxer/856426	856426	0	29	2	0	0
757	757	John King	http://boxrec.com/en/proboxer/863544	863544	0	37	2	0	0
758	758	Justin Hodges*	http://boxrec.com/en/proboxer/864283	864283	0	37	2	0	0
759	759	Zhecheslav Radevski	http://boxrec.com/en/proboxer/867124	867124	0	26	2	0	0
760	760	Peter Sipos	http://boxrec.com/en/proboxer/434873	434873	0	46	13	3	0
761	761	Laszlo Czene*	http://boxrec.com/en/proboxer/329382	329382	0	43	6	37	0
762	762	Abdul Ghafour Esmaili*	http://boxrec.com/en/proboxer/629892	629892	0	42	5	1	0
763	763	Juan Jorge Martinez Ruiz*	http://boxrec.com/en/proboxer/738635	738635	0	26	2	3	0
764	764	Kaspars Kambala	http://boxrec.com/en/proboxer/432648	432648	0	40	4	0	1
765	765	Jin Kyoo Choi	http://boxrec.com/en/proboxer/823939	823939	0	24	1	1	3
766	766	Petr Frohlich	http://boxrec.com/en/proboxer/723439	723439	0	31	2	28	1
767	767	Lazar Stojanovic	http://boxrec.com/en/proboxer/783905	783905	0	23	0	7	1
768	768	Mateusz Cielepala	http://boxrec.com/en/proboxer/877522	877522	0	\N	1	1	0
769	769	Tim Farnsworth	http://boxrec.com/en/proboxer/833237	833237	0	\N	3	0	0
770	770	Vadims Tihomirovs	http://boxrec.com/en/proboxer/718239	718239	0	31	2	13	1
771	771	David Cannon	http://boxrec.com/en/proboxer/732527	732527	0	\N	2	4	1
772	772	Kevin Saszik	http://boxrec.com/en/proboxer/832219	832219	0	28	4	0	0
773	773	Jayson Aloese	http://boxrec.com/en/proboxer/730281	730281	0	22	1	4	2
774	774	Nazareno Ricardo Dadario	http://boxrec.com/en/proboxer/824383	824383	0	27	1	1	0
775	775	Luka Stajic	http://boxrec.com/en/proboxer/828337	828337	0	32	2	4	0
776	776	Soo Ho Hong	http://boxrec.com/en/proboxer/849378	849378	0	27	3	1	0
777	777	Robert Ferguson	http://boxrec.com/en/proboxer/790904	790904	0	32	2	6	1
778	778	Sumit Rangi	http://boxrec.com/en/proboxer/748839	748839	0	29	4	3	1
779	779	Michal Boloz*	http://boxrec.com/en/proboxer/818455	818455	0	\N	2	1	0
780	780	Dustin Long*	http://boxrec.com/en/proboxer/741274	741274	0	37	2	1	2
781	781	Haris Delic	http://boxrec.com/en/proboxer/835489	835489	0	\N	2	0	0
782	782	Justin Novaria	http://boxrec.com/en/proboxer/504006	504006	0	28	6	26	0
783	783	Thomas Hawkins	http://boxrec.com/en/proboxer/611375	611375	0	29	4	5	0
784	784	Jose Nabor	http://boxrec.com/en/proboxer/554706	554706	0	\N	2	1	0
785	785	Noe Zamora	http://boxrec.com/en/proboxer/808998	808998	0	29	4	0	0
786	786	Shaun Duffy*	http://boxrec.com/en/proboxer/844951	844951	0	34	2	2	0
787	787	Adriatik Selimi	http://boxrec.com/en/proboxer/829845	829845	0	25	2	0	0
788	788	Wilfredo German Arce	http://boxrec.com/en/proboxer/47982	47982	0	45	8	8	1
789	789	Jake Paradise	http://boxrec.com/en/proboxer/806832	806832	0	25	2	2	0
790	790	Ivan Arevalo	http://boxrec.com/en/proboxer/856340	856340	0	28	1	0	0
791	791	Lawrence Gabriel	http://boxrec.com/en/proboxer/739528	739528	0	32	3	2	1
792	792	Marc Subramoney	http://boxrec.com/en/proboxer/696933	696933	0	\N	5	2	1
793	793	Emanuele Venturelli	http://boxrec.com/en/proboxer/858811	858811	0	\N	2	0	0
794	794	Lamar Harris	http://boxrec.com/en/proboxer/317137	317137	0	35	9	20	4
795	795	Robson Jorge Da Silva*	http://boxrec.com/en/proboxer/676431	676431	0	35	2	1	0
796	796	Matthew Price	http://boxrec.com/en/proboxer/863540	863540	0	29	2	0	0
797	797	Enrique Perez	http://boxrec.com/en/proboxer/871930	871930	0	\N	2	0	0
798	798	Pierce Terence Lopez Acevedo	http://boxrec.com/en/proboxer/874016	874016	0	27	2	0	0
799	799	Mark Martinez	http://boxrec.com/en/proboxer/886915	886915	0	31	1	0	0
800	800	Akash Girjapurkar	http://boxrec.com/en/proboxer/842088	842088	0	26	2	2	0
801	801	Dorin Krasmaru	http://boxrec.com/en/proboxer/857766	857766	0	26	1	0	0
802	802	Haris Aksalic	http://boxrec.com/en/proboxer/857842	857842	0	28	2	0	0
803	803	Kureysh Sagov	http://boxrec.com/en/proboxer/881154	881154	0	28	2	0	0
804	804	Nicholas Mills	http://boxrec.com/en/proboxer/879077	879077	0	25	2	0	0
805	805	Vaughn Parham*	http://boxrec.com/en/proboxer/383472	383472	0	41	4	1	0
806	806	Pano Tiatia	http://boxrec.com/en/proboxer/757198	757198	0	22	3	0	0
807	807	Skylar Thompson	http://boxrec.com/en/proboxer/334748	334748	0	37	12	25	0
808	808	Fernando Caro	http://boxrec.com/en/proboxer/786719	786719	0	31	3	3	0
809	809	Gyorgy Kutasi	http://boxrec.com/en/proboxer/528494	528494	0	33	4	12	0
810	810	Alex Ajabor	http://boxrec.com/en/proboxer/825639	825639	0	34	2	0	0
811	811	Evander Tia	http://boxrec.com/en/proboxer/787217	787217	0	25	3	1	1
812	812	Artur Kubiak	http://boxrec.com/en/proboxer/868431	868431	0	\N	2	3	0
813	813	Richard Gauna	http://boxrec.com/en/proboxer/817718	817718	0	32	1	2	0
814	814	Miroslav Nikolov	http://boxrec.com/en/proboxer/838700	838700	0	28	2	0	0
815	815	Chandler Cole	http://boxrec.com/en/proboxer/880038	880038	0	24	1	0	0
816	816	Dmitry Levashev	http://boxrec.com/en/proboxer/881147	881147	0	33	2	0	0
817	817	Marvin Feterika*	http://boxrec.com/en/proboxer/802525	802525	0	\N	1	0	1
818	818	Joshua Brown	http://boxrec.com/en/proboxer/865229	865229	0	29	1	1	0
819	819	Warren le Roux	http://boxrec.com/en/proboxer/779917	779917	0	\N	2	5	1
820	820	Vladimir Rusnak	http://boxrec.com/en/proboxer/839938	839938	0	25	1	1	0
821	821	Daniel Gonzaga Gutierrez	http://boxrec.com/en/proboxer/871286	871286	0	38	1	0	0
822	822	Alam Syaputra	http://boxrec.com/en/proboxer/894724	894724	0	23	1	0	0
823	823	Rodolzo Damahl Lewis	http://boxrec.com/en/proboxer/872164	872164	0	44	3	6	1
824	824	Paolo Parente	http://boxrec.com/en/proboxer/840897	840897	0	26	2	1	0
825	825	Jose Larduet*	http://boxrec.com/en/proboxer/850300	850300	0	29	1	0	0
826	826	Marcin Najman	http://boxrec.com/en/proboxer/42799	42799	0	40	15	6	0
827	827	Bugra Horus	http://boxrec.com/en/proboxer/679118	679118	0	31	1	1	0
828	828	Shawn Gates	http://boxrec.com/en/proboxer/866545	866545	0	34	1	0	0
829	829	Patrik Jevicky	http://boxrec.com/en/proboxer/889178	889178	0	31	1	0	0
830	830	Willie Kyles	http://boxrec.com/en/proboxer/8941	8941	0	39	3	16	0
831	831	Javier Munoz	http://boxrec.com/en/proboxer/797804	797804	0	27	1	1	0
832	832	Roderic Okot	http://boxrec.com/en/proboxer/872621	872621	0	\N	1	0	0
833	833	Edgars Kalnars	http://boxrec.com/en/proboxer/75790	75790	0	42	27	48	1
834	834	Dustin Nichols	http://boxrec.com/en/proboxer/396124	396124	0	36	5	13	0
835	835	Jae Min Kim	http://boxrec.com/en/proboxer/816824	816824	0	37	2	3	2
836	836	Georgij Fibich	http://boxrec.com/en/proboxer/884579	884579	0	34	1	0	0
837	837	Kingsley Ibeh*	http://boxrec.com/en/proboxer/898187	898187	0	25	1	0	0
838	838	Jesse Smith	http://boxrec.com/en/proboxer/705955	705955	0	28	1	3	0
839	839	Anselme Gnassingbe	http://boxrec.com/en/proboxer/750809	750809	0	\N	1	1	0
840	840	Ron Blair	http://boxrec.com/en/proboxer/764896	764896	0	39	1	1	0
841	841	Gaybullo Kuchkarov	http://boxrec.com/en/proboxer/837337	837337	0	24	1	2	0
842	842	Giuseppe Scapoli	http://boxrec.com/en/proboxer/843504	843504	0	32	1	1	0
843	843	Anthony Congemi	http://boxrec.com/en/proboxer/846384	846384	0	38	1	0	0
844	844	Tony Lopez	http://boxrec.com/en/proboxer/851860	851860	0	45	1	0	0
845	845	Gabor Ban	http://boxrec.com/en/proboxer/854464	854464	0	38	1	2	0
846	846	Jin Sung Kim	http://boxrec.com/en/proboxer/856052	856052	0	30	1	0	0
847	847	Mark Anthony Montemayor	http://boxrec.com/en/proboxer/857184	857184	0	26	1	0	0
848	848	Ram Singh	http://boxrec.com/en/proboxer/859205	859205	0	36	1	0	0
849	849	Pal Kokas	http://boxrec.com/en/proboxer/860587	860587	0	31	1	0	0
850	850	Teagan Franco	http://boxrec.com/en/proboxer/862643	862643	0	28	1	0	0
851	851	Vikas Malik	http://boxrec.com/en/proboxer/866663	866663	0	35	1	0	0
852	852	Jabe Tyler	http://boxrec.com/en/proboxer/867215	867215	0	\N	1	0	0
853	853	Ricardo Arce	http://boxrec.com/en/proboxer/867317	867317	0	\N	1	1	0
854	854	Michael Lamar Johnson	http://boxrec.com/en/proboxer/868041	868041	0	31	1	0	0
855	855	Rolando Soto	http://boxrec.com/en/proboxer/870464	870464	0	23	1	0	0
856	856	Brant Dooley	http://boxrec.com/en/proboxer/870804	870804	0	24	1	0	0
857	857	Parminder Singh	http://boxrec.com/en/proboxer/871706	871706	0	31	1	2	0
858	858	Kendall Porter	http://boxrec.com/en/proboxer/872237	872237	0	\N	1	0	0
859	859	Jerome Morris	http://boxrec.com/en/proboxer/872645	872645	0	24	1	0	0
860	860	Christopher Rueda	http://boxrec.com/en/proboxer/872805	872805	0	\N	1	0	0
861	861	Kasera Sirongo	http://boxrec.com/en/proboxer/873499	873499	0	\N	1	0	0
862	862	Dustin Jacoby	http://boxrec.com/en/proboxer/874470	874470	0	31	1	0	0
863	863	Brandon Lynch*	http://boxrec.com/en/proboxer/875395	875395	0	27	1	0	0
864	864	Alexander Molina	http://boxrec.com/en/proboxer/876566	876566	0	\N	1	0	0
865	865	Luis Molina-Quinones*	http://boxrec.com/en/proboxer/877961	877961	0	25	1	0	0
866	866	D'Angelo Swaby	http://boxrec.com/en/proboxer/880777	880777	0	30	1	0	0
867	867	Vladimir Markelov	http://boxrec.com/en/proboxer/880848	880848	0	25	1	0	0
868	868	Jorge Martinez	http://boxrec.com/en/proboxer/881286	881286	0	\N	1	0	0
869	869	Jorge Luis Fernandez Machorro	http://boxrec.com/en/proboxer/882533	882533	0	24	1	1	0
870	870	Vartan Arutyunyan	http://boxrec.com/en/proboxer/883416	883416	0	19	1	0	0
871	871	Luke Burgess	http://boxrec.com/en/proboxer/883834	883834	0	\N	1	0	0
872	872	Riza Baydilli	http://boxrec.com/en/proboxer/885660	885660	0	38	1	0	0
873	873	Cornelius Hayes	http://boxrec.com/en/proboxer/886699	886699	0	28	1	0	0
874	874	Vyacheslav Ryabov	http://boxrec.com/en/proboxer/888218	888218	0	23	1	0	0
875	875	Xi Wang Yu	http://boxrec.com/en/proboxer/895438	895438	0	\N	1	0	0
876	876	Geovany Bruzon	http://boxrec.com/en/proboxer/895950	895950	0	22	1	0	0
877	877	Daniel Ramirez	http://boxrec.com/en/proboxer/896388	896388	0	\N	1	0	0
878	878	Dmitry Akhtsiger	http://boxrec.com/en/proboxer/896444	896444	0	21	1	0	0
879	879	Isa Kortag	http://boxrec.com/en/proboxer/897197	897197	0	30	1	0	0
880	880	Adabay Daryoush	http://boxrec.com/en/proboxer/897617	897617	0	33	1	0	0
881	881	Ubaldo Resendiz	http://boxrec.com/en/proboxer/897805	897805	0	20	1	0	0
882	882	Jose Galaviz	http://boxrec.com/en/proboxer/898039	898039	0	\N	1	0	0
883	883	Michael Shanks	http://boxrec.com/en/proboxer/33184	33184	0	43	6	32	0
884	884	Rodriguez Cade	http://boxrec.com/en/proboxer/815136	815136	0	29	2	4	0
885	885	Bruno Pranto	http://boxrec.com/en/proboxer/753721	753721	0	\N	3	1	0
886	886	Martin Berky	http://boxrec.com/en/proboxer/831173	831173	0	26	2	1	0
887	887	Juan Camilo Gualdron	http://boxrec.com/en/proboxer/530130	530130	0	29	4	0	1
888	888	Juan Torres*	http://boxrec.com/en/proboxer/827117	827117	0	32	3	2	1
889	889	Vaclav Trojacek	http://boxrec.com/en/proboxer/878446	878446	0	34	1	0	1
890	890	Nhlanganipho Gwamanda	http://boxrec.com/en/proboxer/707696	707696	0	\N	2	5	1
891	891	Jason Soto*	http://boxrec.com/en/proboxer/843295	843295	0	33	1	0	1
892	892	Damion Reed	http://boxrec.com/en/proboxer/536007	536007	0	28	3	20	1
893	893	Nigel Groves	http://boxrec.com/en/proboxer/810155	810155	0	\N	2	1	0
894	894	Chris Brown	http://boxrec.com/en/proboxer/372878	372878	0	33	2	5	2
895	895	Johnny Michelena	http://boxrec.com/en/proboxer/784204	784204	0	37	2	2	1
896	896	Alipate Naqata	http://boxrec.com/en/proboxer/351524	351524	0	\N	2	4	1
897	897	Haris Radmilovic	http://boxrec.com/en/proboxer/702966	702966	0	37	9	37	0
898	898	Hudson Muhumuza	http://boxrec.com/en/proboxer/609047	609047	0	39	4	5	1
899	899	Oleksandr Pavliuk	http://boxrec.com/en/proboxer/766152	766152	0	24	2	3	0
900	900	Andres Abreu	http://boxrec.com/en/proboxer/775500	775500	0	\N	0	19	0
901	901	Aliaksandr Niakhaichyk	http://boxrec.com/en/proboxer/800531	800531	0	29	1	5	0
902	902	Kacper Meyna	http://boxrec.com/en/proboxer/877516	877516	0	\N	2	0	0
903	903	Samisoni Tawaivuna	http://boxrec.com/en/proboxer/883440	883440	0	24	1	1	0
904	904	Nathaniel Copeland	http://boxrec.com/en/proboxer/860970	860970	0	30	1	1	0
905	905	Eliseo Valdez	http://boxrec.com/en/proboxer/72515	72515	0	\N	3	10	0
906	906	Emrullah Kaya	http://boxrec.com/en/proboxer/788018	788018	0	22	3	1	0
907	907	Jorge Alfredo Leal	http://boxrec.com/en/proboxer/30951	30951	0	45	14	11	1
908	908	Harris Tucker	http://boxrec.com/en/proboxer/727286	727286	0	36	3	7	0
909	909	Callum Godfrey	http://boxrec.com/en/proboxer/866446	866446	0	\N	1	0	0
910	910	Omari Braxton*	http://boxrec.com/en/proboxer/382294	382294	0	37	5	0	0
911	911	Kevin Debigare	http://boxrec.com/en/proboxer/844464	844464	0	25	2	0	0
912	912	Nicholas Tipton	http://boxrec.com/en/proboxer/863545	863545	0	37	1	1	0
913	913	Anthony Williams*	http://boxrec.com/en/proboxer/65595	65595	0	40	4	9	1
914	914	Oleksandr Nesterenko	http://boxrec.com/en/proboxer/448926	448926	0	33	9	12	0
915	915	Esteban Sosa Vazquez	http://boxrec.com/en/proboxer/474100	474100	0	39	2	18	0
916	916	Jake Reeves	http://boxrec.com/en/proboxer/826348	826348	0	29	1	1	0
917	917	Ferenc Zsalek*	http://boxrec.com/en/proboxer/244818	244818	0	34	21	75	7
918	918	Preston King	http://boxrec.com/en/proboxer/700326	700326	0	23	4	11	0
919	919	Rasul Alautdinov	http://boxrec.com/en/proboxer/827838	827838	0	24	1	1	0
920	920	Pavlo Krolenko	http://boxrec.com/en/proboxer/847468	847468	0	32	1	3	0
921	921	Lawrence Subelka	http://boxrec.com/en/proboxer/812434	812434	0	35	1	1	0
922	922	Luke Shiels	http://boxrec.com/en/proboxer/874951	874951	0	\N	1	0	0
923	923	Steve Tagnang Momo	http://boxrec.com/en/proboxer/738051	738051	0	35	2	4	0
924	924	Lamarco Ellis	http://boxrec.com/en/proboxer/764895	764895	0	34	2	6	0
925	925	Diego Bustos	http://boxrec.com/en/proboxer/796587	796587	0	37	0	12	0
926	926	Sejfula Berisa	http://boxrec.com/en/proboxer/14374	14374	0	38	7	30	2
927	927	Roman Borquez	http://boxrec.com/en/proboxer/191519	191519	0	42	3	9	1
928	928	Chaen Chess*	http://boxrec.com/en/proboxer/572758	572758	0	34	6	2	0
929	929	Alejandro Hinojosa Jacobo	http://boxrec.com/en/proboxer/838104	838104	0	\N	1	2	0
930	930	Sebastian Palacios	http://boxrec.com/en/proboxer/788237	788237	0	24	1	2	0
931	931	Michael Manna*	http://boxrec.com/en/proboxer/837926	837926	0	36	3	2	0
932	932	Adrian Parra	http://boxrec.com/en/proboxer/874548	874548	0	\N	2	0	0
933	933	Jesus Hernandez	http://boxrec.com/en/proboxer/625991	625991	0	26	4	0	0
934	934	Walter Ramon Alvarez	http://boxrec.com/en/proboxer/761447	761447	0	32	2	12	0
935	935	Ayman Farouk Abbas	http://boxrec.com/en/proboxer/831759	831759	0	\N	1	3	0
936	936	Ali Colon	http://boxrec.com/en/proboxer/886908	886908	0	27	1	0	0
937	937	Michael Davis	http://boxrec.com/en/proboxer/325290	325290	0	34	2	35	0
938	938	Oleg Fomichev	http://boxrec.com/en/proboxer/795440	795440	0	23	2	2	0
939	939	Victor Jimenez	http://boxrec.com/en/proboxer/737081	737081	0	36	4	2	1
940	940	Humberto Chavez	http://boxrec.com/en/proboxer/575880	575880	0	\N	2	2	1
941	941	Daniel Felix Franco	http://boxrec.com/en/proboxer/815173	815173	0	19	2	2	0
942	942	Rupeni Rasaku	http://boxrec.com/en/proboxer/831538	831538	0	\N	0	4	0
943	943	Daniel Butcher	http://boxrec.com/en/proboxer/860904	860904	0	36	1	1	0
944	944	Manuel Duran	http://boxrec.com/en/proboxer/743334	743334	0	34	2	13	0
945	945	Julio Ibanez	http://boxrec.com/en/proboxer/856406	856406	0	27	1	2	0
946	946	Joe Hill	http://boxrec.com/en/proboxer/713242	713242	0	33	3	4	0
947	947	Mohamad Ali Sleiman	http://boxrec.com/en/proboxer/670974	670974	0	38	2	2	0
948	948	Jared Torgeson	http://boxrec.com/en/proboxer/681141	681141	0	32	1	3	0
949	949	Kaseem Saleem*	http://boxrec.com/en/proboxer/875049	875049	0	\N	1	0	0
950	950	Lioscar Malo	http://boxrec.com/en/proboxer/691772	691772	0	33	0	14	0
951	951	Marko Bartulovic	http://boxrec.com/en/proboxer/897609	897609	0	20	1	0	0
952	952	Artsiom Charniakevich	http://boxrec.com/en/proboxer/667950	667950	0	33	3	26	0
953	953	Dennis Jochem	http://boxrec.com/en/proboxer/791108	791108	0	34	1	5	0
954	954	Edgar Medina	http://boxrec.com/en/proboxer/854179	854179	0	29	1	0	0
955	955	Alfredo Cervantes	http://boxrec.com/en/proboxer/39538	39538	0	47	2	5	1
956	956	Dwight Gipson	http://boxrec.com/en/proboxer/676137	676137	0	29	3	7	0
957	957	Leonardo De Moura	http://boxrec.com/en/proboxer/362113	362113	0	35	7	16	0
958	958	Jorge Rodriguez	http://boxrec.com/en/proboxer/624063	624063	0	\N	1	3	1
959	959	Ruben Juarez	http://boxrec.com/en/proboxer/642776	642776	0	\N	3	1	0
960	960	Matthew Glover*	http://boxrec.com/en/proboxer/803931	803931	0	31	1	3	0
961	961	Jack Maris*	http://boxrec.com/en/proboxer/877606	877606	0	\N	1	0	0
962	962	Daniel Infante	http://boxrec.com/en/proboxer/848749	848749	0	31	1	2	0
963	963	Matthew Shefferd	http://boxrec.com/en/proboxer/851869	851869	0	30	1	1	0
964	964	Juergen Dolch	http://boxrec.com/en/proboxer/857265	857265	0	43	1	0	0
965	965	Pawel Slowik	http://boxrec.com/en/proboxer/859345	859345	0	\N	1	0	0
966	966	Suraj Yadav	http://boxrec.com/en/proboxer/864812	864812	0	22	1	0	0
967	967	Alfred Lewis	http://boxrec.com/en/proboxer/870893	870893	0	30	1	0	0
968	968	Milos Milovanovic	http://boxrec.com/en/proboxer/877628	877628	0	28	1	0	0
969	969	Ranjeet Singh	http://boxrec.com/en/proboxer/883323	883323	0	21	1	0	0
970	970	Jaspreet Singh	http://boxrec.com/en/proboxer/883336	883336	0	25	1	0	0
971	971	Matthew Jones*	http://boxrec.com/en/proboxer/883682	883682	0	37	1	0	0
972	972	Mekki Sahli	http://boxrec.com/en/proboxer/884144	884144	0	26	1	0	0
973	973	Joo Hyun Kim	http://boxrec.com/en/proboxer/885452	885452	0	\N	1	0	0
974	974	Ji Hoon Won	http://boxrec.com/en/proboxer/885641	885641	0	\N	1	0	0
975	975	Sung Min Kwon	http://boxrec.com/en/proboxer/890873	890873	0	\N	1	0	0
976	976	Jakub Sosinski	http://boxrec.com/en/proboxer/894929	894929	0	\N	1	0	0
977	977	Roozbeh Safari	http://boxrec.com/en/proboxer/897208	897208	0	\N	1	0	0
978	978	Man Suk Lee	http://boxrec.com/en/proboxer/897720	897720	0	\N	1	0	0
979	979	Milos Veletic	http://boxrec.com/en/proboxer/898833	898833	0	\N	1	0	0
980	980	Dakota Talbott	http://boxrec.com/en/proboxer/618306	618306	0	26	2	20	0
981	981	Ryan Edwards	http://boxrec.com/en/proboxer/842033	842033	0	27	1	1	0
982	982	Armonte Summers	http://boxrec.com/en/proboxer/854877	854877	0	26	1	2	0
983	983	Michael Sunkett	http://boxrec.com/en/proboxer/523214	523214	0	30	1	8	0
984	984	Massimo Notari	http://boxrec.com/en/proboxer/855300	855300	0	41	1	0	1
985	985	Miguel Vizcarra	http://boxrec.com/en/proboxer/871223	871223	0	23	2	0	0
986	986	Edgar Montejo*	http://boxrec.com/en/proboxer/639537	639537	0	44	1	7	1
987	987	Ruben Sanchez	http://boxrec.com/en/proboxer/817287	817287	0	38	1	1	0
988	988	David Bejarano	http://boxrec.com/en/proboxer/804509	804509	0	\N	1	3	0
989	989	Samy Abdalla	http://boxrec.com/en/proboxer/838080	838080	0	29	2	0	1
990	990	Murteza Husein	http://boxrec.com/en/proboxer/838977	838977	0	20	1	8	0
991	991	Omar Salah	http://boxrec.com/en/proboxer/856166	856166	0	\N	0	0	1
992	992	Jonathan Alas	http://boxrec.com/en/proboxer/859803	859803	0	33	0	0	1
993	993	Marcelo de Souza Cruz	http://boxrec.com/en/proboxer/803498	803498	0	35	1	2	0
994	994	Heath Soderstrom	http://boxrec.com/en/proboxer/813190	813190	0	36	1	1	0
995	995	Rafaelle Palusci	http://boxrec.com/en/proboxer/738311	738311	0	\N	1	1	0
996	996	Luis Gregorio Castedo Yapovenda*	http://boxrec.com/en/proboxer/728040	728040	0	40	1	3	0
997	997	Martin Stensky	http://boxrec.com/en/proboxer/342796	342796	0	43	3	45	0
998	998	Radovan Kuca	http://boxrec.com/en/proboxer/354913	354913	0	41	1	16	2
999	999	Carlos Alberto Marquez	http://boxrec.com/en/proboxer/671334	671334	0	31	1	3	0
1000	1000	Omar Acosta	http://boxrec.com/en/proboxer/806481	806481	0	32	1	6	0
1001	1001	Janos Koczian	http://boxrec.com/en/proboxer/650152	650152	0	41	1	1	0
1002	1002	Luis Pavel Cortes	http://boxrec.com/en/proboxer/718570	718570	0	33	3	3	0
1003	1003	Samuel Zade	http://boxrec.com/en/proboxer/859993	859993	0	22	2	8	0
1004	1004	Sasa Nebrigic	http://boxrec.com/en/proboxer/34247	34247	0	44	1	6	0
1005	1005	Jose Carlos Cuevas	http://boxrec.com/en/proboxer/620121	620121	0	31	0	14	0
1006	1006	Cameron Tukua	http://boxrec.com/en/proboxer/842926	842926	0	34	1	1	0
1007	1007	Deshaun Fowler	http://boxrec.com/en/proboxer/805210	805210	0	24	1	1	0
1008	1008	Karel Adam	http://boxrec.com/en/proboxer/887963	887963	0	18	1	0	0
1009	1009	Hayden Wright	http://boxrec.com/en/proboxer/727883	727883	0	33	2	12	0
1010	1010	Anuraj Sangwan	http://boxrec.com/en/proboxer/815535	815535	0	25	1	2	0
1011	1011	Leobardo Morales	http://boxrec.com/en/proboxer/867316	867316	0	\N	1	0	0
1012	1012	Maxim Bolotov	http://boxrec.com/en/proboxer/880856	880856	0	34	1	0	0
1013	1013	Pascual Hodgson	http://boxrec.com/en/proboxer/889251	889251	0	35	1	0	0
1014	1014	Isiah Barela	http://boxrec.com/en/proboxer/539324	539324	0	40	4	8	0
1015	1015	Ignacio Zambrano	http://boxrec.com/en/proboxer/783552	783552	0	30	2	5	0
1016	1016	Demonte Cherry*	http://boxrec.com/en/proboxer/761173	761173	0	23	1	7	0
1017	1017	Joe Gagliardi Jr	http://boxrec.com/en/proboxer/853452	853452	0	\N	1	1	0
1018	1018	Otto Zolde	http://boxrec.com/en/proboxer/869616	869616	0	\N	0	0	1
1019	1019	David Mundell	http://boxrec.com/en/proboxer/884004	884004	0	28	0	0	1
1020	1020	James Roe	http://boxrec.com/en/proboxer/628723	628723	0	47	1	8	0
1021	1021	Gary Kelly	http://boxrec.com/en/proboxer/682693	682693	0	40	1	8	0
1022	1022	Belmin Pasalic	http://boxrec.com/en/proboxer/763589	763589	0	23	1	8	0
1023	1023	Miloslav Pavek	http://boxrec.com/en/proboxer/785280	785280	0	26	1	9	0
1024	1024	Chad Thrun	http://boxrec.com/en/proboxer/511948	511948	0	40	1	5	0
1025	1025	N'Valaye Sesay*	http://boxrec.com/en/proboxer/762277	762277	0	29	1	1	1
1026	1026	Charles Brown	http://boxrec.com/en/proboxer/843074	843074	0	44	0	2	0
1027	1027	Julius Poananga	http://boxrec.com/en/proboxer/855903	855903	0	\N	1	0	0
1028	1028	Yondell Johnson	http://boxrec.com/en/proboxer/858792	858792	0	37	0	2	0
1029	1029	Costin Barba	http://boxrec.com/en/proboxer/880851	880851	0	32	1	0	0
1030	1030	Vadym Kostiuchok*	http://boxrec.com/en/proboxer/881966	881966	0	20	1	1	0
1031	1031	Mafa Telepe*	http://boxrec.com/en/proboxer/422331	422331	0	45	2	7	0
1032	1032	Gonzalo Jose Roldan	http://boxrec.com/en/proboxer/790638	790638	0	29	0	3	2
1033	1033	Attila Huszka	http://boxrec.com/en/proboxer/72590	72590	0	52	3	26	3
1034	1034	Antonio Aguilera	http://boxrec.com/en/proboxer/480151	480151	0	\N	1	3	0
1035	1035	Rafael Abdala Sanchez	http://boxrec.com/en/proboxer/799848	799848	0	39	1	1	0
1036	1036	Juan Cruz Moroyoqui	http://boxrec.com/en/proboxer/474152	474152	0	\N	3	10	0
1037	1037	Colin 'Butch' Goldhawk*	http://boxrec.com/en/proboxer/576091	576091	0	36	2	8	0
1038	1038	Chang Hoon Sung	http://boxrec.com/en/proboxer/849377	849377	0	32	1	1	0
1039	1039	Trevor Pasha	http://boxrec.com/en/proboxer/275683	275683	0	46	1	6	0
1040	1040	Hrvoje Bozinovic	http://boxrec.com/en/proboxer/542685	542685	0	30	2	21	0
1041	1041	Milos Dovedan	http://boxrec.com/en/proboxer/674376	674376	0	38	2	39	0
1042	1042	Stefan Kusnier	http://boxrec.com/en/proboxer/262026	262026	0	34	1	25	1
1043	1043	Patricio Diaz	http://boxrec.com/en/proboxer/854438	854438	0	22	0	1	0
1044	1044	Tony Urbina	http://boxrec.com/en/proboxer/865109	865109	0	\N	1	0	1
1045	1045	Sung Yun Kim	http://boxrec.com/en/proboxer/890875	890875	0	18	1	0	0
1046	1046	Nedeljko Cvorovic	http://boxrec.com/en/proboxer/692376	692376	0	40	2	29	0
1047	1047	Corey Morley	http://boxrec.com/en/proboxer/735610	735610	0	37	0	3	1
1048	1048	Jordan Mororoa	http://boxrec.com/en/proboxer/788630	788630	0	21	1	2	0
1049	1049	Wallace Too	http://boxrec.com/en/proboxer/789851	789851	0	\N	0	3	0
1050	1050	Alessio Marchese	http://boxrec.com/en/proboxer/855301	855301	0	40	0	2	1
1051	1051	Jairus Gladney	http://boxrec.com/en/proboxer/349235	349235	0	\N	1	1	0
1052	1052	Attila Szladek	http://boxrec.com/en/proboxer/621898	621898	0	36	3	44	0
1053	1053	Mugabon Mudimba	http://boxrec.com/en/proboxer/664870	664870	0	\N	0	6	1
1054	1054	Abdelazim Ali	http://boxrec.com/en/proboxer/894319	894319	0	30	0	1	0
1055	1055	Pavel Siska	http://boxrec.com/en/proboxer/17184	17184	0	42	6	52	1
1056	1056	Huston Crayton	http://boxrec.com/en/proboxer/134679	134679	0	\N	1	9	0
1057	1057	Gerardo Escobar	http://boxrec.com/en/proboxer/261887	261887	0	45	2	22	0
1058	1058	Mareks Kovalevskis	http://boxrec.com/en/proboxer/456939	456939	0	35	2	24	2
1059	1059	Yurii Horbenko	http://boxrec.com/en/proboxer/478371	478371	0	38	0	8	0
1060	1059	Jermaine Harris	http://boxrec.com/en/proboxer/489135	489135	0	34	0	3	0
1061	1059	Fabian Jauregui	http://boxrec.com/en/proboxer/496053	496053	0	\N	0	2	0
1062	1059	Bekzodjon Rakhmonov	http://boxrec.com/en/proboxer/539718	539718	0	33	0	4	0
1063	1059	Ricardo Reyes	http://boxrec.com/en/proboxer/578637	578637	0	\N	0	10	1
1064	1059	Daniel Noguera	http://boxrec.com/en/proboxer/584419	584419	0	32	0	12	0
1065	1059	Robert Taylor	http://boxrec.com/en/proboxer/587402	587402	0	38	0	3	0
1066	1059	Victor Eduardo Avila	http://boxrec.com/en/proboxer/661438	661438	0	29	0	8	0
1067	1059	Tyrone Williams	http://boxrec.com/en/proboxer/662909	662909	0	31	0	2	0
1068	1059	Ramon Gallegos	http://boxrec.com/en/proboxer/673501	673501	0	\N	0	3	0
1069	1059	Magdiel Leyva	http://boxrec.com/en/proboxer/674474	674474	0	\N	0	3	0
1070	1059	Emir Islamovic	http://boxrec.com/en/proboxer/692393	692393	0	24	0	6	0
1071	1059	Ramazan Yilmaz	http://boxrec.com/en/proboxer/694723	694723	0	25	0	7	0
1072	1059	Elmin Handanagic	http://boxrec.com/en/proboxer/697843	697843	0	23	0	19	0
1073	1059	Eric Lunsford	http://boxrec.com/en/proboxer/700124	700124	0	29	0	1	0
1074	1059	Shawn Rapha	http://boxrec.com/en/proboxer/703146	703146	0	\N	0	2	0
1075	1059	Rob Manual	http://boxrec.com/en/proboxer/714300	714300	0	43	0	5	1
1076	1059	Rick Reed	http://boxrec.com/en/proboxer/723520	723520	0	23	0	4	1
1077	1059	John Dubois	http://boxrec.com/en/proboxer/730487	730487	0	37	0	5	0
1078	1059	Juan Jose Torres Zaragoza	http://boxrec.com/en/proboxer/730891	730891	0	37	0	6	0
1079	1059	Darin Shaw	http://boxrec.com/en/proboxer/732158	732158	0	39	0	3	0
1080	1059	Daniel Cordero	http://boxrec.com/en/proboxer/741684	741684	0	39	0	3	0
1081	1059	Aron Alexis Franco	http://boxrec.com/en/proboxer/749810	749810	0	23	0	4	0
1082	1059	Jimmie Levins	http://boxrec.com/en/proboxer/750121	750121	0	39	0	5	0
1083	1059	Jure Majic	http://boxrec.com/en/proboxer/761793	761793	0	30	0	2	0
1084	1059	Cory Schooley	http://boxrec.com/en/proboxer/763494	763494	0	29	0	3	1
1085	1059	Mose Smith	http://boxrec.com/en/proboxer/763522	763522	0	36	0	4	0
1086	1059	Luis Fabela	http://boxrec.com/en/proboxer/764974	764974	0	29	0	4	0
1087	1059	Milos Mandic	http://boxrec.com/en/proboxer/766231	766231	0	29	0	2	0
1088	1059	Salum Habibu	http://boxrec.com/en/proboxer/766923	766923	0	\N	0	2	2
1089	1059	Prakob Chaiman	http://boxrec.com/en/proboxer/768134	768134	0	39	0	3	0
1090	1059	Zoltan Kasza	http://boxrec.com/en/proboxer/768816	768816	0	33	0	12	0
1091	1059	Darryl Madison	http://boxrec.com/en/proboxer/772102	772102	0	36	0	3	0
1092	1059	Juan Jose Cardenas Gutierrez	http://boxrec.com/en/proboxer/777988	777988	0	47	0	2	0
1093	1059	Darwin Arboleda	http://boxrec.com/en/proboxer/778676	778676	0	\N	0	4	0
1094	1059	Wikus Ludeke	http://boxrec.com/en/proboxer/779922	779922	0	\N	0	6	0
1095	1059	Ash McConville	http://boxrec.com/en/proboxer/781155	781155	0	\N	0	3	0
1096	1059	Edgar Jair Amaral	http://boxrec.com/en/proboxer/781202	781202	0	27	0	3	0
1097	1059	Andrew Coleman*	http://boxrec.com/en/proboxer/783795	783795	0	33	0	0	1
1098	1059	Aleh Zablotski	http://boxrec.com/en/proboxer/789516	789516	0	31	0	9	0
1099	1059	Ruben Roundstone	http://boxrec.com/en/proboxer/789994	789994	0	\N	0	4	0
1100	1059	Henry Wright	http://boxrec.com/en/proboxer/792089	792089	0	48	0	5	0
1101	1059	Igor Kantar	http://boxrec.com/en/proboxer/792250	792250	0	21	0	4	0
1102	1059	Demetrius Shaw	http://boxrec.com/en/proboxer/796657	796657	0	31	0	4	0
1103	1059	Daniel Mejia Hernandez	http://boxrec.com/en/proboxer/797654	797654	0	25	0	7	0
1104	1059	Michael Harrington	http://boxrec.com/en/proboxer/797786	797786	0	\N	0	2	0
1105	1059	Cesar Mamani*	http://boxrec.com/en/proboxer/798813	798813	0	21	0	6	1
1106	1059	Thomas Moreno	http://boxrec.com/en/proboxer/803932	803932	0	\N	0	2	0
1107	1059	Machiavelli Farrakhan Siberius	http://boxrec.com/en/proboxer/804504	804504	0	33	0	6	0
1108	1059	Bryan Canady	http://boxrec.com/en/proboxer/805972	805972	0	30	0	5	0
1109	1059	Leonardo Torres Aguilar	http://boxrec.com/en/proboxer/811041	811041	0	35	0	2	0
1110	1059	Manuel Alejandro Higuera	http://boxrec.com/en/proboxer/811098	811098	0	26	0	3	0
1111	1059	Vincenzo Anzalone	http://boxrec.com/en/proboxer/814318	814318	0	31	0	8	0
1112	1059	Chase Beach	http://boxrec.com/en/proboxer/815622	815622	0	25	0	3	0
1113	1059	Aleksandar Aleksic	http://boxrec.com/en/proboxer/815863	815863	0	37	0	5	0
1114	1059	Alejandro Esquilin Santiago	http://boxrec.com/en/proboxer/815948	815948	0	42	0	6	0
1115	1059	Zoltan Enyedi	http://boxrec.com/en/proboxer/815997	815997	0	\N	0	4	0
1116	1059	Viliamu Motusaga*	http://boxrec.com/en/proboxer/816881	816881	0	\N	0	4	0
1117	1059	Issac Maganga	http://boxrec.com/en/proboxer/817245	817245	0	47	0	3	0
1118	1059	Blazej Nagorski	http://boxrec.com/en/proboxer/817785	817785	0	\N	0	2	0
1119	1059	Johann Becker	http://boxrec.com/en/proboxer/818285	818285	0	33	0	2	0
1120	1059	Ricardo Enrique Arce Rodriguez	http://boxrec.com/en/proboxer/818597	818597	0	32	0	2	0
1121	1059	Milos Stevic	http://boxrec.com/en/proboxer/819776	819776	0	20	0	5	0
1122	1059	Kook Lee	http://boxrec.com/en/proboxer/823940	823940	0	26	0	3	0
1123	1059	Collen Mavhundutse	http://boxrec.com/en/proboxer/824278	824278	0	\N	0	3	1
1124	1059	Lamar Lewis	http://boxrec.com/en/proboxer/825640	825640	0	28	0	5	0
1125	1059	Greg Richter	http://boxrec.com/en/proboxer/827116	827116	0	35	0	1	1
1126	1059	Ibrahim Ashanawy	http://boxrec.com/en/proboxer/831687	831687	0	\N	0	2	0
1127	1059	Allen Campoy Ruiz	http://boxrec.com/en/proboxer/832745	832745	0	25	0	2	0
1128	1059	Sven Spaethmann	http://boxrec.com/en/proboxer/834597	834597	0	41	0	3	0
1129	1059	Matereti Canavanua	http://boxrec.com/en/proboxer/835664	835664	0	\N	0	3	0
1130	1059	Ertan Hosses	http://boxrec.com/en/proboxer/835991	835991	0	50	0	5	0
1131	1059	Stefan Paladin	http://boxrec.com/en/proboxer/836842	836842	0	40	0	2	0
1132	1059	Gyorgy Sandor Baga	http://boxrec.com/en/proboxer/839940	839940	0	28	0	3	0
1133	1059	Delrae Robati	http://boxrec.com/en/proboxer/840348	840348	0	33	0	4	0
1134	1059	Allen Melson	http://boxrec.com/en/proboxer/842386	842386	0	26	0	2	0
1135	1059	Andre Brewer	http://boxrec.com/en/proboxer/843161	843161	0	\N	0	2	0
1136	1059	Rashard Readus	http://boxrec.com/en/proboxer/843516	843516	0	23	0	2	0
1137	1059	Nilson Del Mar	http://boxrec.com/en/proboxer/844122	844122	0	37	0	2	0
1138	1059	Fernando Temoteo Gomes	http://boxrec.com/en/proboxer/845598	845598	0	34	0	2	0
1139	1059	Thomas Hobbs	http://boxrec.com/en/proboxer/846014	846014	0	26	0	2	0
1140	1059	Albert Micura	http://boxrec.com/en/proboxer/846487	846487	0	\N	0	3	0
1141	1059	Manorom Khikhunthod	http://boxrec.com/en/proboxer/847416	847416	0	30	0	2	0
1142	1059	John Carmona	http://boxrec.com/en/proboxer/848668	848668	0	27	0	1	0
1143	1059	Milton Martin	http://boxrec.com/en/proboxer/848856	848856	0	35	0	2	0
1144	1059	Hye Myung Lee	http://boxrec.com/en/proboxer/849376	849376	0	25	0	1	0
1145	1059	Michael Hoffmann	http://boxrec.com/en/proboxer/849479	849479	0	43	0	2	0
1146	1059	Thor Hueckstedt	http://boxrec.com/en/proboxer/849480	849480	0	37	0	3	0
1147	1059	Joshua Romero*	http://boxrec.com/en/proboxer/849675	849675	0	32	0	1	0
1148	1059	Shukhrat Kurbanov	http://boxrec.com/en/proboxer/849716	849716	0	38	0	2	0
1149	1059	Khalil Brown	http://boxrec.com/en/proboxer/849743	849743	0	21	0	4	0
1150	1059	Kwasi Horton	http://boxrec.com/en/proboxer/849813	849813	0	42	0	2	0
1151	1059	Drew Elrod	http://boxrec.com/en/proboxer/850247	850247	0	22	0	1	0
1152	1059	Gerson Martinez	http://boxrec.com/en/proboxer/850723	850723	0	\N	0	3	1
1153	1059	Abdarhmane Coulibaly	http://boxrec.com/en/proboxer/850764	850764	0	33	0	1	0
1154	1059	Amil Ramos	http://boxrec.com/en/proboxer/851298	851298	0	33	0	1	0
1155	1059	Abdullad Saad Alghmadi	http://boxrec.com/en/proboxer/851369	851369	0	\N	0	1	0
1156	1059	Dale Sopi	http://boxrec.com/en/proboxer/851853	851853	0	28	0	1	0
1157	1059	Richard Soto	http://boxrec.com/en/proboxer/852692	852692	0	25	0	1	0
1158	1059	Sorraphat Yarmsri	http://boxrec.com/en/proboxer/852790	852790	0	16	0	1	0
1159	1059	Milan Opacic	http://boxrec.com/en/proboxer/853353	853353	0	24	0	1	0
1160	1059	Nenad Letic	http://boxrec.com/en/proboxer/854461	854461	0	24	0	2	0
1161	1059	Kaloyan Yordanov	http://boxrec.com/en/proboxer/854622	854622	0	23	0	1	0
1162	1059	James Advincola	http://boxrec.com/en/proboxer/854629	854629	0	30	0	1	0
1163	1059	Mario Tanka	http://boxrec.com/en/proboxer/855419	855419	0	27	0	1	0
1164	1059	Sandor Czigler	http://boxrec.com/en/proboxer/855422	855422	0	45	0	1	0
1165	1059	Jozef Voros	http://boxrec.com/en/proboxer/855435	855435	0	23	0	1	0
1166	1059	Kevin Fodor	http://boxrec.com/en/proboxer/855437	855437	0	18	0	2	0
1167	1059	Nikolaos Daniiloglou	http://boxrec.com/en/proboxer/855449	855449	0	21	0	1	0
1168	1059	Joshua Allotey	http://boxrec.com/en/proboxer/855934	855934	0	\N	0	1	0
1169	1059	Esene Pono*	http://boxrec.com/en/proboxer/856248	856248	0	\N	0	2	0
1170	1059	Vercell Webster	http://boxrec.com/en/proboxer/856365	856365	0	25	0	1	0
1171	1059	Stanislav Kristof	http://boxrec.com/en/proboxer/856845	856845	0	38	0	1	1
1172	1059	Marco Basciano	http://boxrec.com/en/proboxer/857266	857266	0	40	0	1	0
1173	1059	Dell Sefton	http://boxrec.com/en/proboxer/857337	857337	0	40	0	1	0
1174	1059	Balazs Varga	http://boxrec.com/en/proboxer/857440	857440	0	19	0	2	0
1175	1059	Raul Rosales	http://boxrec.com/en/proboxer/857564	857564	0	\N	0	1	0
1176	1059	Ramon Ojeda	http://boxrec.com/en/proboxer/857592	857592	0	\N	0	1	0
1177	1059	Nico Yamdjie	http://boxrec.com/en/proboxer/857843	857843	0	\N	0	2	0
1178	1059	David Salazar	http://boxrec.com/en/proboxer/858106	858106	0	29	0	1	0
1179	1059	Justin Janes	http://boxrec.com/en/proboxer/858188	858188	0	30	0	0	0
1180	1059	Aleksejs Grisanovics	http://boxrec.com/en/proboxer/858393	858393	0	29	0	1	0
1181	1059	Gilson Jeputers	http://boxrec.com/en/proboxer/858579	858579	0	\N	0	1	0
1182	1059	Ivan Aratsky	http://boxrec.com/en/proboxer/858767	858767	0	23	0	3	0
1183	1059	Hueseyin Salih Akyuez	http://boxrec.com/en/proboxer/858814	858814	0	22	0	1	0
1184	1059	Samir Begic	http://boxrec.com/en/proboxer/858819	858819	0	22	0	2	0
1185	1059	Anthony Morris	http://boxrec.com/en/proboxer/858837	858837	0	39	0	0	0
1186	1059	Victor Hugo Velasco Duran	http://boxrec.com/en/proboxer/858926	858926	0	26	0	1	0
1187	1059	Eduardo Augusto Goncalve Ferreira Rocha	http://boxrec.com/en/proboxer/858940	858940	0	22	0	1	0
1188	1059	Varun Tiwari	http://boxrec.com/en/proboxer/859206	859206	0	23	0	2	0
1189	1059	David Madueno	http://boxrec.com/en/proboxer/859638	859638	0	28	0	3	0
1190	1059	Dragan Kokanovic	http://boxrec.com/en/proboxer/860655	860655	0	33	0	1	0
1191	1059	Dzianis Krasnadubau	http://boxrec.com/en/proboxer/860926	860926	0	32	0	1	0
1192	1059	Chandler Whitfield	http://boxrec.com/en/proboxer/860942	860942	0	22	0	1	0
1193	1059	Jordan Mitchell	http://boxrec.com/en/proboxer/861119	861119	0	28	0	3	0
1194	1059	Artem Amoian	http://boxrec.com/en/proboxer/861271	861271	0	23	0	1	0
1195	1059	Viesturs Knospe	http://boxrec.com/en/proboxer/861836	861836	0	\N	0	1	0
1196	1059	La'Vonte Jackson	http://boxrec.com/en/proboxer/861969	861969	0	32	0	1	0
1197	1059	Joaquin Lizaliturri	http://boxrec.com/en/proboxer/862060	862060	0	\N	0	1	0
1198	1059	Laszlo Ondrejcsik	http://boxrec.com/en/proboxer/862148	862148	0	29	0	1	0
1199	1059	Alahadidin Sovuksu	http://boxrec.com/en/proboxer/864045	864045	0	36	0	4	0
1200	1059	Uemit Guelseven	http://boxrec.com/en/proboxer/864046	864046	0	35	0	1	0
1201	1059	Chris Beal	http://boxrec.com/en/proboxer/864100	864100	0	33	0	4	0
1202	1059	Rudy Silvas	http://boxrec.com/en/proboxer/864111	864111	0	26	0	0	0
1203	1059	Mahmoud Ezzat	http://boxrec.com/en/proboxer/864440	864440	0	\N	0	3	0
1204	1059	Ivan Martinez	http://boxrec.com/en/proboxer/864886	864886	0	\N	0	1	0
1205	1059	Cleveland Billingsly III	http://boxrec.com/en/proboxer/865421	865421	0	38	0	3	0
1206	1059	Sourav Khatri	http://boxrec.com/en/proboxer/865578	865578	0	19	0	2	0
1207	1059	Wade Bruins	http://boxrec.com/en/proboxer/865585	865585	0	18	0	1	0
1208	1059	Leonel Cazarez	http://boxrec.com/en/proboxer/865677	865677	0	26	0	1	0
1209	1059	Justin Kehoe	http://boxrec.com/en/proboxer/866051	866051	0	42	0	1	0
1210	1059	Terrence Hoges	http://boxrec.com/en/proboxer/866101	866101	0	35	0	1	0
1211	1059	Arnon Junkot	http://boxrec.com/en/proboxer/866664	866664	0	30	0	1	0
1212	1059	Kwame Benson	http://boxrec.com/en/proboxer/866698	866698	0	29	0	3	0
1213	1059	Paris Liles	http://boxrec.com/en/proboxer/866700	866700	0	27	0	1	0
1214	1059	Paradise Mann	http://boxrec.com/en/proboxer/867216	867216	0	\N	0	1	0
1215	1059	Nelson Montalvan	http://boxrec.com/en/proboxer/868122	868122	0	26	0	1	0
1216	1059	Mohamed Azab	http://boxrec.com/en/proboxer/868409	868409	0	40	0	1	0
1217	1059	Tomasz Piechocki	http://boxrec.com/en/proboxer/868432	868432	0	\N	0	1	0
1218	1059	Taner Oencuel	http://boxrec.com/en/proboxer/868515	868515	0	39	0	1	0
1219	1059	Rodrigo Quintero	http://boxrec.com/en/proboxer/868705	868705	0	30	0	1	0
1220	1059	Radoslaw Kawczak	http://boxrec.com/en/proboxer/869081	869081	0	\N	0	1	0
1221	1059	Gabor Soregi	http://boxrec.com/en/proboxer/869103	869103	0	\N	0	1	0
1222	1059	Dean Wingrove	http://boxrec.com/en/proboxer/869287	869287	0	30	0	1	0
1223	1059	Jamie Black	http://boxrec.com/en/proboxer/869514	869514	0	28	0	1	0
1224	1059	Donald Pierce	http://boxrec.com/en/proboxer/869682	869682	0	36	0	1	0
1225	1059	Eddie Sisneros	http://boxrec.com/en/proboxer/869875	869875	0	\N	0	1	0
1226	1059	Logan Bertrand	http://boxrec.com/en/proboxer/869939	869939	0	20	0	1	0
1227	1059	Ibrahim Demirezen	http://boxrec.com/en/proboxer/870214	870214	0	\N	0	1	0
1228	1059	Jovan Krajinovic	http://boxrec.com/en/proboxer/870261	870261	0	20	0	1	0
1229	1059	Tahir Sahanserkan Yerliguel	http://boxrec.com/en/proboxer/870436	870436	0	21	0	1	0
1230	1059	Zhyrgalbek Chomonov	http://boxrec.com/en/proboxer/870514	870514	0	36	0	1	0
1231	1059	Leonardo Medina	http://boxrec.com/en/proboxer/870608	870608	0	\N	0	2	0
1232	1059	Jason Saxbury	http://boxrec.com/en/proboxer/870805	870805	0	37	0	2	1
1233	1059	Anjel Osiris	http://boxrec.com/en/proboxer/871018	871018	0	37	0	1	0
1234	1059	Brian Haneschlager	http://boxrec.com/en/proboxer/871321	871321	0	39	0	1	0
1235	1059	John Haule	http://boxrec.com/en/proboxer/871350	871350	0	\N	0	1	0
1236	1059	Aleksandar Aleksandrov	http://boxrec.com/en/proboxer/871412	871412	0	29	0	1	0
1237	1059	Thomas Allotey	http://boxrec.com/en/proboxer/871430	871430	0	\N	0	1	0
1238	1059	Jevgenijs Vidro	http://boxrec.com/en/proboxer/871560	871560	0	37	0	1	0
1239	1059	Luis Marquez	http://boxrec.com/en/proboxer/872011	872011	0	\N	0	1	0
1240	1059	Juan Molina	http://boxrec.com/en/proboxer/872099	872099	0	23	0	1	0
1241	1059	Calvin Albrow*	http://boxrec.com/en/proboxer/872153	872153	0	31	0	1	0
1242	1059	Carl Martin	http://boxrec.com/en/proboxer/872238	872238	0	\N	0	2	0
1243	1059	Young Chul Kim	http://boxrec.com/en/proboxer/872295	872295	0	26	0	1	0
1244	1059	Mariusz Nowak	http://boxrec.com/en/proboxer/872332	872332	0	\N	0	1	0
1245	1059	Michal Duda	http://boxrec.com/en/proboxer/872337	872337	0	\N	0	1	0
1246	1059	Justin Richwine	http://boxrec.com/en/proboxer/872793	872793	0	33	0	1	0
1247	1059	Rolando Barrera Santos	http://boxrec.com/en/proboxer/872806	872806	0	\N	0	2	0
1248	1059	Johannes Nekongo	http://boxrec.com/en/proboxer/873500	873500	0	\N	0	1	0
1249	1059	Cesar Pina	http://boxrec.com/en/proboxer/873571	873571	0	\N	0	0	1
1250	1059	Paras Kumar	http://boxrec.com/en/proboxer/874189	874189	0	18	0	1	0
1251	1059	Michal Marek	http://boxrec.com/en/proboxer/874476	874476	0	33	0	1	0
1252	1059	Raul Dominguez	http://boxrec.com/en/proboxer/874549	874549	0	\N	0	1	0
1253	1059	Matias Rojas	http://boxrec.com/en/proboxer/875168	875168	0	\N	0	1	0
1254	1059	Kalose Aluni	http://boxrec.com/en/proboxer/875706	875706	0	\N	0	0	1
1255	1059	Alexis Teran	http://boxrec.com/en/proboxer/876567	876567	0	35	0	1	0
1256	1059	Dakota Witkopf	http://boxrec.com/en/proboxer/877339	877339	0	23	0	1	0
1257	1059	Jorge Ivan Hernandez Miranda*	http://boxrec.com/en/proboxer/877482	877482	0	\N	0	1	0
1258	1059	Krystian Arndt	http://boxrec.com/en/proboxer/877517	877517	0	\N	0	1	0
1259	1059	Vuk Stojanovic	http://boxrec.com/en/proboxer/877626	877626	0	23	0	1	0
1260	1059	Troy McMahon	http://boxrec.com/en/proboxer/878968	878968	0	\N	0	1	0
1261	1059	Alem Sejdic	http://boxrec.com/en/proboxer/879855	879855	0	30	0	2	0
1262	1059	Brayan Horacio Vazquez Franco	http://boxrec.com/en/proboxer/880039	880039	0	18	0	2	0
1263	1059	Kevin Daniel Vazquez Franco	http://boxrec.com/en/proboxer/880043	880043	0	20	0	2	0
1264	1059	Gabriel Dousten	http://boxrec.com/en/proboxer/880163	880163	0	\N	0	1	0
1265	1059	Hector Tapueluelu	http://boxrec.com/en/proboxer/880663	880663	0	27	0	1	1
1266	1059	Chiril Bortnicov	http://boxrec.com/en/proboxer/880852	880852	0	25	0	1	0
1267	1059	Igors Vasiljevs	http://boxrec.com/en/proboxer/880857	880857	0	36	0	1	0
1268	1059	Cassiano Cardoso da Costa e Silva	http://boxrec.com/en/proboxer/880959	880959	0	22	0	1	0
1269	1059	Vladislav Okhotin	http://boxrec.com/en/proboxer/881148	881148	0	24	0	2	0
1270	1059	Arian Hernandez	http://boxrec.com/en/proboxer/881287	881287	0	\N	0	1	0
1271	1059	Never Durango	http://boxrec.com/en/proboxer/881610	881610	0	33	0	1	0
1272	1059	Ruslan Mormul	http://boxrec.com/en/proboxer/881679	881679	0	23	0	3	0
1273	1059	Bryan Butler	http://boxrec.com/en/proboxer/881868	881868	0	28	0	1	0
1274	1059	Roberto Zuniga	http://boxrec.com/en/proboxer/882534	882534	0	24	0	1	0
1275	1059	Vicky Khan	http://boxrec.com/en/proboxer/883324	883324	0	26	0	1	0
1276	1059	Sukhpreet Singh	http://boxrec.com/en/proboxer/883337	883337	0	23	0	1	0
1277	1059	Aaron Johnson	http://boxrec.com/en/proboxer/883523	883523	0	34	0	1	0
1278	1059	Georginio Traber	http://boxrec.com/en/proboxer/883665	883665	0	31	0	1	0
1279	1059	Joseph Raposo	http://boxrec.com/en/proboxer/883686	883686	0	27	0	2	0
1280	1059	Argenis Castillo	http://boxrec.com/en/proboxer/883790	883790	0	27	0	2	0
1281	1059	Arid Dema	http://boxrec.com/en/proboxer/884099	884099	0	\N	0	1	0
1282	1059	Bertrand Logan	http://boxrec.com/en/proboxer/884145	884145	0	20	0	1	0
1283	1059	Edgar Chavez	http://boxrec.com/en/proboxer/884247	884247	0	30	0	1	0
1284	1059	Beau Champion	http://boxrec.com/en/proboxer/885113	885113	0	\N	0	1	0
1285	1059	Ik Tae Jin	http://boxrec.com/en/proboxer/885453	885453	0	\N	0	1	0
1286	1059	Sung Han Lee	http://boxrec.com/en/proboxer/885640	885640	0	\N	0	2	0
1287	1059	Shant Nercessian*	http://boxrec.com/en/proboxer/885764	885764	0	\N	0	1	0
1288	1059	Jae Hoon Kim	http://boxrec.com/en/proboxer/885900	885900	0	25	0	1	0
1289	1059	Parnell Van Dijk	http://boxrec.com/en/proboxer/887714	887714	0	35	0	1	0
1290	1059	Gerardo Alberto Valdez	http://boxrec.com/en/proboxer/887785	887785	0	20	0	1	0
1291	1059	Ryan Parker	http://boxrec.com/en/proboxer/888369	888369	0	26	0	1	0
1292	1059	Johan Lopez	http://boxrec.com/en/proboxer/888516	888516	0	42	0	1	0
1293	1059	Victor Delgado	http://boxrec.com/en/proboxer/889252	889252	0	29	0	1	0
1294	1059	Ismael Salgado	http://boxrec.com/en/proboxer/889482	889482	0	19	0	1	0
1295	1059	Young Geun Ahn	http://boxrec.com/en/proboxer/890876	890876	0	26	0	1	0
1296	1059	Carlos Adrian Moreno Valdez	http://boxrec.com/en/proboxer/892076	892076	0	32	0	1	0
1297	1059	Martins Petersons	http://boxrec.com/en/proboxer/892630	892630	0	21	0	1	0
1298	1059	Michal Krejza	http://boxrec.com/en/proboxer/893055	893055	0	19	0	1	0
1299	1059	Aidan Anderson	http://boxrec.com/en/proboxer/893694	893694	0	29	0	1	0
1300	1059	Roberto Tellez Posadas	http://boxrec.com/en/proboxer/894260	894260	0	33	0	1	0
1301	1059	Andrzej Szkuta	http://boxrec.com/en/proboxer/894930	894930	0	\N	0	1	0
1302	1059	Qi Di Liu	http://boxrec.com/en/proboxer/895439	895439	0	\N	0	1	0
1303	1059	Jaime Torres	http://boxrec.com/en/proboxer/896445	896445	0	35	0	1	0
1304	1059	Marcel Steidle	http://boxrec.com/en/proboxer/896665	896665	0	27	0	1	0
1305	1059	Hakan Mahim	http://boxrec.com/en/proboxer/897199	897199	0	30	0	2	0
1306	1059	Mohammad Alaya	http://boxrec.com/en/proboxer/897202	897202	0	27	0	1	0
1307	1059	Guvanch Kurbanov	http://boxrec.com/en/proboxer/897207	897207	0	26	0	1	0
1308	1059	Satori Ashley	http://boxrec.com/en/proboxer/897394	897394	0	30	0	1	0
1309	1059	Nikola Badovinac	http://boxrec.com/en/proboxer/897610	897610	0	36	0	1	0
1310	1059	Dong Chan Lee	http://boxrec.com/en/proboxer/897719	897719	0	\N	0	1	0
1311	1059	Stepan Kromm	http://boxrec.com/en/proboxer/897797	897797	0	22	0	1	0
1312	1059	Stefan Vysolayski	http://boxrec.com/en/proboxer/897898	897898	0	\N	0	1	0
1313	1059	Farzad Azizi	http://boxrec.com/en/proboxer/897962	897962	0	21	0	1	0
1314	1059	Omar Pacheco Hernandez	http://boxrec.com/en/proboxer/897976	897976	0	32	0	1	0
1315	1059	Martin Ovalle	http://boxrec.com/en/proboxer/898040	898040	0	\N	0	1	0
1316	1059	Cristopher Garza	http://boxrec.com/en/proboxer/898073	898073	0	27	0	1	0
1317	1059	Erkan Tarhan	http://boxrec.com/en/proboxer/898834	898834	0	21	0	1	0
1318	1059	Barkim Logan	http://boxrec.com/en/proboxer/899086	899086	0	31	debut	\N	debut
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: kevinlopez
--

COPY public.schema_migrations (version) FROM stdin;
20190909012702
\.


--
-- Name: heavyweights_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevinlopez
--

SELECT pg_catalog.setval('public.heavyweights_id_seq', 1318, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: kevinlopez
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: heavyweights heavyweights_pkey; Type: CONSTRAINT; Schema: public; Owner: kevinlopez
--

ALTER TABLE ONLY public.heavyweights
    ADD CONSTRAINT heavyweights_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: kevinlopez
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

