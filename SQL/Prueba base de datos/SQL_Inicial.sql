-- Tabla Zona
CREATE TABLE zona (
    id_zona      NUMBER(2) NOT NULL,
    nom_zona     VARCHAR2(10) NOT NULL
);
ALTER TABLE zona ADD CONSTRAINT pk_zona PRIMARY KEY (id_zona);

-- Tabla Comuna
CREATE TABLE comuna (
    id_comuna    NUMBER(3) NOT NULL,
    nom_comuna   VARCHAR2(60) NOT NULL
);
ALTER TABLE comuna ADD CONSTRAINT pk_comuna PRIMARY KEY (id_comuna);

-- Tabla escuela
CREATE TABLE escuela (
    id_escuela  NUMBER(1) NOT NULL,
    nom_escuela VARCHAR2(50) NOT NULL
);
ALTER TABLE escuela ADD CONSTRAINT pk_escuela PRIMARY KEY (id_escuela);
