--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Mackerson
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Mackerson";

--
-- Name: destinations; Type: TABLE; Schema: public; Owner: Mackerson
--

CREATE TABLE public.destinations (
    id bigint NOT NULL,
    city character varying,
    country character varying,
    description character varying
);


ALTER TABLE public.destinations OWNER TO "Mackerson";

--
-- Name: destinations_id_seq; Type: SEQUENCE; Schema: public; Owner: Mackerson
--

CREATE SEQUENCE public.destinations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.destinations_id_seq OWNER TO "Mackerson";

--
-- Name: destinations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Mackerson
--

ALTER SEQUENCE public.destinations_id_seq OWNED BY public.destinations.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: Mackerson
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    content character varying,
    user_id integer,
    destination_id integer
);


ALTER TABLE public.reviews OWNER TO "Mackerson";

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: Mackerson
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO "Mackerson";

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Mackerson
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Mackerson
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Mackerson";

--
-- Name: users; Type: TABLE; Schema: public; Owner: Mackerson
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying,
    password_hash character varying,
    password_salt character varying
);


ALTER TABLE public.users OWNER TO "Mackerson";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: Mackerson
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO "Mackerson";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Mackerson
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: destinations id; Type: DEFAULT; Schema: public; Owner: Mackerson
--

ALTER TABLE ONLY public.destinations ALTER COLUMN id SET DEFAULT nextval('public.destinations_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: Mackerson
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: Mackerson
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Mackerson
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-06-11 16:22:37.923215	2020-06-11 16:22:37.923215
\.


--
-- Data for Name: destinations; Type: TABLE DATA; Schema: public; Owner: Mackerson
--

COPY public.destinations (id, city, country, description) FROM stdin;
57	Damascus	Norfolk Island	Artisan kale chips listicle. Marfa swag yolo. Scenester taxidermy truffaut portland plaid hammock 3 wolf moon tumblr. Dreamcatcher five dollar toast schlitz try-hard put a bird on it synth bicycle rights. Vegan scenester cray post-ironic marfa shabby chic.
58	Mexico City	Bhutan	Bicycle rights forage echo photo booth pabst cleanse biodiesel dreamcatcher. Leggings actually asymmetrical listicle. Everyday occupy before they sold out. Carry meh sustainable banh mi cardigan yr. Thundercats seitan roof.
59	Monaco	Equatorial Guinea	Bicycle rights portland put a bird on it pabst master vinyl. Hashtag letterpress iphone mustache leggings flexitarian normcore. Loko wolf semiotics selfies fanny pack venmo hoodie church-key. Seitan farm-to-table synth etsy bicycle rights plaid five dollar toast fanny pack. Master synth meh pug.
60	Suva	Finland	Phlogiston typewriter sriracha humblebrag messenger bag celiac gastropub disrupt. Before they sold out lumbersexual chartreuse godard tousled polaroid franzen. Meggings park vice.
61	Vilnius	Denmark	Xoxo truffaut yolo. Keytar sartorial fixie keffiyeh farm-to-table kickstarter. Readymade fanny pack cold-pressed. Goth diy mustache. Taxidermy deep v wayfarers mlkshk keffiyeh.
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: Mackerson
--

COPY public.reviews (id, content, user_id, destination_id) FROM stdin;
726	"this is a test review"	119	58
727	"this is a test review"	119	58
728	"something"	121	58
729	"this is a test review"	119	58
711	Distillery single-origin coffee marfa wayfarers meditation. Tofu pop-up pug blue bottle irony viral schlitz freegan.	121	57
712	Pop-up deep v knausgaard church-key beard. Twee pour-over roof bespoke yuccie chartreuse small batch. Asymmetrical shabby chic stumptown twee cray mustache ramps. Ramps gentrify tumblr skateboard synth knausgaard.	120	57
713	Iphone waistcoat street before they sold out. Meditation jean shorts paleo muggle magic pabst. Humblebrag sustainable heirloom chillwave pug jean shorts.	120	57
714	Tofu irony biodiesel green juice try-hard etsy migas. Sartorial +1 cred fingerstache. Wayfarers chia tousled photo booth williamsburg sartorial franzen. Cliche quinoa mustache wolf truffaut small batch keffiyeh.	117	58
715	Jean shorts pickled pbr&b cray kinfolk pinterest small batch. Portland plaid pickled salvia scenester chartreuse street.	117	58
716	Vegan tattooed skateboard bespoke. Cliche craft beer vinyl vhs scenester before they sold out hella.	120	58
717	Kinfolk polaroid forage farm-to-table yr austin heirloom messenger bag. Chia heirloom cliche you probably haven't heard of them vinegar everyday. Taxidermy park chicharrones intelligentsia photo booth mixtape microdosing. 3 wolf moon intelligentsia sriracha fashion axe.	120	59
718	Single-origin coffee bushwick paleo. Aesthetic whatever pork belly mumblecore drinking wes anderson. Taxidermy pickled selfies. Neutra brunch fixie food truck kinfolk mlkshk sartorial.	116	59
719	Gastropub mumblecore ethical put a bird on it forage wolf cronut. Cliche lomo try-hard aesthetic tattooed godard hammock.	115	59
720	Chia small batch blue bottle roof literally. Try-hard vinyl fixie celiac occupy hella tofu. Paleo yuccie cleanse godard echo salvia diy. Shoreditch squid tacos.	120	60
721	Swag you probably haven't heard of them chartreuse flexitarian bicycle rights photo booth chillwave. Waistcoat narwhal listicle banjo kogi humblebrag flannel. Etsy 3 wolf moon before they sold out kickstarter direct trade flexitarian bitters five dollar toast.	120	60
722	Chillwave yuccie cred. Kale chips keytar vinegar. Listicle pbr&b you probably haven't heard of them selvage 8-bit ugh.	115	60
723	Farm-to-table five dollar toast actually chambray. Phlogiston franzen fanny pack drinking seitan yolo raw denim paleo. Everyday intelligentsia bitters.	117	61
724	Venmo helvetica forage. Portland craft beer vegan pabst plaid leggings sartorial. Chillwave meggings you probably haven't heard of them. Tumblr master vice fingerstache flannel.	112	61
725	Tumblr thundercats neutra irony single-origin coffee food truck keffiyeh. Yr blue bottle flannel fashion axe. Aesthetic venmo skateboard poutine godard swag. Neutra direct trade heirloom pitchfork gentrify.	113	61
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Mackerson
--

COPY public.schema_migrations (version) FROM stdin;
20200611162119
20200611162343
20200611162721
20200611162937
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: Mackerson
--

COPY public.users (id, email, password_hash, password_salt) FROM stdin;
112	0haywood@kulas-yundt.biz	$2a$12$gaVFXeFPKoLhJmFprCzpqu067Jiwd2xL0MTigmQjGkpj.NTb7xtlO	$2a$12$gaVFXeFPKoLhJmFprCzpqu
113	1marc.hintz@bergnaum.name	$2a$12$H/2CeIVrOF0BsvzCTbRfTeV5XJMPeQSuRP7LzTLLiiiYduz11CC2u	$2a$12$H/2CeIVrOF0BsvzCTbRfTe
114	2darryl@grady.com	$2a$12$8bOy3GGvB9XJiY896OoyVeMZVGBhzkkPtPHk0wQKKqRnxTT6dO7/S	$2a$12$8bOy3GGvB9XJiY896OoyVe
115	3alyssa.beatty@treutel.net	$2a$12$lXV1qsZdb4p.k9xFmiN8ZOOWMBB.wBvO.yh2NBsrUKig0kZRQWT3K	$2a$12$lXV1qsZdb4p.k9xFmiN8ZO
116	4hedy_homenick@bartell-champlin.name	$2a$12$E5QDN4w36vVo8yROV0Gjd.W0Gc50PH7mJ5YTn8EIDPigaljoU5WGi	$2a$12$E5QDN4w36vVo8yROV0Gjd.
117	5leone.mann@spencer.net	$2a$12$zwDIDuQsxnATU7G6y1qrGObFEtedBMRSKU40s5Vd7Og2WsYRNh6r.	$2a$12$zwDIDuQsxnATU7G6y1qrGO
118	6marisha_hilpert@kunze-breitenberg.name	$2a$12$whKI.wNlGOYv9mqhvQDAIOfsj4ypncs7HT9lEXDzN5txJdKW1jjHu	$2a$12$whKI.wNlGOYv9mqhvQDAIO
119	7brenton_beer@dickens.name	$2a$12$GgZzL9kKPxGn/53z7BNO.e66quVzeeoiF.ZjYieASHI3fuWsDdIn6	$2a$12$GgZzL9kKPxGn/53z7BNO.e
120	8alisa@friesen-watsica.net	$2a$12$CUrYahvXjuUxp.U1fkQuaeaCInzIzSdEKU0qc8xaE7OExBDY0GzzW	$2a$12$CUrYahvXjuUxp.U1fkQuae
121	9deloris@jast.io	$2a$12$Zs7jqSW5MFVAzIdxb5BWv.zuQCX2NTezbtOiWClYvN9hFH3TQJ1om	$2a$12$Zs7jqSW5MFVAzIdxb5BWv.
\.


--
-- Name: destinations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Mackerson
--

SELECT pg_catalog.setval('public.destinations_id_seq', 61, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Mackerson
--

SELECT pg_catalog.setval('public.reviews_id_seq', 731, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Mackerson
--

SELECT pg_catalog.setval('public.users_id_seq', 121, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Mackerson
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: destinations destinations_pkey; Type: CONSTRAINT; Schema: public; Owner: Mackerson
--

ALTER TABLE ONLY public.destinations
    ADD CONSTRAINT destinations_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: Mackerson
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Mackerson
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: Mackerson
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: reviews fk_rails_74a66bd6c5; Type: FK CONSTRAINT; Schema: public; Owner: Mackerson
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_74a66bd6c5 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: reviews fk_rails_8133a103a2; Type: FK CONSTRAINT; Schema: public; Owner: Mackerson
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_8133a103a2 FOREIGN KEY (destination_id) REFERENCES public.destinations(id);


--
-- PostgreSQL database dump complete
--

