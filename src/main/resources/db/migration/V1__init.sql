-- =========================
-- 1. TABELAS
-- =========================

CREATE TABLE vehicle (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(100) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    versao VARCHAR(100) NOT NULL
);

CREATE TABLE atributo (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE especificacao (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    vehicle_id BIGINT NOT NULL,
    atributo_id BIGINT NOT NULL,
    valor VARCHAR(255),

    CONSTRAINT fk_vehicle FOREIGN KEY (vehicle_id) REFERENCES vehicle(id),
    CONSTRAINT fk_atributo FOREIGN KEY (atributo_id) REFERENCES atributo(id)
);

-- =========================
-- 2. ATRIBUTOS
-- =========================

INSERT INTO atributo (nome) VALUES
('motor'),
('potencia'),
('torque_max'),
('transmissao'),
('tracao'),
('amortecedores'),
('aceleracao_0_100'),
('modos_conducao'),
('modos_volante'),
('modos_escapamento'),
('modos_amortecedor'),
('farois'),
('rodas_pneus'),
('preco'),
('velocidade_maxima');

-- =========================
-- 3. VEÍCULOS
-- =========================

INSERT INTO vehicle (marca, modelo, versao) VALUES
('Ford', 'Ranger', 'Raptor'),
('Toyota', 'Hilux', 'GR-S');

-- =========================
-- 4. ESPECIFICAÇÕES - RANGER RAPTOR
-- =========================

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'V6 3.0L Nano bi turbo'
FROM vehicle v, atributo a
WHERE v.modelo = 'Ranger' AND v.versao = 'Raptor' AND a.nome = 'motor';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, '397 cv @ 5650 RPM'
FROM vehicle v, atributo a
WHERE v.modelo = 'Ranger' AND v.versao = 'Raptor' AND a.nome = 'potencia';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, '583 Nm @ 3500 RPM'
FROM vehicle v, atributo a
WHERE v.modelo = 'Ranger' AND v.versao = 'Raptor' AND a.nome = 'torque_max';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'AT 10 velocidades com paddle shifters'
FROM vehicle v, atributo a
WHERE v.modelo = 'Ranger' AND v.versao = 'Raptor' AND a.nome = 'transmissao';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, '4WD'
FROM vehicle v, atributo a
WHERE v.modelo = 'Ranger' AND v.versao = 'Raptor' AND a.nome = 'tracao';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'FOX Racing Live Valve 2.5'
FROM vehicle v, atributo a
WHERE v.modelo = 'Ranger' AND v.versao = 'Raptor' AND a.nome = 'amortecedores';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, '5.8s'
FROM vehicle v, atributo a
WHERE v.modelo = 'Ranger' AND v.versao = 'Raptor' AND a.nome = 'aceleracao_0_100';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'Normal, Sport, Escorregadio, Lama, Areia, Rock Crawl, Baja'
FROM vehicle v, atributo a
WHERE v.modelo = 'Ranger' AND v.versao = 'Raptor' AND a.nome = 'modos_conducao';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'Normal, Sport, Comfort'
FROM vehicle v, atributo a
WHERE v.modelo = 'Ranger' AND v.versao = 'Raptor' AND a.nome = 'modos_volante';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'Normal, Silencioso, Sport, Baja'
FROM vehicle v, atributo a
WHERE v.modelo = 'Ranger' AND v.versao = 'Raptor' AND a.nome = 'modos_escapamento';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'Normal, Sport, Baja'
FROM vehicle v, atributo a
WHERE v.modelo = 'Ranger' AND v.versao = 'Raptor' AND a.nome = 'modos_amortecedor';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'Matrix LED'
FROM vehicle v, atributo a
WHERE v.modelo = 'Ranger' AND v.versao = 'Raptor' AND a.nome = 'farois';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, '17” com 285/70 R17 AT'
FROM vehicle v, atributo a
WHERE v.modelo = 'Ranger' AND v.versao = 'Raptor' AND a.nome = 'rodas_pneus';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'R$ 499.000'
FROM vehicle v, atributo a
WHERE v.modelo = 'Ranger' AND v.versao = 'Raptor' AND a.nome = 'preco';

-- =========================
-- ESPECIFICAÇÕES (Hilux GR-S)
-- =========================

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'Turbodiesel 2.8L 16V, 4 cilindros, TGV + intercooler'
FROM vehicle v, atributo a
WHERE v.modelo = 'Hilux' AND v.versao = 'GR-S' AND a.nome = 'motor';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, '224 cv @ 3000 rpm'
FROM vehicle v, atributo a
WHERE v.modelo = 'Hilux' AND v.versao = 'GR-S' AND a.nome = 'potencia';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, '55 kgfm @ 2800 rpm'
FROM vehicle v, atributo a
WHERE v.modelo = 'Hilux' AND v.versao = 'GR-S' AND a.nome = 'torque_max';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, '10s'
FROM vehicle v, atributo a
WHERE v.modelo = 'Hilux' AND v.versao = 'GR-S' AND a.nome = 'aceleracao_0_100';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, '180 km/h (limitada)'
FROM vehicle v, atributo a
WHERE v.modelo = 'Hilux' AND v.versao = 'GR-S' AND a.nome = 'velocidade_maxima';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'Automática 6 marchas com paddle shift'
FROM vehicle v, atributo a
WHERE v.modelo = 'Hilux' AND v.versao = 'GR-S' AND a.nome = 'transmissao';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, '4x4 com reduzida e bloqueio traseiro'
FROM vehicle v, atributo a
WHERE v.modelo = 'Hilux' AND v.versao = 'GR-S' AND a.nome = 'tracao';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'Monotubo GR recalibrado'
FROM vehicle v, atributo a
WHERE v.modelo = 'Hilux' AND v.versao = 'GR-S' AND a.nome = 'amortecedores';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'ECO e Power'
FROM vehicle v, atributo a
WHERE v.modelo = 'Hilux' AND v.versao = 'GR-S' AND a.nome = 'modos_conducao';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'Não disponível'
FROM vehicle v, atributo a
WHERE v.modelo = 'Hilux' AND v.versao = 'GR-S' AND a.nome = 'modos_volante';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'Não disponível'
FROM vehicle v, atributo a
WHERE v.modelo = 'Hilux' AND v.versao = 'GR-S' AND a.nome = 'modos_escapamento';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'Fixo (alta performance)'
FROM vehicle v, atributo a
WHERE v.modelo = 'Hilux' AND v.versao = 'GR-S' AND a.nome = 'modos_amortecedor';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'Full LED com DRL'
FROM vehicle v, atributo a
WHERE v.modelo = 'Hilux' AND v.versao = 'GR-S' AND a.nome = 'farois';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, '17\" com 265/65 R17 AT'
FROM vehicle v, atributo a
WHERE v.modelo = 'Hilux' AND v.versao = 'GR-S' AND a.nome = 'rodas_pneus';

INSERT INTO especificacao (vehicle_id, atributo_id, valor)
SELECT v.id, a.id, 'R$ 372.000 - R$ 385.000'
FROM vehicle v, atributo a
WHERE v.modelo = 'Hilux' AND v.versao = 'GR-S' AND a.nome = 'preco';