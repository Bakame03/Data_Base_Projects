CREATE TABLE article (
    numarticle SERIAL PRIMARY KEY ,
    numcategorie integer NOT NULL,
    codetype character(1) NOT NULL,
    nomarticle character varying(50),
    referenceinterne character(10),
    codebarre character(13),
    prixvente numeric(10,2),
    coutachat numeric(10,2),
	CONSTRAINT fk_article_typearti FOREIGN KEY (codetype) REFERENCES typearticle(codetype),
	CONSTRAINT fk_article_categori FOREIGN KEY (numcategorie) REFERENCES categorie(numcategorie) );


CREATE TABLE categorie (
    numcategorie SERIAL PRIMARY KEY ,
    cat_numcategorie2 integer,
    libellecategorie character varying(40),
	CONSTRAINT fk_categori_sedecompo_categori FOREIGN KEY (cat_numcategorie2) REFERENCES categorie(numcategorie)
);



CREATE TABLE client (
    numclient SERIAL PRIMARY KEY ,
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
    fonctioncontact2 character varying(20),
	 CONSTRAINT fk_client_listepri FOREIGN KEY (codeliste) REFERENCES listeprix(codeliste),
    CONSTRAINT fk_client_etiquett FOREIGN KEY (codeetiquette) REFERENCES etiquette(codeetiquette)

);


CREATE TABLE commande (
    numcommande SERIAL PRIMARY KEY ,
    numclient integer NOT NULL,
    datecommande date,
    montantfrais numeric(10,2),
    montantht numeric(10,2),
    montantttc numeric(10,2),
    CONSTRAINT fk_commande_client FOREIGN KEY (numclient) REFERENCES client(numclient) 
);



CREATE TABLE detailcommande (
    numcommande integer NOT NULL,
    numarticle integer NOT NULL,
    quantitecommandee integer,
    quantitelivree integer,
	CONSTRAINT pk_detailcommande PRIMARY KEY (numcommande, numarticle),
	CONSTRAINT fk_detailco_article FOREIGN KEY (numarticle) REFERENCES article(numarticle),
	CONSTRAINT fk_detailco_commande FOREIGN KEY (numcommande) REFERENCES commande(numcommande)
);


CREATE TABLE listeprix (
    codeliste character(1) PRIMARY KEY,
    libelleliste character varying(20)
);

CREATE TABLE tarifvente (
    numarticle integer NOT NULL,
    codeliste character(1) NOT NULL,
    prixvente numeric(10,2),
	CONSTRAINT pk_tarifvente PRIMARY KEY (numarticle, codeliste),
	CONSTRAINT fk_tarifven_article FOREIGN KEY (numarticle) REFERENCES article(numarticle),
	CONSTRAINT fk_tarifven_listepri FOREIGN KEY (codeliste) REFERENCES listeprix(codeliste)
);



CREATE TABLE typearticle (
    codetype character(1) PRIMARY KEY,
    libelletype character varying(40)
);


create table etiquette (
   CODEETIQUETTE        CHAR(3)              PRIMARY KEY,
   LIBELLEETIQUETTE     VARCHAR(70)          null,
   CODETYPETVA          INTEGER		   	null
);




