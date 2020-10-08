CREATE DATABASE dbPortfolio;
CREATE TABLE rentner (
    Versicherungs_Nr INTEGER,
    Nachname VARCHAR(70), 
    Vorname VARCHAR(70), 
    Rentenart VARCHAR(20),
    Rentenhoehe FLOAT,
    Arbeitgeber_ID INTEGER,
    PRIMARY KEY (Versicherungs_Nr)
    );
CREATE TABLE vertrag (
    Vertrags_ID INTEGER,
    Vertragsstatus VARCHAR(20),
    Typ VARCHAR(10),
    Abschlussdatum DATE,
    Versicherungs_Nr INTEGER,
    PRIMARY KEY (Vertrags_ID)
);
CREATE TABLE arbeitgeber (
    Arbeitgeber_ID INTEGER,
    Adress_ID INTEGER,
    Firmenname VARCHAR(120),
    Mitarbeiter_Nr INTEGER,
    Abrechnungsverband VARCHAR(10),
    PRIMARY KEY (Arbeitgeber_ID)
);
CREATE TABLE key_account_manager (
    Mitarbeiter_Nr INTEGER,
    Vorname VARCHAR(70),
    Nachname  VARCHAR(70),
    Eintrittsdatum DATE,
    PRIMARY KEY (Mitarbeiter_Nr)
);
CREATE TABLE adresse (
    Adress_ID INTEGER,
    Straße VARCHAR(70),
    Hausnummer VARCHAR(10),
    Postleitzahl INTEGER,
    PRIMARY KEY (Adress_ID)
);
CREATE TABLE ort (
    Postleitzahl INTEGER,
    Ortsname VARCHAR(70),
    PRIMARY KEY (Postleitzahl)
);
CREATE TABLE versicherter (
    Versicherungs_Nr INTEGER,
    Nachname VARCHAR(70),
    Vorname VARCHAR(70),
    Geburtsdatum DATE,
    Adress_ID INTEGER,
    Arbeitgeber_ID INTEGER,
    Gehalt FLOAT,
    PRIMARY KEY (Versicherungs_Nr)
);

SAVEPOINT vor_insert;

INSERT INTO rentner (Versicherungs_Nr, Nachname, Vorname, Rentenart, Rentenhoehe, Arbeitgeber_ID)
VALUES ('Jutta', 'Müller', '0819', 3500), --beispiele, bitte mit unseren Daten füllen
(NULL, 'Groß', '0820', NULL);


INSERT INTO vertrag (Vertrags_ID, Vertragsstatus, Typ, Abschlussdatum, Versicherungs_Nr)
Values ('101', ),
(); --bitte Beispieldaten einfügen


INSERT INTO arbeitgeber (Arbeitgeber_ID, Adress_ID, Firmenname, Mitarbeiter_Nr, Abrechnungsverband)
VALUES (),
(), --bitte Beispieldaten einfügen
();


INSERT INTO key_account_manager (Mitarbeiter_Nr, Vorname, Nachname, Eintrittsdatum)
VALUES (),
(), --bitte Beispieldaten einfügen
();


INSERT INTO adresse (Adress_ID, Straße, Hausnummer, Postleitzahl)
VALUES (),
(), --bitte Beispieldaten einfügen
();


INSERT INTO ort (Postleitzahl, Ortsname)
VALUES (),
(), --bitte Beispieldaten einfügen
();