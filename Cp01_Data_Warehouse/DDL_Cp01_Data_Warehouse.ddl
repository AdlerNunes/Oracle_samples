-- Gerado por Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   em:        2023-03-28 15:11:38 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE tb_custo (
    id            NUMBER NOT NULL,
    nm_produto    VARCHAR2(100),
    custo_produto NUMBER(8, 2),
    qtd_produto   NUMBER(5)
);

ALTER TABLE tb_custo ADD CONSTRAINT tb_custo_pk PRIMARY KEY ( id );

CREATE TABLE tb_pecas (
    id           NUMBER NOT NULL,
    nm_pecas     VARCHAR2(200),
    modelo_pecas VARCHAR2(200)
);

ALTER TABLE tb_pecas ADD CONSTRAINT tb_pecas_pk PRIMARY KEY ( id );

CREATE TABLE tb_regiao (
    id          NUMBER NOT NULL,
    nm_regiao   VARCHAR2(200),
    taxa_regiao NUMBER(3, 2)
);

ALTER TABLE tb_regiao ADD CONSTRAINT tb_regiao_pk PRIMARY KEY ( id );

CREATE TABLE tb_unidade (
    id         NUMBER NOT NULL,
    id_regiao  NUMBER NOT NULL,
    id_pecas   NUMBER NOT NULL,
    id_custo   NUMBER NOT NULL,
    id_vendas  NUMBER NOT NULL,
    nm_unidade VARCHAR2(200),
    endereco   VARCHAR2(200),
    nome_porto VARCHAR2(100)
);

ALTER TABLE tb_unidade ADD CONSTRAINT tb_unidade_pk PRIMARY KEY ( id );

CREATE TABLE tb_vendas (
    id          NUMBER NOT NULL,
    qtd_vendas  NUMBER(5),
    valor_venda NUMBER(6, 2),
    data_venda  DATE
);

ALTER TABLE tb_vendas ADD CONSTRAINT tb_vendas_pk PRIMARY KEY ( id );

ALTER TABLE tb_unidade
    ADD CONSTRAINT tb_unidade_tb_custo_fk FOREIGN KEY ( id_custo )
        REFERENCES tb_custo ( id );

ALTER TABLE tb_unidade
    ADD CONSTRAINT tb_unidade_tb_pecas_fk FOREIGN KEY ( id_pecas )
        REFERENCES tb_pecas ( id );

ALTER TABLE tb_unidade
    ADD CONSTRAINT tb_unidade_tb_regiao_fk FOREIGN KEY ( id_regiao )
        REFERENCES tb_regiao ( id );

ALTER TABLE tb_unidade
    ADD CONSTRAINT tb_unidade_tb_vendas_fk FOREIGN KEY ( id_vendas )
        REFERENCES tb_vendas ( id );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              9
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
