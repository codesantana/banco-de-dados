-- =====================================================================
--  Banco Detran - CARGA DE DADOS (fictícios, cidades do Maranhão)
--  Rodar DEPOIS do script detran.sql, com as tabelas vazias
--  (os ids AUTO_INCREMENT precisam começar em 1).
--  Totais: 16 endereços, 18 contatos, 8 roubos/furtos, 5 benefícios,
--          20 proprietários, 32 veículos
-- =====================================================================

USE Detran;

-- ENDERECO (ids 1 a 16)
INSERT INTO endereco (logradouro, numero, complemento, bairro, cidade, uf, cep) VALUES
    ('Rua Grande', '120', NULL, 'Centro', 'São Luís', 'MA', '65010000'),
    ('Avenida dos Holandeses', '1500', 'Apto 302', 'Calhau', 'São Luís', 'MA', '65071380'),
    ('Rua do Sol', '45', NULL, 'Renascença', 'São Luís', 'MA', '65075000'),
    ('Avenida Getúlio Vargas', '890', 'Sala 4', 'Centro', 'Imperatriz', 'MA', '65901000'),
    ('Rua Ceará', '210', NULL, 'Bacuri', 'Imperatriz', 'MA', '65916000'),
    ('Rua Coronel Sá', '77', NULL, 'Centro', 'Grajaú', 'MA', '65940000'),
    ('Avenida Brasil', 'S/N', 'Próximo ao IFMA', 'Vila Nova', 'Grajaú', 'MA', '65940000'),
    ('Rua Aarão Reis', '330', NULL, 'Centro', 'Caxias', 'MA', '65600000'),
    ('Avenida Piauí', '1020', 'Casa B', 'Parque Piauí', 'Timon', 'MA', '65631000'),
    ('Rua da Assembleia', '56', NULL, 'Centro', 'Codó', 'MA', '65400000'),
    ('Rua Magalhães de Almeida', '18', NULL, 'Centro', 'Bacabal', 'MA', '65700000'),
    ('Avenida Presidente Dutra', '2500', 'Bloco C', 'Potosí', 'Balsas', 'MA', '65800000'),
    ('Rua Duque de Caxias', '401', NULL, 'Centro', 'Açailândia', 'MA', '65930000'),
    ('Rua Benedito Leite', '99', NULL, 'Centro', 'Santa Inês', 'MA', '65300000'),
    ('Avenida Frei Alberto Beretta', '640', NULL, 'Centro', 'Barra do Corda', 'MA', '65950000'),
    ('Travessa São Benedito', '12', 'Fundos', 'Centro', 'Pinheiro', 'MA', '65200000');

-- CONTATO (ids 1 a 18)
INSERT INTO contato (telefone_fixo, celular, whatsapp, email) VALUES
    ('9832211000', '98988110001', TRUE, 'familia.ferreira@email.com'),
    (NULL, '98991220002', TRUE, 'antonio.mendes@email.com'),
    (NULL, '98987330003', FALSE, NULL),
    ('9832345678', '98984440004', TRUE, 'francisco.lima@email.com'),
    ('9935241100', '99991550005', TRUE, 'carlos.lima@email.com'),
    (NULL, '99988660006', TRUE, NULL),
    ('9935221234', '99985770007', TRUE, 'pedro.almeida@email.com'),
    (NULL, '99982880008', FALSE, 'fernanda.rocha@email.com'),
    (NULL, '99981990009', TRUE, NULL),
    ('9935211111', '99982100010', FALSE, 'lucas.martins@email.com'),
    (NULL, '99984110011', TRUE, 'juliana.barros@email.com'),
    (NULL, '99985120012', TRUE, NULL),
    ('9936211313', '99986130013', FALSE, 'sebastiao.neto@email.com'),
    (NULL, '99987140014', TRUE, 'familia.campos@email.com'),
    (NULL, '99988150015', TRUE, 'patricia.gomes@email.com'),
    (NULL, '98989160016', FALSE, NULL),
    ('9936431717', '99981170017', TRUE, 'claudia.batista@email.com'),
    (NULL, '98982180018', TRUE, NULL);

-- ROUBO_FURTO (ids 1 a 8)
INSERT INTO roubo_furto (tipo, numero_bo, data_ocorrencia, local_ocorrencia, delegacia, descricao, situacao, data_recuperacao) VALUES
    ('ROUBO', 'BO-2024-0001', '2024-03-15 20:30:00', 'Av. dos Holandeses, Calhau - São Luís', '1º DP de São Luís', 'Veículo levado sob ameaça de arma', 'RECUPERADO', '2024-03-20'),
    ('FURTO', 'BO-2024-0157', '2024-07-02 03:10:00', 'Rua Ceará, Bacuri - Imperatriz', 'DP de Imperatriz', NULL, 'ATIVO', NULL),
    ('ROUBO', 'BO-2024-0310', '2024-11-22 18:45:00', 'Centro - Grajaú', 'DP de Grajaú', 'Dois veículos levados na mesma ação', 'ATIVO', NULL),
    ('FURTO', 'BO-2025-0042', '2025-01-10 02:00:00', 'Parque Piauí - Timon', 'DP de Timon', 'Motocicleta furtada em frente à residência', 'RECUPERADO', '2025-01-18'),
    ('ROUBO', 'BO-2025-0099', '2025-04-05 21:15:00', 'BR-226 - Barra do Corda', 'DP de Barra do Corda', NULL, 'ENCERRADO', NULL),
    ('FURTO', 'BO-2025-0230', '2025-08-19 14:00:00', 'Centro - Caxias', 'DP de Caxias', 'Furto em estacionamento de supermercado', 'ATIVO', NULL),
    ('ROUBO', 'BO-2025-0388', '2025-12-03 19:40:00', 'Potosí - Balsas', 'DP de Balsas', 'Caminhonete roubada em assalto', 'RECUPERADO', '2025-12-10'),
    ('FURTO', 'BO-2026-0015', '2026-02-14 01:30:00', 'Centro - Bacabal', 'DP de Bacabal', NULL, 'ATIVO', NULL);

-- BENEFICIO (ids 1 a 5)  -> o benefício 5 não está em nenhum veículo (bom para LEFT/RIGHT JOIN)
INSERT INTO beneficio (nome, descricao, tipo, percentual_desconto, base_legal, data_inicio, data_fim) VALUES
    ('Isenção IPVA PcD', 'Isenção para pessoa com deficiência', 'ISENCAO', 100.0, 'Lei Estadual 0000/2020 (fictícia)', '2020-01-01', NULL),
    ('Isenção IPVA Taxista', 'Veículo de aluguel usado como táxi', 'ISENCAO', 100.0, 'Lei Estadual 0001/2019 (fictícia)', '2019-06-01', NULL),
    ('Desconto Bom Condutor', 'Desconto para quem não tem multas', 'DESCONTO', 10.0, NULL, '2023-01-01', '2026-12-31'),
    ('Desconto Pagamento à Vista', 'Desconto no IPVA pago em cota única', 'DESCONTO', 5.0, 'Decreto 0002/2024 (fictício)', '2024-01-01', NULL),
    ('Isenção Veículo Antigo', 'Veículos com mais de 20 anos de fabricação', 'ISENCAO', 100.0, NULL, '2022-01-01', NULL);

-- PROPRIETARIO (alguns dividem o mesmo endereço e o mesmo contato)
INSERT INTO proprietario (cpf, nome, rg, data_nascimento, sexo, numero_cnh, categoria_cnh, validade_cnh, data_cadastro, id_endereco, id_contato) VALUES
    ('12345678901', 'João Ferreira da Silva', '0234567', '1975-04-12', 'M', '04512378901', 'AB', '2028-05-10', '2015-02-10 09:00:00', 1, 1),
    ('23456789012', 'Maria Sousa Ferreira', '0345678', '1978-09-30', 'F', '04512378902', 'B', '2027-03-15', '2016-05-20 10:30:00', 1, 1),
    ('34567890123', 'Antônio Carlos Mendes', NULL, '1990-01-25', 'M', '04512378903', 'B', '2025-08-01', '2018-07-11 14:20:00', 2, 2),
    ('45678901234', 'Luana Ribeiro Mendes', '0456789', '1993-06-18', 'F', NULL, NULL, NULL, '2019-03-05 08:15:00', 2, 3),
    ('56789012345', 'Francisco das Chagas Lima', '0567890', '1960-11-02', 'M', '04512378905', 'D', '2026-02-20', '2010-09-01 11:00:00', 3, 4),
    ('67890123456', 'Carlos Eduardo Lima', '0678901', '1985-03-14', 'M', '04512378906', 'AB', '2029-01-30', '2017-01-15 15:45:00', 4, 5),
    ('78901234567', 'Ana Paula Costa', NULL, '1998-12-05', 'F', '04512378907', 'B', '2030-06-12', '2021-04-22 09:30:00', 5, 6),
    ('89012345678', 'Pedro Henrique Almeida', '0890123', '1982-07-21', 'M', '04512378908', 'E', '2027-10-05', '2014-06-10 13:00:00', 6, 7),
    ('90123456789', 'Fernanda Rocha Almeida', '0901234', '1987-02-11', 'F', NULL, NULL, NULL, '2020-08-18 16:20:00', 6, 8),
    ('11223344556', 'Raimundo Nonato Sousa', '1012345', '1955-05-30', 'M', '04512378910', 'C', '2024-12-01', '2008-03-03 10:10:00', 7, 9),
    ('22334455667', 'Lucas Martins Oliveira', '1123456', '2000-09-09', 'M', '04512378911', 'A', '2028-09-09', '2022-02-14 14:00:00', 8, 10),
    ('33445566778', 'Juliana Barros Silva', '1234567', '1995-04-01', 'F', '04512378912', 'B', '2031-04-01', '2023-05-30 09:45:00', 9, 11),
    ('44556677889', 'José Ribamar Pereira', NULL, '1970-08-15', 'M', '04512378913', 'AB', '2026-11-30', '2012-10-20 11:30:00', 10, 12),
    ('55667788990', 'Sebastião Pereira Neto', '1456789', '1965-01-20', 'M', '04512378914', 'D', '2027-07-07', '2011-11-11 08:00:00', 11, 13),
    ('66778899001', 'Beatriz Campos Araújo', '1567890', '1992-10-10', 'F', '04512378915', 'B', '2029-10-10', '2019-12-01 17:00:00', 12, 14),
    ('77889900112', 'Marcos Vinícius Campos', '1678901', '1989-03-03', 'M', '04512378916', 'AE', '2028-03-03', '2019-12-01 17:10:00', 12, 14),
    ('88990011223', 'Patrícia Gomes Nascimento', '1789012', '1980-06-25', 'F', '04512378917', 'B', '2025-06-25', '2016-09-09 10:00:00', 13, 15),
    ('99001122334', 'Rafael Santos Moraes', NULL, '2003-02-28', NULL, NULL, NULL, NULL, '2024-01-08 12:00:00', 14, 16),
    ('10293847561', 'Cláudia Regina Batista', '1901234', '1977-12-12', 'F', '04512378919', 'AB', '2030-12-12', '2013-04-04 09:00:00', 15, 17),
    ('56473829100', 'Edvaldo Souza Lopes', '2012345', '1968-07-07', 'M', '04512378920', 'C', '2027-07-07', '2009-05-05 14:30:00', 16, 18);

-- VEICULO (com e sem roubo/furto, com e sem benefício)
INSERT INTO veiculo (placa, renavam, chassi, marca, modelo, ano_fabricacao, ano_modelo, cor, combustivel, tipo_veiculo, categoria, data_licenciamento, cpf_proprietario, id_roubo_furto, id_beneficio) VALUES
    ('NHA1B23', '98765430137', '9BWZZZ37MA0000001', 'Volkswagen', 'Gol', 2015, 2016, 'Prata', 'FLEX', 'AUTOMOVEL', 'PARTICULAR', '2026-03-10', '12345678901', NULL, 4),
    ('NHA2C34', '98765430274', '9BWZZZ37MA0000002', 'Fiat', 'Strada', 2020, 2021, 'Branco', 'FLEX', 'CAMINHONETE', 'PARTICULAR', '2026-04-15', '12345678901', NULL, NULL),
    ('OIA3D45', '98765430411', '9BWZZZ37MA0000003', 'Honda', 'Civic', 2018, 2019, 'Preto', 'GASOLINA', 'AUTOMOVEL', 'PARTICULAR', '2025-05-20', '23456789012', NULL, 3),
    ('OIB4E56', '98765430548', '9BWZZZ37MA0000004', 'Toyota', 'Corolla', 2022, 2023, 'Branco', 'HIBRIDO', 'AUTOMOVEL', 'PARTICULAR', '2026-02-01', '34567890123', 1, NULL),
    ('PSA5F67', '98765430685', '9BWZZZ37MA0000005', 'Honda', 'CG 160', 2021, 2021, 'Vermelho', 'FLEX', 'MOTOCICLETA', 'PARTICULAR', NULL, '45678901234', NULL, NULL),
    ('NHC6G78', '98765430822', '9BWZZZ37MA0000006', 'Chevrolet', 'Onix', 2019, 2020, 'Cinza', 'FLEX', 'AUTOMOVEL', 'ALUGUEL', '2026-01-12', '56789012345', NULL, 2),
    ('NHD7H89', '98765430959', '9BWZZZ37MA0000007', 'Mercedes-Benz', 'Sprinter', 2017, 2017, 'Branco', 'DIESEL', 'OUTRO', 'ALUGUEL', '2025-11-30', '56789012345', NULL, NULL),
    ('OJA8I90', '98765431096', '9BWZZZ37MA0000008', 'Hyundai', 'HB20', 2020, 2020, 'Azul', 'FLEX', 'AUTOMOVEL', 'PARTICULAR', '2026-05-05', '67890123456', NULL, 1),
    ('OJB9J01', '98765431233', '9BWZZZ37MA0000009', 'Yamaha', 'Fazer 250', 2016, 2017, 'Preto', 'GASOLINA', 'MOTOCICLETA', 'PARTICULAR', '2024-06-10', '67890123456', 2, NULL),
    ('PTA0K12', '98765431370', '9BWZZZ37MA0000010', 'Renault', 'Kwid', 2023, 2024, 'Branco', 'FLEX', 'AUTOMOVEL', 'PARTICULAR', '2026-06-01', '78901234567', NULL, 4),
    ('NHE1L23', '98765431507', '9BWZZZ37MA0000011', 'Ford', 'Ranger', 2019, 2019, 'Prata', 'DIESEL', 'CAMINHONETE', 'PARTICULAR', '2025-10-10', '89012345678', 3, NULL),
    ('NHE2M34', '98765431644', '9BWZZZ37MA0000012', 'Toyota', 'Hilux', 2021, 2022, 'Preto', 'DIESEL', 'CAMINHONETE', 'PARTICULAR', '2026-03-03', '89012345678', 3, NULL),
    ('NHF3N45', '98765431781', '9BWZZZ37MA0000013', 'Volkswagen', 'Polo', 2022, 2022, 'Vermelho', 'FLEX', 'AUTOMOVEL', 'PARTICULAR', '2026-07-20', '90123456789', NULL, NULL),
    ('NHG4O56', '98765431918', '9BWZZZ37MA0000014', 'Volvo', 'FH 540', 2014, 2015, 'Branco', 'DIESEL', 'CAMINHAO', 'PARTICULAR', '2025-09-15', '11223344556', NULL, NULL),
    ('OKA5P67', '98765432055', '9BWZZZ37MA0000015', 'Honda', 'Biz 125', 2018, 2018, 'Rosa', 'GASOLINA', 'MOTOCICLETA', 'PARTICULAR', NULL, '11223344556', NULL, NULL),
    ('OKB6Q78', '98765432192', '9BWZZZ37MA0000016', 'Honda', 'Pop 110', 2022, 2022, 'Preto', 'GASOLINA', 'MOTOCICLETA', 'PARTICULAR', '2025-01-20', '22334455667', 6, NULL),
    ('PTB7R89', '98765432329', '9BWZZZ37MA0000017', 'Honda', 'CG 160', 2023, 2023, 'Azul', 'FLEX', 'MOTOCICLETA', 'PARTICULAR', '2026-02-28', '33445566778', 4, NULL),
    ('NHH8S90', '98765432466', '9BWZZZ37MA0000018', 'Fiat', 'Mobi', 2021, 2021, 'Branco', 'FLEX', 'AUTOMOVEL', 'ALUGUEL', '2026-08-08', '44556677889', NULL, 2),
    ('NHI9T01', '98765432603', '9BWZZZ37MA0000019', 'Chevrolet', 'S10', 2016, 2016, 'Cinza', 'DIESEL', 'CAMINHONETE', 'PARTICULAR', '2024-12-12', '55667788990', 8, NULL),
    ('OLA0U12', '98765432740', '9BWZZZ37MA0000020', 'Toyota', 'Hilux', 2024, 2025, 'Prata', 'DIESEL', 'CAMINHONETE', 'PARTICULAR', '2026-04-04', '66778899001', 7, 4),
    ('OLB1V23', '98765432877', '9BWZZZ37MA0000021', 'Jeep', 'Compass', 2023, 2023, 'Preto', 'FLEX', 'AUTOMOVEL', 'PARTICULAR', '2026-05-15', '77889900112', NULL, 3),
    ('OLC2W34', '98765433014', '9BWZZZ37MA0000022', 'Scania', 'R450', 2019, 2020, 'Vermelho', 'DIESEL', 'CAMINHAO', 'PARTICULAR', '2025-12-01', '77889900112', NULL, NULL),
    ('PTC3X45', '98765433151', '9BWZZZ37MA0000023', 'Fiat', 'Uno', 2012, 2013, 'Branco', 'FLEX', 'AUTOMOVEL', 'PARTICULAR', '2023-07-07', '88990011223', NULL, NULL),
    ('PTD4Y56', '98765433288', '9BWZZZ37MA0000024', 'Fiat', 'Argo', 2022, 2023, 'Cinza', 'FLEX', 'AUTOMOVEL', 'OFICIAL', '2026-01-01', '88990011223', NULL, NULL),
    ('NHJ5Z67', '98765433425', '9BWZZZ37MA0000025', 'Honda', 'CB 500', 2020, 2020, 'Preto', 'GASOLINA', 'MOTOCICLETA', 'PARTICULAR', '2026-09-09', '99001122334', NULL, NULL),
    ('NHK6A78', '98765433562', '9BWZZZ37MA0000026', 'Volkswagen', 'Saveiro', 2017, 2018, 'Prata', 'FLEX', 'CAMINHONETE', 'PARTICULAR', '2025-03-03', '10293847561', 5, NULL),
    ('NHL7B89', '98765433699', '9BWZZZ37MA0000027', 'Mercedes-Benz', 'OF 1721', 2013, 2014, 'Branco', 'DIESEL', 'ONIBUS', 'OFICIAL', '2026-02-10', '10293847561', NULL, NULL),
    ('PTE8C90', '98765433836', '9BWZZZ37MA0000028', 'BYD', 'Dolphin', 2024, 2024, 'Azul', 'ELETRICO', 'AUTOMOVEL', 'PARTICULAR', '2026-10-01', '56473829100', NULL, 4),
    ('PTF9D01', '98765433973', '9BWZZZ37MA0000029', 'Hyundai', 'Creta', 2021, 2022, 'Branco', 'FLEX', 'AUTOMOVEL', 'PARTICULAR', '2026-06-30', '56473829100', NULL, 1),
    ('OMA0E12', '98765434110', '9BWZZZ37MA0000030', 'Renault', 'Duster', 2015, 2016, 'Marrom', 'FLEX', 'AUTOMOVEL', 'PARTICULAR', NULL, '34567890123', NULL, NULL),
    ('OMB1F23', '98765434247', '9BWZZZ37MA0000031', 'Yamaha', 'NMax 160', 2022, 2023, 'Cinza', 'GASOLINA', 'MOTOCICLETA', 'PARTICULAR', '2026-03-21', '78901234567', NULL, NULL),
    ('OMC2G34', '98765434384', '9BWZZZ37MA0000032', 'Chevrolet', 'Spin', 2018, 2019, 'Prata', 'FLEX', 'AUTOMOVEL', 'ALUGUEL', '2025-07-14', '44556677889', NULL, 2);
