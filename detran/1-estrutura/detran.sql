-- =====================================================================
--  Banco de Dados: Detran
--  SGBD: MySQL 8.0+
--  Tabelas: endereco, contato, roubo_furto, beneficio, proprietario, veiculo
-- =====================================================================

CREATE DATABASE IF NOT EXISTS Detran;

USE Detran;

-- ---------------------------------------------------------------------
-- 1) ENDERECO  (1 endereço -> N proprietários)
-- ---------------------------------------------------------------------
CREATE TABLE endereco (
    id_endereco   INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    logradouro    VARCHAR(120) NOT NULL,
    numero        VARCHAR(10)  NOT NULL,
    complemento   VARCHAR(60)  NULL,
    bairro        VARCHAR(60)  NOT NULL,
    cidade        VARCHAR(60)  NOT NULL,
    uf            CHAR(2)      NOT NULL,
    cep           CHAR(8)      NOT NULL
);

-- ---------------------------------------------------------------------
-- 2) CONTATO  (1 contato -> N proprietários)
-- ---------------------------------------------------------------------
CREATE TABLE contato (
    id_contato        INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    telefone_fixo     VARCHAR(15)  NULL,
    celular           VARCHAR(15)  NOT NULL,
    whatsapp          BOOLEAN      NOT NULL,
    email             VARCHAR(100) NULL
);

-- ---------------------------------------------------------------------
-- 3) ROUBO_FURTO  (1 ocorrência -> N veículos)
-- ---------------------------------------------------------------------
CREATE TABLE roubo_furto (
    id_roubo_furto     INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo               VARCHAR(10) NOT NULL,
    numero_bo          VARCHAR(30)  NOT NULL,          -- Boletim de Ocorrência
    data_ocorrencia    DATETIME     NOT NULL,
    local_ocorrencia   VARCHAR(150) NOT NULL,
    delegacia          VARCHAR(100) NOT NULL,
    descricao          TEXT         NULL,
    situacao           VARCHAR(10) NOT NULL,
    data_recuperacao   DATE         NULL
);

-- ---------------------------------------------------------------------
-- 4) BENEFICIO  (1 benefício -> N veículos)
-- ---------------------------------------------------------------------
CREATE TABLE beneficio (
    id_beneficio          INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome                  VARCHAR(80)   NOT NULL,          -- ex.: Isenção IPVA PcD, Taxista
    descricao             VARCHAR(255)  NULL,
    tipo                  VARCHAR(10) NOT NULL,
    percentual_desconto   DECIMAL(5,2)  NOT NULL,
    base_legal            VARCHAR(100)  NULL,              -- lei / decreto
    data_inicio           DATE          NOT NULL,
    data_fim              DATE          NULL
);

-- ---------------------------------------------------------------------
-- 5) PROPRIETARIO  (chave natural: CPF)
--    N proprietários -> 1 endereço
--    N proprietários -> 1 contato
-- ---------------------------------------------------------------------
CREATE TABLE proprietario (
    cpf                CHAR(11)     NOT NULL PRIMARY KEY,
    nome               VARCHAR(100) NOT NULL,
    rg                 VARCHAR(20)  NULL,
    data_nascimento    DATE         NOT NULL,
    sexo               CHAR(1) NULL,
    numero_cnh         CHAR(11)     NULL,
    categoria_cnh      VARCHAR(3)   NULL,                 -- A, B, AB, C, D, E...
    validade_cnh       DATE         NULL,
    data_cadastro      DATETIME     NOT NULL,
    id_endereco        INT          NOT NULL,
    id_contato         INT          NOT NULL,
    FOREIGN KEY (id_endereco) REFERENCES endereco (id_endereco),
    FOREIGN KEY (id_contato)  REFERENCES contato (id_contato)
);

-- ---------------------------------------------------------------------
-- 6) VEICULO  (chave natural: placa)
--    N veículos -> 1 proprietário        (obrigatório)
--    N veículos -> 0..1 roubo_furto      (opcional)
--    N veículos -> 0..1 benefício        (opcional)
-- ---------------------------------------------------------------------
CREATE TABLE veiculo (
    placa              CHAR(7)      NOT NULL PRIMARY KEY,             -- ex.: ABC1D23
    renavam            CHAR(11)     NOT NULL,
    chassi             CHAR(17)     NOT NULL,
    marca              VARCHAR(40)  NOT NULL,
    modelo             VARCHAR(60)  NOT NULL,
    ano_fabricacao     YEAR         NOT NULL,
    ano_modelo         YEAR         NOT NULL,
    cor                VARCHAR(30)  NOT NULL,
    combustivel        VARCHAR(10) NOT NULL,
    tipo_veiculo       VARCHAR(15) NOT NULL,
    categoria          VARCHAR(10) NOT NULL,
    data_licenciamento DATE         NULL,
    cpf_proprietario   CHAR(11)     NOT NULL,
    id_roubo_furto     INT          NULL,
    id_beneficio       INT          NULL,
    FOREIGN KEY (cpf_proprietario) REFERENCES proprietario (cpf),
    FOREIGN KEY (id_roubo_furto)   REFERENCES roubo_furto (id_roubo_furto),
    FOREIGN KEY (id_beneficio)     REFERENCES beneficio (id_beneficio)
);

-- Conferir a estrutura criada
SHOW TABLES;
