

create schema BD_Matski;
set search_path  = BD_Matski;


--
-- Name: article; Type: TABLE; Schema: bd_matski; Owner: carmigna
--

CREATE TABLE article (
    numarticle SERIAL NOT NULL,
    numcategorie integer NOT NULL,
    codetype character(1) NOT NULL,
    nomarticle character varying(50),
    referenceinterne character(10),
    codebarre character(13),
    prixvente numeric(10,2),
    coutachat numeric(10,2)
);


--
-- Name: categorie; Type: TABLE; Schema: bd_matski; Owner: carmigna
--

CREATE TABLE categorie (
    numcategorie SERIAL NOT NULL,
    cat_numcategorie2 integer,
    libellecategorie character varying(40)
);



--
-- Name: client; Type: TABLE; Schema: bd_matski; Owner: carmigna
--

CREATE TABLE client (
    numclient SERIAL NOT NULL,
    codeliste character(1) NOT NULL,
    codeetiquette character(2) NOT NULL,
    nomclient character varying(50),
    adresserueclient character varying(50),
    adressecodepostalclient character varying(10),
    adressevilleclient character varying(40),
    adressepaysclient character varying(30),
    telephoneclient character varying(12),
    mailclient character varying(60),
    nomcontact1 character varying(50),
    telephonecontact1 character varying(12),
    fonctioncontact1 character varying(20),
    nomcontact2 character varying(50),
    telephonecontact2 character varying(12),
    fonctioncontact2 character varying(20)
);


--
-- Name: commande; Type: TABLE; Schema: bd_matski; Owner: carmigna
--

CREATE TABLE commande (
    numcommande SERIAL NOT NULL,
    numclient integer NOT NULL,
    datecommande date,
    montantfrais numeric(10,2),
    montantht numeric(10,2),
    montantttc numeric(10,2)
);


--
-- Name: detailcommande; Type: TABLE; Schema: bd_matski; Owner: carmigna
--

CREATE TABLE detailcommande (
    numcommande integer NOT NULL,
    numarticle integer NOT NULL,
    quantitecommandee integer,
    quantitelivree integer
);

--
-- Name: listeprix; Type: TABLE; Schema: bd_matski; Owner: carmigna
--

CREATE TABLE listeprix (
    codeliste character(1) NOT NULL,
    libelleliste character varying(20)
);

--
-- Name: tarifvente; Type: TABLE; Schema: bd_matski; Owner: carmigna
--

CREATE TABLE tarifvente (
    numarticle integer NOT NULL,
    codeliste character(1) NOT NULL,
    prixvente numeric(10,2)
);


--
-- Name: typearticle; Type: TABLE; Schema: bd_matski; Owner: carmigna
--

CREATE TABLE typearticle (
    codetype character(1) NOT NULL,
    libelletype character varying(40)
);


/*==============================================================*/
/* Table : ETIQUETTE                                            */
/*==============================================================*/
create table etiquette (
   CODEETIQUETTE        CHAR(3)              not null,
   LIBELLEETIQUETTE     VARCHAR(70)          null,
   CODETYPETVA          INTEGER		   null
);




--
-- Name: article numarticle; Type: DEFAULT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY article ALTER COLUMN numarticle SET DEFAULT nextval('article_numarticle_seq'::regclass);


--
-- Name: categorie numcategorie; Type: DEFAULT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY categorie ALTER COLUMN numcategorie SET DEFAULT nextval('categorie_numcategorie_seq'::regclass);


--
-- Name: client numclient; Type: DEFAULT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY client ALTER COLUMN numclient SET DEFAULT nextval('client_numclient_seq'::regclass);


--
-- Name: commande numcommande; Type: DEFAULT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY commande ALTER COLUMN numcommande SET DEFAULT nextval('commande_numcommande_seq'::regclass);


--
-- Data for Name: article; Type: TABLE DATA; Schema: bd_matski; Owner: carmigna
--

INSERT INTO article VALUES (1, 14, 'P', 'SLIDY', 'PA1236    ', '3245673451456', 4.50, 3.20);
INSERT INTO article VALUES (2, 14, 'P', 'QUICKY', 'PA1237    ', '3245674451456', 3.50, 3.00);
INSERT INTO article VALUES (3, 14, 'P', 'WEEZ 2', 'PA1238    ', '3245673451457', 19.00, 16.00);
INSERT INTO article VALUES (4, 14, 'P', 'WAVE1', 'PA1239    ', '3245673451458', 12.00, 10.00);
INSERT INTO article VALUES (5, 14, 'P', 'WEEZ  1', 'PA1240    ', '3245673451460', 10.00, 8.20);
INSERT INTO article VALUES (6, 14, 'P', 'WAVE 2', 'PA1241    ', '3245673451461', 14.00, 12.00);
INSERT INTO article VALUES (7, 13, 'P', 'YOONER', 'PA1242    ', '3245673451462', 55.00, 0.00);
INSERT INTO article VALUES (8, 5, 'P', 'GHOST  90', 'PA1243    ', '3245673451463', 170.00, 100.00);
INSERT INTO article VALUES (9, 5, 'P', 'LIVE FIT 60', 'PA1244    ', '3245673451464', 100.00, 60.00);
INSERT INTO article VALUES (10, 5, 'P', 'LIVE FIT 70', 'PA1245    ', '3245673451465', 120.00, 65.00);
INSERT INTO article VALUES (11, 5, 'P', 'QUES MAX 110', 'PA1246    ', '3245673451466', 320.00, 180.00);
INSERT INTO article VALUES (12, 5, 'P', 'QUES MAX BC 120', 'PA1247    ', '3245673451467', 400.00, 220.00);
INSERT INTO article VALUES (13, 5, 'P', 'LIVE FIT 130', 'PA1248    ', '3245673451468', 220.00, 130.00);
INSERT INTO article VALUES (14, 5, 'P', 'X PRO 110', 'PA1249    ', '3245673451469', 300.00, 170.00);
INSERT INTO article VALUES (15, 18, 'P', 'Q-90', 'PA1250    ', '3245673451470', 350.00, 280.00);
INSERT INTO article VALUES (16, 18, 'P', 'Q-LAB', 'PA1251    ', '3245673451471', 650.00, 550.00);
INSERT INTO article VALUES (17, 18, 'P', 'Q-115', 'PA1252    ', '3245673451472', 500.00, 380.00);
INSERT INTO article VALUES (18, 18, 'P', 'Q-85', 'PA1253    ', '3245673451473', 350.00, 250.00);
INSERT INTO article VALUES (19, 18, 'P', 'Q-98', 'PA1254    ', '3245673451474', 400.00, 350.00);
INSERT INTO article VALUES (20, 15, 'P', 'EXPERIENCE 83 TPX', 'PA1234    ', '3245673451236', 548.00, 255.00);
INSERT INTO article VALUES (21, 15, 'P', 'SMOKE', 'PA1255    ', '3245673451475', 400.00, 230.00);
INSERT INTO article VALUES (22, 15, 'P', 'VR27', 'PA1256    ', '3245673451476', 250.00, 150.00);
INSERT INTO article VALUES (23, 15, 'P', 'X-LANDER 6.0', 'PA1257    ', '3245673451477', 132.40, 95.60);
INSERT INTO article VALUES (24, 15, 'P', 'VR07', 'PA1258    ', '3245673451478', 500.00, 300.00);
INSERT INTO article VALUES (25, 15, 'P', 'AFFINITY AIR', 'PA1259    ', '3245673451479', 320.00, 200.00);
INSERT INTO article VALUES (26, 15, 'P', 'BBR 9.0', 'PA1260    ', '3245673451480', 500.00, 380.00);
INSERT INTO article VALUES (27, 15, 'P', 'VANTAGE ALIBI', 'PA1261    ', '3245673451481', 548.00, 200.00);
INSERT INTO article VALUES (28, 21, 'P', 'SL SERIE', 'PA1235    ', '3245673451456', 549.00, 345.00);
INSERT INTO article VALUES (29, 21, 'P', 'XLT', 'PA1262    ', '3245673451482', 470.00, 260.00);
INSERT INTO article VALUES (30, 21, 'P', 'SICKSTICK', 'PA1263    ', '3245673451483', 430.00, 230.00);
INSERT INTO article VALUES (31, 21, 'P', 'RESERVE', 'PA1264    ', '3245673451484', 410.00, 230.00);
INSERT INTO article VALUES (32, 21, 'P', 'DERVY', 'PA1265    ', '3245673451485', 300.00, 160.00);


--
-- Data for Name: categorie; Type: TABLE DATA; Schema: bd_matski; Owner: carmigna
--

INSERT INTO categorie VALUES (1, NULL, 'Matériel ski alpins');
INSERT INTO categorie VALUES (2, NULL, 'Matériel de snowboard');
INSERT INTO categorie VALUES (3, NULL, 'Matériel ski nordique');
INSERT INTO categorie VALUES (4, NULL, 'Matériel ski montagne');
INSERT INTO categorie VALUES (5, 1, 'Chaussures');
INSERT INTO categorie VALUES (6, 1, 'Skis');
INSERT INTO categorie VALUES (7, 1, 'Batons');
INSERT INTO categorie VALUES (8, 2, 'Chaussures');
INSERT INTO categorie VALUES (9, 2, 'Snowboards');
INSERT INTO categorie VALUES (10, 3, 'Chaussures');
INSERT INTO categorie VALUES (11, 3, 'Batons');
INSERT INTO categorie VALUES (12, 3, 'Skis');
INSERT INTO categorie VALUES (13, 4, 'Paret');
INSERT INTO categorie VALUES (14, 4, 'Luges');
INSERT INTO categorie VALUES (15, 6, 'Polyvalent');
INSERT INTO categorie VALUES (16, 6, 'Freestyle');
INSERT INTO categorie VALUES (17, 6, 'Racing');
INSERT INTO categorie VALUES (18, 6, 'Freeride');
INSERT INTO categorie VALUES (19, 6, 'Randonnée');
INSERT INTO categorie VALUES (20, 9, 'Polyvalent');
INSERT INTO categorie VALUES (21, 9, 'Freestyle');
INSERT INTO categorie VALUES (22, 9, 'Alpine');
INSERT INTO categorie VALUES (23, 9, 'Freeride');
INSERT INTO categorie VALUES (24, 12, 'Skating');
INSERT INTO categorie VALUES (25, 12, 'Alternatif');


--
-- Data for Name: client; Type: TABLE DATA; Schema: bd_matski; Owner: carmigna
--

INSERT INTO client VALUES (1, 'E', 'FR', 'GO Sport Agen', 'Zac agen Sud', '47000', 'Agen', 'France', '043423245476', 'gosportA@gmail.fr', 'Fallon', '043423245477', 'Commercial', 'Colquit', '043423245478', 'Responsable');
INSERT INTO client VALUES (2, 'E', 'FR', 'GO Sport Albi', '50 route de Saint Juery', '81000', 'Albi', 'France', '043623245476', 'gosportAlbi@gmail.fr', 'Darigan', '043623245477', 'Responsable', 'Caney', '043623245478', 'Responsable ventes');
INSERT INTO client VALUES (3, 'E', 'FR', 'GO Sport Nantes', 'Place de Bretagne', '74000', 'Annecy', 'France', '044023245476', 'gosportNantes@gmail.fr', 'Mudrell', '044023245477', 'Acheteur', 'Layton', '044023245478', 'Responsable');
INSERT INTO client VALUES (4, 'E', 'FR', 'GO Sport Aulnay', 'O Parinot', '93600', 'Aulnay sous Bois', 'France', '044223245476', 'gosportAnnecy@gmail.fr', 'Betser', '044223245477', 'Vendeur', 'Polet', '044223245478', 'Accueil');
INSERT INTO client VALUES (5, 'E', 'FR', 'GO Sport Paris 12', '135 rue Daumesnil', '75012', 'Paris', 'France', '044423245476', 'gosportAnnecy@gmail.fr', 'Weaver', '044423245477', 'Commercial', 'Doge', '044423245478', 'Responsable');
INSERT INTO client VALUES (6, 'E', 'FR', 'GO Sport Orange', 'Les vignes', '84100', 'Orange', 'France', '044523245476', 'gosportAnnecy@gmail.fr', 'Noades', '044523245477', 'Acheteur', 'Stegers', '044523245478', 'Commercial');
INSERT INTO client VALUES (7, 'E', 'FR', 'GO Sport Perpignan', '1050 Avenue d''Espagne', '66000', 'Perpignan', 'France', '044623245476', 'gosportAnnecy@gmail.fr', 'Alessandrucci', '044623245477', 'Accueil', 'Rosson', '044623245478', 'Responsable');
INSERT INTO client VALUES (8, 'E', 'CH', 'OCHSNER Sport Neuchatel', '10 Rue de la pierre à Mazel', '2000', 'Neuchâtel', 'Suisse', '0336237250', 'ochsnerneu@gmail.cf', 'Veermer', '0336237251', 'Accueil', 'Keerl', '0336237252', 'Responsable ventes');
INSERT INTO client VALUES (9, 'E', 'CH', 'OCHSNER Sport Bull', '4 rue de l''europe', '1630', 'Bulle', 'Suisse', '0337237250', 'ochsnerbulle@gmail.cf', 'Riddeough', '0337237251', 'Acheteur', 'Fitz', '0337237251', 'Commercial');
INSERT INTO client VALUES (10, 'E', 'CH', 'OCHSNER Sport Luzern', '50 Hertensteinstrasse', '6004', 'Luzerun', 'Suisse', '0338237250', 'ochsnerluzern@gmail.cf', 'Maclan', '0338237251', 'Commercial', 'Saudra', '0338237252', 'Responsable ventes');
INSERT INTO client VALUES (11, 'E', 'CH', 'OCHSNER Sport Stans', '88 Stansstaderstrasse', '6370', 'Stans', 'Suisse', '0334237250', 'ochsnerstans@gmail.cf', 'Paolino', '0334237251', 'Accueil', 'Odde', '0334237252', 'Commercial');
INSERT INTO client VALUES (12, 'E', 'AT', 'SPORT 2000 Natter Talstation Bergbahnen', 'Hinterbündt 380', '6881', 'Mellau', 'Autriche', '43535666603', 'sportnatter@gmail.cf', 'Emeney', '43535666604', 'Accueil', NULL, NULL, NULL);
INSERT INTO client VALUES (13, 'E', 'AT', 'Olympiaplatz 2 EKZ Stadion Center', 'Hinterbündt 380', '1020', 'Wien', 'Autriche', '43635666603', 'olym@gmail.cf', 'Keymer', '43635666604', 'Accueil', 'Dutteridge', '43635666605', 'Vendeur');
INSERT INTO client VALUES (14, 'E', 'AT', 'SPORT 2000 Bich', 'Bichlstraße 7', '6370', 'Kitzbühel', 'Autriche', '43735666606', 'sportbich@gmail.cf', 'Heady', '43735666605', 'Commercial', 'Piddletown', '43735666603', 'Vendeur');
INSERT INTO client VALUES (15, 'E', 'IT', 'Foot Locker Rome', 'Via Tuscolana 855', '174', 'Rome', 'Italie', '390676985609', 'footlockerrome@gmail.cf', 'Heady', '390676985610', 'Commercial', 'Piddletown', '390676985608', 'Vendeur');
INSERT INTO client VALUES (16, 'E', 'IT', 'Foot Locker Firenze', 'Borgo S. Lorenzo, 19/R', '50123', 'Firenze FI', 'Italie', '390776985609', 'footlockerfirenze@gmail.cf', 'Heady', '390776985610', 'Accueil', 'Piddletown', '390776985608', 'Vendeur');
INSERT INTO client VALUES (17, 'E', 'IT', 'The North Face Pavia', 'Corso Str. Nuova, 24', '27100', 'Pavia', 'Italie', '390876985609', 'footlockerpavia@gmail.cf', 'Heady', '390876985610', 'Commercial', NULL, NULL, NULL);
INSERT INTO client VALUES (18, 'E', 'IT', 'The North Face Reggio', 'Corso Giuseppe Garibaldi 11', '42121', 'Reggio Emilia RE', 'Italie', '390576985609', 'footlockerrome@gmail.cf', 'Heady', '390576985610', 'Accueil', NULL, NULL, NULL);
INSERT INTO client VALUES (19, 'E', 'GB', 'Nike Town', '236 Oxford St', '11345', 'Londres', 'Royaume-Uni', '442076604453', 'nikelondon@gmail.cf', 'Kirkwood', '442076604454', 'Acheteur', 'Benny', '442076604455', 'Vendeur');
INSERT INTO client VALUES (20, 'E', 'GB', 'Lillywhites', '24-36 Regent St', '42121', 'Londres', 'Royaume-Uni', '442076604453', 'Lilly@gmail.cf', 'Forbes', '442176604454', 'Accueil', 'Easum', '442176604455', 'Acheteur');


--
-- Data for Name: commande; Type: TABLE DATA; Schema: bd_matski; Owner: carmigna
--

INSERT INTO commande VALUES (1, 1, '2022-07-12', 0.00, 5195.00, 5195.00);
INSERT INTO commande VALUES (2, 2, '2022-07-12', 0.00, 17045.00, 17045.00);
INSERT INTO commande VALUES (3, 3, '2022-07-12', 0.00, 512.00, 512.00);
INSERT INTO commande VALUES (4, 4, '2022-07-12', 0.00, 4284.00, 4384.00);
INSERT INTO commande VALUES (5, 5, '2022-07-12', 0.00, 6941.60, 6941.60);
INSERT INTO commande VALUES (6, 8, '2022-07-12', 0.00, 2870.00, 2870.00);
INSERT INTO commande VALUES (7, 9, '2022-07-12', 0.00, 3000.00, 3000.00);
INSERT INTO commande VALUES (8, 12, '2022-07-12', 200.00, 6650.00, 6450.00);
INSERT INTO commande VALUES (9, 13, '2022-07-12', 200.00, 19985.00, 19785.00);
INSERT INTO commande VALUES (10, 16, '2022-07-12', 200.00, 32800.00, 32600.00);
INSERT INTO commande VALUES (11, 17, '2022-07-12', 0.00, 32800.00, 32600.00);
INSERT INTO commande VALUES (12, 1, '2022-08-01', 0.00, 32600.00, 32600.00);
INSERT INTO commande VALUES (13, 2, '2022-08-01', 0.00, 5835.00, 5835.00);
INSERT INTO commande VALUES (14, 3, '2022-08-01', 0.00, 17054.00, 17054.00);
INSERT INTO commande VALUES (15, 4, '2022-08-01', 0.00, 10376.00, 10376.00);
INSERT INTO commande VALUES (16, 5, '2022-08-01', 0.00, 6970.00, 6970.00);
INSERT INTO commande VALUES (17, 8, '2022-08-01', 0.00, 3000.00, 3000.00);
INSERT INTO commande VALUES (18, 9, '2022-08-01', 0.00, 6450.00, 6450.00);
INSERT INTO commande VALUES (19, 12, '2022-08-01', 200.00, 19985.00, 19785.00);
INSERT INTO commande VALUES (20, 13, '2022-08-01', 200.00, 11840.00, 11640.00);
INSERT INTO commande VALUES (21, 16, '2022-08-01', 200.00, 11840.00, 11640.00);
INSERT INTO commande VALUES (22, 17, '2022-08-01', 200.00, 22887.50, 22687.50);
INSERT INTO commande VALUES (23, 1, '2022-09-10', 0.00, 5142.50, 5142.50);
INSERT INTO commande VALUES (24, 2, '2022-09-10', 0.00, 5454.00, 5454.00);
INSERT INTO commande VALUES (25, 3, '2022-09-10', 0.00, 12080.00, 12080.00);
INSERT INTO commande VALUES (26, 8, '2022-09-10', 0.00, 5950.00, 5950.00);
INSERT INTO commande VALUES (27, 9, '2022-09-10', 0.00, 18500.00, 18500.00);
INSERT INTO commande VALUES (28, 10, '2022-09-10', 0.00, 10500.00, 10500.00);
INSERT INTO commande VALUES (29, 11, '2022-09-10', 0.00, 15817.50, 15817.50);
INSERT INTO commande VALUES (30, 12, '2022-09-10', 200.00, 11140.00, 11140.00);
INSERT INTO commande VALUES (31, 16, '2022-09-10', 200.00, 4800.00, 4800.00);
INSERT INTO commande VALUES (32, 17, '2022-09-10', 200.00, 7500.00, 7500.00);


--
-- Data for Name: detailcommande; Type: TABLE DATA; Schema: bd_matski; Owner: carmigna
--

INSERT INTO detailcommande VALUES (1, 1, 10, 10);
INSERT INTO detailcommande VALUES (1, 5, 15, 10);
INSERT INTO detailcommande VALUES (1, 10, 15, 15);
INSERT INTO detailcommande VALUES (1, 11, 10, 10);
INSERT INTO detailcommande VALUES (2, 1, 10, 10);
INSERT INTO detailcommande VALUES (2, 17, 20, 20);
INSERT INTO detailcommande VALUES (2, 18, 20, 20);
INSERT INTO detailcommande VALUES (3, 3, 8, 0);
INSERT INTO detailcommande VALUES (3, 4, 15, 0);
INSERT INTO detailcommande VALUES (3, 5, 18, 0);
INSERT INTO detailcommande VALUES (4, 20, 8, 8);
INSERT INTO detailcommande VALUES (5, 21, 5, 5);
INSERT INTO detailcommande VALUES (5, 22, 7, 5);
INSERT INTO detailcommande VALUES (5, 23, 9, 9);
INSERT INTO detailcommande VALUES (5, 24, 4, 4);
INSERT INTO detailcommande VALUES (6, 31, 7, 7);
INSERT INTO detailcommande VALUES (7, 32, 10, 10);
INSERT INTO detailcommande VALUES (8, 30, 15, 15);
INSERT INTO detailcommande VALUES (9, 29, 15, 15);
INSERT INTO detailcommande VALUES (9, 28, 15, 15);
INSERT INTO detailcommande VALUES (9, 32, 15, 15);
INSERT INTO detailcommande VALUES (10, 25, 20, 20);
INSERT INTO detailcommande VALUES (10, 26, 25, 25);
INSERT INTO detailcommande VALUES (10, 27, 25, 25);
INSERT INTO detailcommande VALUES (11, 25, 20, 20);
INSERT INTO detailcommande VALUES (11, 26, 25, 25);
INSERT INTO detailcommande VALUES (11, 27, 25, 25);
INSERT INTO detailcommande VALUES (12, 25, 20, 20);
INSERT INTO detailcommande VALUES (12, 26, 25, 25);
INSERT INTO detailcommande VALUES (12, 27, 25, 25);
INSERT INTO detailcommande VALUES (13, 1, 10, 10);
INSERT INTO detailcommande VALUES (13, 5, 15, 10);
INSERT INTO detailcommande VALUES (13, 10, 15, 15);
INSERT INTO detailcommande VALUES (13, 11, 12, 12);
INSERT INTO detailcommande VALUES (14, 1, 12, 12);
INSERT INTO detailcommande VALUES (14, 17, 20, 22);
INSERT INTO detailcommande VALUES (14, 18, 20, 22);
INSERT INTO detailcommande VALUES (15, 3, 8, 8);
INSERT INTO detailcommande VALUES (15, 4, 15, 15);
INSERT INTO detailcommande VALUES (15, 5, 18, 18);
INSERT INTO detailcommande VALUES (15, 20, 18, 18);
INSERT INTO detailcommande VALUES (16, 31, 17, 17);
INSERT INTO detailcommande VALUES (17, 32, 10, 10);
INSERT INTO detailcommande VALUES (18, 30, 15, 15);
INSERT INTO detailcommande VALUES (19, 29, 15, 15);
INSERT INTO detailcommande VALUES (19, 28, 15, 15);
INSERT INTO detailcommande VALUES (19, 32, 15, 15);
INSERT INTO detailcommande VALUES (20, 25, 20, 20);
INSERT INTO detailcommande VALUES (20, 26, 5, 5);
INSERT INTO detailcommande VALUES (20, 27, 5, 5);
INSERT INTO detailcommande VALUES (21, 25, 20, 20);
INSERT INTO detailcommande VALUES (21, 26, 5, 5);
INSERT INTO detailcommande VALUES (21, 27, 5, 5);
INSERT INTO detailcommande VALUES (22, 25, 20, 20);
INSERT INTO detailcommande VALUES (22, 26, 5, 5);
INSERT INTO detailcommande VALUES (22, 27, 25, 25);
INSERT INTO detailcommande VALUES (22, 2, 25, 25);
INSERT INTO detailcommande VALUES (23, 6, 10, 10);
INSERT INTO detailcommande VALUES (23, 5, 15, 10);
INSERT INTO detailcommande VALUES (23, 2, 15, 15);
INSERT INTO detailcommande VALUES (23, 19, 12, 12);
INSERT INTO detailcommande VALUES (24, 1, 12, 12);
INSERT INTO detailcommande VALUES (24, 8, 20, 22);
INSERT INTO detailcommande VALUES (24, 9, 20, 22);
INSERT INTO detailcommande VALUES (25, 12, 8, 8);
INSERT INTO detailcommande VALUES (25, 13, 15, 15);
INSERT INTO detailcommande VALUES (25, 5, 18, 18);
INSERT INTO detailcommande VALUES (25, 14, 18, 18);
INSERT INTO detailcommande VALUES (26, 18, 17, 17);
INSERT INTO detailcommande VALUES (27, 18, 10, 10);
INSERT INTO detailcommande VALUES (27, 17, 10, 10);
INSERT INTO detailcommande VALUES (27, 16, 10, 10);
INSERT INTO detailcommande VALUES (27, 15, 10, 10);
INSERT INTO detailcommande VALUES (28, 30, 15, 15);
INSERT INTO detailcommande VALUES (28, 8, 15, 15);
INSERT INTO detailcommande VALUES (28, 9, 15, 15);
INSERT INTO detailcommande VALUES (29, 19, 15, 15);
INSERT INTO detailcommande VALUES (29, 1, 15, 15);
INSERT INTO detailcommande VALUES (29, 16, 15, 15);
INSERT INTO detailcommande VALUES (30, 25, 20, 20);
INSERT INTO detailcommande VALUES (30, 19, 5, 5);
INSERT INTO detailcommande VALUES (30, 27, 5, 5);
INSERT INTO detailcommande VALUES (31, 25, 15, 15);
INSERT INTO detailcommande VALUES (32, 26, 15, 15);


--
-- Data for Name: etiquette; Type: TABLE DATA; Schema: bd_matski; Owner: carmigna
--

INSERT INTO etiquette VALUES ('FR ', 'Client Francais', 1);
INSERT INTO etiquette VALUES ('GB ', 'Client Anglais', 2);
INSERT INTO etiquette VALUES ('CH ', 'Client Suisse', 2);
INSERT INTO etiquette VALUES ('AT ', 'Client Autrichien', 3);
INSERT INTO etiquette VALUES ('IT ', 'Client Italien', 3);


--
-- Data for Name: listeprix; Type: TABLE DATA; Schema: bd_matski; Owner: carmigna
--

INSERT INTO listeprix VALUES ('E', 'Liste prix euros');
INSERT INTO listeprix VALUES ('D', 'Liste prix dollars');
INSERT INTO listeprix VALUES ('S', 'Liste prix special');
INSERT INTO listeprix VALUES ('P', 'Liste prix promotion');


--
-- Data for Name: tarifvente; Type: TABLE DATA; Schema: bd_matski; Owner: carmigna
--

INSERT INTO tarifvente VALUES (1, 'E', 4.50);
INSERT INTO tarifvente VALUES (2, 'E', 3.50);
INSERT INTO tarifvente VALUES (3, 'E', 19.00);
INSERT INTO tarifvente VALUES (4, 'E', 12.00);
INSERT INTO tarifvente VALUES (5, 'E', 10.00);
INSERT INTO tarifvente VALUES (6, 'E', 14.00);
INSERT INTO tarifvente VALUES (7, 'E', 55.00);
INSERT INTO tarifvente VALUES (8, 'E', 170.00);
INSERT INTO tarifvente VALUES (9, 'E', 100.00);
INSERT INTO tarifvente VALUES (10, 'E', 120.00);
INSERT INTO tarifvente VALUES (11, 'E', 320.00);
INSERT INTO tarifvente VALUES (12, 'E', 400.00);
INSERT INTO tarifvente VALUES (13, 'E', 220.00);
INSERT INTO tarifvente VALUES (14, 'E', 300.00);
INSERT INTO tarifvente VALUES (15, 'E', 350.00);
INSERT INTO tarifvente VALUES (16, 'E', 650.00);
INSERT INTO tarifvente VALUES (17, 'E', 500.00);
INSERT INTO tarifvente VALUES (18, 'E', 350.00);
INSERT INTO tarifvente VALUES (19, 'E', 400.00);
INSERT INTO tarifvente VALUES (20, 'E', 548.00);
INSERT INTO tarifvente VALUES (21, 'E', 400.00);
INSERT INTO tarifvente VALUES (22, 'E', 250.00);
INSERT INTO tarifvente VALUES (23, 'E', 132.40);
INSERT INTO tarifvente VALUES (24, 'E', 500.00);
INSERT INTO tarifvente VALUES (25, 'E', 320.00);
INSERT INTO tarifvente VALUES (26, 'E', 500.00);
INSERT INTO tarifvente VALUES (27, 'E', 548.00);
INSERT INTO tarifvente VALUES (28, 'E', 549.00);
INSERT INTO tarifvente VALUES (29, 'E', 470.00);
INSERT INTO tarifvente VALUES (30, 'E', 430.00);
INSERT INTO tarifvente VALUES (31, 'E', 410.00);
INSERT INTO tarifvente VALUES (32, 'E', 300.00);


--
-- Data for Name: typearticle; Type: TABLE DATA; Schema: bd_matski; Owner: carmigna
--

INSERT INTO typearticle VALUES ('C', 'Consommable');
INSERT INTO typearticle VALUES ('P', 'Produit Stockable');
INSERT INTO typearticle VALUES ('S', 'Service');


--
-- Name: article_numarticle_seq; Type: SEQUENCE SET; Schema: bd_matski; Owner: carmigna
--

SELECT pg_catalog.setval('article_numarticle_seq', 32, true);


--
-- Name: categorie_numcategorie_seq; Type: SEQUENCE SET; Schema: bd_matski; Owner: carmigna
--

SELECT pg_catalog.setval('categorie_numcategorie_seq', 1, false);


--
-- Name: client_numclient_seq; Type: SEQUENCE SET; Schema: bd_matski; Owner: carmigna
--

SELECT pg_catalog.setval('client_numclient_seq', 20, true);


--
-- Name: commande_numcommande_seq; Type: SEQUENCE SET; Schema: bd_matski; Owner: carmigna
--

SELECT pg_catalog.setval('commande_numcommande_seq', 32, true);


--
-- Name: article pk_article; Type: CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY article
    ADD CONSTRAINT pk_article PRIMARY KEY (numarticle);


--
-- Name: categorie pk_categorie; Type: CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY categorie
    ADD CONSTRAINT pk_categorie PRIMARY KEY (numcategorie);


--
-- Name: client pk_client; Type: CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY client
    ADD CONSTRAINT pk_client PRIMARY KEY (numclient);


--
-- Name: commande pk_commande; Type: CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY commande
    ADD CONSTRAINT pk_commande PRIMARY KEY (numcommande);


--
-- Name: detailcommande pk_detailcommande; Type: CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY detailcommande
    ADD CONSTRAINT pk_detailcommande PRIMARY KEY (numcommande, numarticle);


--
-- Name: etiquette pk_etiquette; Type: CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY etiquette
    ADD CONSTRAINT pk_etiquette PRIMARY KEY (codeetiquette);


--
-- Name: listeprix pk_listeprix; Type: CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY listeprix
    ADD CONSTRAINT pk_listeprix PRIMARY KEY (codeliste);


--
-- Name: tarifvente pk_tarifvente; Type: CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY tarifvente
    ADD CONSTRAINT pk_tarifvente PRIMARY KEY (numarticle, codeliste);


--
-- Name: typearticle pk_typearticle; Type: CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY typearticle
    ADD CONSTRAINT pk_typearticle PRIMARY KEY (codetype);


--
-- Name: article fk_article_estlie_typearti; Type: FK CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY article
    ADD CONSTRAINT fk_article_estlie_typearti FOREIGN KEY (codetype) REFERENCES typearticle(codetype);


--
-- Name: article fk_article_faitparti_categori; Type: FK CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY article
    ADD CONSTRAINT fk_article_faitparti_categori FOREIGN KEY (numcategorie) REFERENCES categorie(numcategorie);


--
-- Name: categorie fk_categori_sedecompo_categori; Type: FK CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY categorie
    ADD CONSTRAINT fk_categori_sedecompo_categori FOREIGN KEY (cat_numcategorie2) REFERENCES categorie(numcategorie);


--
-- Name: client fk_client_dispose_listepri; Type: FK CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY client
    ADD CONSTRAINT fk_client_dispose_listepri FOREIGN KEY (codeliste) REFERENCES listeprix(codeliste);


--
-- Name: client fk_client_regroupe_etiquett; Type: FK CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY client
    ADD CONSTRAINT fk_client_regroupe_etiquett FOREIGN KEY (codeetiquette) REFERENCES etiquette(codeetiquette);


--
-- Name: commande fk_commande_appartien_client; Type: FK CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY commande
    ADD CONSTRAINT fk_commande_appartien_client FOREIGN KEY (numclient) REFERENCES client(numclient);


--
-- Name: detailcommande fk_detailco_detailcom_article; Type: FK CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY detailcommande
    ADD CONSTRAINT fk_detailco_detailcom_article FOREIGN KEY (numarticle) REFERENCES article(numarticle);


--
-- Name: detailcommande fk_detailco_detailcom_commande; Type: FK CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY detailcommande
    ADD CONSTRAINT fk_detailco_detailcom_commande FOREIGN KEY (numcommande) REFERENCES commande(numcommande);


--
-- Name: tarifvente fk_tarifven_tarifvent_article; Type: FK CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY tarifvente
    ADD CONSTRAINT fk_tarifven_tarifvent_article FOREIGN KEY (numarticle) REFERENCES article(numarticle);


--
-- Name: tarifvente fk_tarifven_tarifvent_listepri; Type: FK CONSTRAINT; Schema: bd_matski; Owner: carmigna
--

ALTER TABLE ONLY tarifvente
    ADD CONSTRAINT fk_tarifven_tarifvent_listepri FOREIGN KEY (codeliste) REFERENCES listeprix(codeliste);


--
-- PostgreSQL database dump complete
--

