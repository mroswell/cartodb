--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ne_10m_populated_places_simple; Type: TABLE; Schema: public; Owner: development_cartodb_user_1; Tablespace: 
--
DROP TABLE IF EXISTS ne_10m_populated_places_simple;
CREATE TABLE ne_10m_populated_places_simple (
    scalerank integer,
    natscale integer,
    labelrank integer,
    featurecla text,
    name text,
    namepar text,
    namealt text,
    diffascii integer,
    nameascii text,
    adm0cap numeric,
    capalt numeric,
    capin text,
    worldcity numeric,
    megacity integer,
    sov0name text,
    sov_a3 text,
    adm0name text,
    adm0_a3 text,
    adm1name text,
    iso_a2 text,
    note text,
    latitude numeric,
    longitude numeric,
    changed numeric,
    namediff integer,
    diffnote text,
    pop_max integer,
    pop_min integer,
    pop_other integer,
    geonameid numeric,
    meganame text,
    ls_name text,
    ls_match integer,
    checkme integer,
    the_geom geometry(Point,4326),
    cartodb_id integer NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    the_geom_webmercator geometry(Point,3857)
);

--
-- Name: ne_10m_populated_places_simple_cartodb_id_seq; Type: SEQUENCE; Schema: public; Owner: development_cartodb_user_1
--

CREATE SEQUENCE ne_10m_populated_places_simple_cartodb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: ne_10m_populated_places_simple_cartodb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: development_cartodb_user_1
--

ALTER SEQUENCE ne_10m_populated_places_simple_cartodb_id_seq OWNED BY ne_10m_populated_places_simple.cartodb_id;


--
-- Name: ne_10m_populated_places_simple_cartodb_id_seq; Type: SEQUENCE SET; Schema: public; Owner: development_cartodb_user_1
--

SELECT pg_catalog.setval('ne_10m_populated_places_simple_cartodb_id_seq', 7314, false);


--
-- Name: cartodb_id; Type: DEFAULT; Schema: public; Owner: development_cartodb_user_1
--

ALTER TABLE ONLY ne_10m_populated_places_simple ALTER COLUMN cartodb_id SET DEFAULT nextval('ne_10m_populated_places_simple_cartodb_id_seq'::regclass);


--
-- Data for Name: ne_10m_populated_places_simple; Type: TABLE DATA; Schema: public; Owner: development_cartodb_user_1
--

COPY ne_10m_populated_places_simple (scalerank, natscale, labelrank, featurecla, name, namepar, namealt, diffascii, nameascii, adm0cap, capalt, capin, worldcity, megacity, sov0name, sov_a3, adm0name, adm0_a3, adm1name, iso_a2, note, latitude, longitude, changed, namediff, diffnote, pop_max, pop_min, pop_other, geonameid, meganame, ls_name, ls_match, checkme, the_geom, cartodb_id, created_at, updated_at, the_geom_webmercator) FROM stdin;
3	110	6	Admin-1 capital	Agadez	\N	\N	0	Agadez	0.00000000000	0.00000000000	\N	0.00000000000	0	Niger	NER	Niger	NER	Agadez	NG	\N	16.99587343240	7.98280960962	0.00000000000	0	\N	117770	88561	117770	2447938.00000000000	\N	Agadez	1	0	0101000020E6100000800C6EA465EE1F40C002AF8FF1FE3040	5498	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F0000A808089A841E2B413A5F5FB0584D3D41
4	50	5	Admin-1 capital	Tabriz	\N	\N	0	Tabriz	0.00000000000	0.00000000000	\N	0.00000000000	1	Iran	IRN	Iran	IRN	East Azarbaijan	IR	\N	38.08629152330	46.30124588910	0.00000000000	0	\N	1413000	1196426	1171325	113646.00000000000	Tabriz	Tabriz	1	0	0101000020E6100000B840A1764F26474070C2CE5C4B0B4340	6604	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F00004AF138A037A953418A6A8D9346845141
7	20	1	Populated place	Ames	\N	\N	0	Ames	0.00000000000	0.00000000000	\N	0.00000000000	0	United States	USA	United States of America	USA	Iowa	US	\N	42.05385296540	-93.61972253600	0.00000000000	0	\N	57104	56606	56808	4846834.00000000000	\N	Ames	1	0	0101000020E61000001C25B688A96757C0687E6AA7E4064540	206	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F00006FBFE87AB8E063C13C978471E6B75341
8	10	2	Populated place	Apsheronsk	\N	\N	0	Apsheronsk	0.00000000000	0.00000000000	\N	0.00000000000	0	Russia	RUS	Russia	RUS	Krasnodar	RS	\N	44.46871848460	39.72872717160	0.00000000000	0	\N	45876	40451	45876	581313.00000000000	\N	Apsheronsk	1	0	0101000020E610000008DB94EE46DD4340C820A1F7FE3B4640	1760	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F0000DD4B6E6BEDDE50416879089376205541
7	20	2	Populated place	Agapa	\N	\N	0	Agapa	0.00000000000	0.00000000000	\N	0.00000000000	0	Russia	RUS	Russia	RUS	Taymyr	RS	\N	71.45037904780	89.24999385470	1.00000000000	1	Added place.	0	0	0	-1.00000000000	\N	\N	2	0	0101000020E6100000E89239E6FF4F56407C4EA402D3DC5140	2012	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F0000E095D0FB33F3624116E982C2940B6641
7	20	2	Populated place	Guasave	\N	\N	0	Guasave	0.00000000000	0.00000000000	\N	0.00000000000	0	Mexico	MEX	Mexico	MEX	Sinaloa	MX	\N	25.57049216610	-108.46997888400	0.00000000000	0	\N	96860	68449	96006	4005219.00000000000	\N	Guasave	1	0	0101000020E610000014CF4F22141E5BC0D02B4CC60B923940	2163	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F00009A1F1ADAE80767C12CA8A489DE794641
7	20	2	Populated place	Pochutla	\N	\N	0	Pochutla	0.00000000000	0.00000000000	\N	0.00000000000	0	Mexico	MEX	Mexico	MEX	Oaxaca	MX	\N	15.73039512020	-96.46998783550	0.00000000000	0	\N	24481	13078	0	3517970.00000000000	\N	Pochutla	1	0	0101000020E610000038B4DB47141E58C0E0CD6459F6752F40	2225	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F0000279186BDA57B64C10AA79EF0D10F3B41
7	20	1	Populated place	Tongling	\N	\N	0	Tongling	0.00000000000	0.00000000000	\N	0.00000000000	0	China	CHN	China	CHN	Anhui	CH	\N	30.95044801740	117.78003535900	0.00000000000	0	\N	562832	312588	550777	1792621.00000000000	\N	Tongling	1	0	0101000020E610000070E56C19EC715D402040AF8F50F33E40	2633	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F00005EDCF9B1F50169416280DEC5A5AA4B41
8	10	1	Populated place	Anlu	\N	\N	0	Anlu	0.00000000000	0.00000000000	\N	0.00000000000	0	China	CHN	China	CHN	Hubei	CH	\N	31.26998923650	113.67000199300	0.00000000000	0	\N	71198	71198	818200	1818016.00000000000	\N	Anlu	1	0	0101000020E610000058E40950E16A5C40D0E8BC031E453F40	2985	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F000024A9B0D78E2268410B94BB1FCBFB4B41
7	20	6	Populated place	Berekum	\N	\N	0	Berekum	0.00000000000	0.00000000000	\N	0.00000000000	0	Ghana	GHA	Ghana	GHA	Brong Ahafo	GH	\N	7.45038372693	-2.59000756978	0.00000000000	0	\N	46287	26682	29191	2303125.00000000000	\N	Berekum	1	0	0101000020E610000000EE84E355B804C04055476431CD1D40	3327	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F00002D3D974BF99811C1C13A0C43D0612941
8	10	3	Populated place	Melun	\N	\N	0	Melun	0.00000000000	0.00000000000	\N	0.00000000000	0	French Republic	FRA	France	FRA	Île-de-France	FR	\N	48.53330242830	2.66664831403	0.00000000000	0	\N	249432	38953	512351	2994651.00000000000	\N	Melun	1	0	0101000020E6100000806315B64B5505403826044143444840	3452	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F00004918D2BA471E1241B469011BD2A25741
8	10	5	Populated place	Shahrud	\N	\N	0	Shahrud	0.00000000000	0.00000000000	\N	0.00000000000	0	Iran	IRN	Iran	IRN	Semnan	IR	\N	36.42287884420	54.96288773480	0.00000000000	0	\N	131889	118719	81627	135423.00000000000	\N	Shahrud	1	0	0101000020E6100000085CC1E73F7B4B40E015DBE420364240	3666	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F000040EE352B0A575741B7AFE07CCDA05041
6	30	5	Admin-1 capital	Sumy	\N	\N	0	Sumy	0.00000000000	0.00000000000	\N	0.00000000000	0	Ukraine	UKR	Ukraine	UKR	Sumy	UP	\N	50.92429343580	34.78086380890	1.00000000000	0	Changed scale rank.	294456	285146	282351	692194.00000000000	\N	Sumy	1	0	0101000020E6100000B8066558F363414070434F3F4F764940	4081	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F000003483706168A4D41873425410A355941
7	20	1	Populated place	Pinheiro	\N	\N	0	Pinheiro	0.00000000000	0.00000000000	\N	0.00000000000	0	Brazil	BRA	Brazil	BRA	Maranhăo	BR	\N	-2.51960203157	-45.08999739740	0.00000000000	0	\N	38893	10931	0	3392054.00000000000	\N	Pinheiro	1	0	0101000020E61000000057E308858B46C08032241C252804C0	4167	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F0000AFAF35E3C02553C16CA58C09ED1F11C1
8	10	2	Populated place	Hinton	\N	\N	0	Hinton	0.00000000000	0.00000000000	\N	0.00000000000	0	Canada	CAN	Canada	CAN	Alberta	CA	\N	53.39998211580	-117.58335026200	0.00000000000	0	\N	10265	9889	10009	5975503.00000000000	\N	Hinton	1	0	0101000020E6100000B8AC569C55655DC0C0262D9D32B34A40	4400	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F0000C2B5A9D544F768C18559D74EECEB5A41
8	10	2	Populated place	Salluit	\N	\N	0	Salluit	0.00000000000	0.00000000000	\N	0.00000000000	0	Canada	CAN	Canada	CAN	Québec	CA	\N	62.18259848950	-75.65950097830	0.00000000000	0	\N	106	106	0	-1.00000000000	\N	Salluit	1	0	0101000020E61000001459974335EA52C0786626635F174F40	4509	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F00000623EC237D1060C1783CFD48F5FA6041
8	10	6	Populated place	Baranavichy	\N	\N	0	Baranavichy	0.00000000000	0.00000000000	\N	0.00000000000	0	Belarus	BLR	Belarus	BLR	Brest	BO	\N	53.13684572260	26.01344030630	0.00000000000	0	\N	168772	144257	144257	630429.00000000000	\N	Baranavichy	1	0	0101000020E61000002009ECD270033A40F07E1F2984914A40	5005	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F000077F6DE76DD17464171918AB917BC5A41
7	20	3	Populated place	Katoomba	\N	\N	0	Katoomba	0.00000000000	0.00000000000	\N	0.00000000000	0	Australia	AUS	Australia	AUS	New South Wales	AS	\N	-33.70694903690	150.32001297900	0.00000000000	0	\N	22076	18593	22076	2161776.00000000000	\N	Katoomba	1	0	0101000020E61000009410DC8B3DCA624090B7584E7DDA40C0	5098	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F00005DF3A069ADEA6F4117DFE6FE07704EC1
7	20	3	Populated place	Smithton	\N	\N	0	Smithton	0.00000000000	0.00000000000	\N	0.00000000000	0	Australia	AUS	Australia	AUS	Tasmania	AS	\N	-40.83292234420	145.11666133500	0.00000000000	0	\N	4202	2500	0	2149254.00000000000	\N	Smithton	1	0	0101000020E6100000FC8B8DB0BB23624088450A339D6A44C0	5217	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F0000CE2B0E1BD9CF6E41C4714839D40653C1
4	50	3	Populated place	Bilbao	\N	\N	0	Bilbao	0.00000000000	0.00000000000	\N	0.00000000000	0	Kingdom of Spain	ESP	Spain	ESP	País Vasco	SP	\N	43.24998150540	-2.92998681783	0.00000000000	0	\N	881969	351409	870248	3128026.00000000000	\N	Bilbao	1	0	0101000020E6100000006BC2ED9C7007C0E024DB64FF9F4540	5487	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F00004E62F78F52E813C1F48847D4B4685441
4	50	2	Admin-1 capital	La Paz	\N	\N	0	La Paz	0.00000000000	0.00000000000	\N	0.00000000000	0	Mexico	MEX	Mexico	MEX	Baja California Sur	MX	\N	24.13995932920	-110.31999516000	0.00000000000	0	\N	189767	171485	4400	4000900.00000000000	\N	La Paz1	1	0	0101000020E6100000C87BFACC7A945BC040BFE55FD4233840	5826	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F00006599EFB5776C67C1109AC70714234541
4	50	6	Admin-1 capital	Wonsan	\N	\N	0	Wonsan	0.00000000000	0.00000000000	\N	0.00000000000	0	Korea, North	PRK	North Korea	PRK	Kangwon-do	KN	\N	39.16048952130	127.43081579500	0.00000000000	0	\N	329207	315643	311650	1866923.00000000000	\N	Wonsan	1	0	0101000020E61000005086697C92DB5F4050BCAEEB8A944340	5886	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F0000364AD2B0870E6B41ADB7869D7B195241
3	110	8	Admin-0 capital	Amman	\N	\N	0	Amman	1.00000000000	0.00000000000	\N	0.00000000000	1	Jordan	JOR	Jordan	JOR	Amman	JO	\N	31.95002524720	35.93329992550	0.00000000000	0	\N	1060000	1060000	2633729	250441.00000000000	Amman	Amman	1	0	0101000020E6100000481C2D9C36F741401044DE60B4F33F40	5997	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F000047F5E4043A844E41D0AD80DEE7A94C41
6	30	6	Admin-1 capital	Sekondi	\N	\N	0	Sekondi	0.00000000000	0.00000000000	\N	0.00000000000	0	Ghana	GHA	Ghana	GHA	Western	GH	\N	4.94327577608	-1.70401513814	1.00000000000	0	Changed scale rank.	286248	138872	0	2295458.00000000000	\N	Sekondi	1	0	0101000020E61000000038A360A543FBBF4074C515EAC51340	6397	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F00007489A4C7D02707C10CF415CC6DD02041
4	50	5	Admin-1 capital	Kirkuk	\N	\N	0	Kirkuk	0.00000000000	0.00000000000	\N	0.00000000000	0	Iraq	IRQ	Iraq	IRQ	At-Ta'mim	IZ	\N	35.47223919580	44.39226680380	0.00000000000	0	\N	601433	508672	482868	94787.00000000000	\N	Kirkuk	1	0	0101000020E610000020C372CC35324640D0EA7E5572BC4140	6532	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F000062D14922E7D95241FB5894CC24215041
4	50	2	Populated place	Dawson	\N	\N	0	Dawson	0.00000000000	0.00000000000	\N	0.00000000000	0	Canada	CAN	Canada	CAN	Yukon	CA	\N	64.06664369620	-139.41666874400	4.00000000000	0	Location adjusted.	0	0	0	6943713.00000000000	\N	Dawson	0	0	0101000020E61000001681B059556D61C06CF4EBE343045040	6841	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F000029375312069A6DC195F5267A96DD6141
6	30	2	Admin-1 capital	Fredericton	\N	\N	0	Fredericton	0.00000000000	0.00000000000	\N	0.00000000000	0	Canada	CAN	Canada	CAN	New Brunswick	CA	\N	45.94999757800	-66.63330774090	1.00000000000	0	Changed scale rank.	52337	36713	0	5957776.00000000000	\N	Fredericton	1	0	0101000020E6100000BCE8301D88A850C0E064488599F94640	6870	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F00001D52CE78BC4B5CC1F68488FA0C055641
4	50	3	Admin-1 capital	Santa Fe	\N	\N	0	Santa Fe	0.00000000000	0.00000000000	\N	0.00000000000	0	Argentina	ARG	Argentina	ARG	Santa Fe	AR	\N	-31.62387205120	-60.69000126310	0.00000000000	0	\N	489505	297503	227366	3836277.00000000000	\N	Santa Fe2	1	0	0101000020E610000028801DF651584EC070DD2814B69F3FC0	6927	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F000005AF5B02A3C559C1A810FF4FFB554CC1
4	50	3	Populated place	Whyalla	\N	\N	0	Whyalla	0.00000000000	0.00000000000	\N	0.00000000000	0	Australia	AUS	Australia	AUS	South Australia	AS	\N	-33.02502683640	137.56141190500	0.00000000000	0	\N	22559	19645	21622	2058430.00000000000	\N	Whyalla	1	0	0101000020E6100000387A1916F731614070E25114348340C0	7129	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F000002356F4A2E356D41FF38122A81BE4DC1
4	50	5	Admin-1 capital	Sittwe	\N	\N	0	Sittwe	0.00000000000	0.00000000000	\N	0.00000000000	0	Myanmar	MMR	Myanmar	MMR	Rakhine	BM	\N	20.13999676410	92.88000484110	0.00000000000	0	\N	179032	177743	179032	1295765.00000000000	\N	Sittwe	1	5	0101000020E61000007C30D3FF51385740E054F3D3D6233440	7176	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F0000F34A005B83B86341CA1B346EEB774141
6	30	0	Populated place	Uummannaq	\N	\N	0	Uummannaq	0.00000000000	0.00000000000	\N	0.00000000000	0	Denmark	DNK	Greenland	GRL	\N	DA	\N	70.67502342780	-52.12293443110	1.00000000000	1	Added place.	0	0	0	-1.00000000000	\N	\N	2	0	0101000020E610000018A0C050BC0F4AC0789A769533AB5140	7266	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F000078E33FA14E2256C10A32C873B3896541
7	20	5	Admin-1 capital	My Tho	\N	\N	0	My Tho	0.00000000000	0.00000000000	\N	0.00000000000	0	Vietnam	VNM	Vietnam	VNM	B?n Tre	VM	\N	10.35041343070	106.35003535900	0.00000000000	0	\N	124143	122310	124143	1574023.00000000000	\N	My Tho	1	0	0101000020E6100000FC86B4FA66965A40600FA26369B32440	887	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F00008EF705F9AD946641C5CEC93279AD3141
8	10	2	Populated place	Otsu	\N	\N	0	Otsu	0.00000000000	0.00000000000	\N	0.00000000000	0	Japan	JPN	Japan	JPN	Shiga	JA	\N	35.00640199690	135.86740677800	0.00000000000	0	\N	536976	298164	1207930	1853574.00000000000	\N	Otsu	1	0	0101000020E61000009C08DCCBC1FB6040F0A8D7C7D1804140	3232	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F00005ECF36511AD96C412C508A9747C64F41
8	10	7	Populated place	Pori	\N	\N	0	Pori	0.00000000000	0.00000000000	\N	0.00000000000	0	Finland	FIN	Finland	FIN	Satakunta	FI	\N	61.47889467280	21.77493932970	0.00000000000	0	\N	76772	66280	57843	640999.00000000000	\N	Pori	1	0	0101000020E61000001090856C62C6354068EDAE6B4CBD4E40	3602	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F000086324194537E42413D9BC4E9EDA96041
3	110	8	Admin-0 capital	Paramaribo	\N	\N	0	Paramaribo	1.00000000000	0.00000000000	\N	0.00000000000	0	Suriname	SUR	Suriname	SUR	Paramaribo	NS	\N	5.83503012992	-55.16703088540	0.00000000000	0	\N	254169	223757	248161	3383330.00000000000	\N	Paramaribo	1	5	0101000020E6100000E8289F4461954BC0C0C46C2312571740	5319	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F00001DFC59723B6D57C10DC3359D6CDB2341
4	50	2	Admin-1 capital	Tver	\N	\N	0	Tver	0.00000000000	0.00000000000	\N	0.00000000000	0	Russia	RUS	Russia	RUS	Tver'	RS	\N	56.85997763990	35.88999507520	0.00000000000	0	\N	400212	363874	362050	480060.00000000000	\N	Tver	1	0	0101000020E610000070D9CE5BEBF1414088504FBF136E4C40	5693	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F0000D3F2F8FC3B7B4E414D225440587E5D41
8	10	2	Populated place	Oymyakon	\N	Oimekon	0	Oymyakon	0.00000000000	0.00000000000	\N	0.00000000000	0	Russia	RUS	Russia	RUS	Sakha (Yakutia)	RS	\N	0.00000000000	0.00000000000	1.00000000000	0	Missing.	0	0	0	0.00000000000	\N	\N	0	0	0101000020E6100000347A3CF0A1D86140A88E93F2F1B54F40	7313	2013-07-02 12:21:01.534892	2013-07-02 12:21:01.756236	0101000020110F00000359883B48506E4142D25C124F8E6141
\.


--
-- Name: ne_10m_populated_places_simple_pkey; Type: CONSTRAINT; Schema: public; Owner: development_cartodb_user_1; Tablespace: 
--

ALTER TABLE ONLY ne_10m_populated_places_simple
    ADD CONSTRAINT ne_10m_populated_places_simple_pkey PRIMARY KEY (cartodb_id);


--
-- Name: importing_1372760458_ne_10m_populated_places_simple_the_geom_gi; Type: INDEX; Schema: public; Owner: development_cartodb_user_1; Tablespace: 
--

CREATE INDEX importing_1372760458_ne_10m_populated_places_simple_the_geom_gi ON ne_10m_populated_places_simple USING gist (the_geom);


--
-- Name: ne_10m_populated_places_simple_the_geom_idx; Type: INDEX; Schema: public; Owner: development_cartodb_user_1; Tablespace: 
--

CREATE INDEX ne_10m_populated_places_simple_the_geom_idx ON ne_10m_populated_places_simple USING gist (the_geom);


--
-- Name: ne_10m_populated_places_simple_the_geom_webmercator_idx; Type: INDEX; Schema: public; Owner: development_cartodb_user_1; Tablespace: 
--

CREATE INDEX ne_10m_populated_places_simple_the_geom_webmercator_idx ON ne_10m_populated_places_simple USING gist (the_geom_webmercator);

UPDATE ne_10m_populated_places_simple set the_geom = NULL;
UPDATE ne_10m_populated_places_simple set the_geom_webmercator = NULL;

--
-- PostgreSQL database dump complete
--
