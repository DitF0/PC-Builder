-- ============================================================
-- PC BUILDER — BANCO DE DADOS COMPLETO
-- Gerado em Abril 2026 | Mercado Brasileiro
-- ============================================================

-- ============================================================
-- FABRICANTES
-- ============================================================
INSERT INTO fabricante (nome) VALUES ('Intel');         -- 1
INSERT INTO fabricante (nome) VALUES ('AMD');           -- 2
INSERT INTO fabricante (nome) VALUES ('NVIDIA');        -- 3
INSERT INTO fabricante (nome) VALUES ('Corsair');       -- 4
INSERT INTO fabricante (nome) VALUES ('Samsung');       -- 5
INSERT INTO fabricante (nome) VALUES ('Kingston');      -- 6
INSERT INTO fabricante (nome) VALUES ('Asus');          -- 7
INSERT INTO fabricante (nome) VALUES ('Cooler Master'); -- 8
INSERT INTO fabricante (nome) VALUES ('WD');            -- 9
INSERT INTO fabricante (nome) VALUES ('Crucial');       -- 10
INSERT INTO fabricante (nome) VALUES ('MSI');           -- 11
INSERT INTO fabricante (nome) VALUES ('Gigabyte');      -- 12
INSERT INTO fabricante (nome) VALUES ('Lian Li');       -- 13
INSERT INTO fabricante (nome) VALUES ('Seasonic');      -- 14
INSERT INTO fabricante (nome) VALUES ('G.Skill');       -- 15
INSERT INTO fabricante (nome) VALUES ('TeamGroup');     -- 16
INSERT INTO fabricante (nome) VALUES ('ASRock');        -- 17
INSERT INTO fabricante (nome) VALUES ('Noctua');        -- 18
INSERT INTO fabricante (nome) VALUES ('be quiet!');     -- 19
INSERT INTO fabricante (nome) VALUES ('Arctic');        -- 20
INSERT INTO fabricante (nome) VALUES ('NZXT');          -- 21
INSERT INTO fabricante (nome) VALUES ('Fractal Design');-- 22
INSERT INTO fabricante (nome) VALUES ('DeepCool');      -- 23
INSERT INTO fabricante (nome) VALUES ('Thermalright');  -- 24
INSERT INTO fabricante (nome) VALUES ('Scythe');        -- 25
INSERT INTO fabricante (nome) VALUES ('Thermaltake');   -- 26
INSERT INTO fabricante (nome) VALUES ('Phanteks');      -- 27
INSERT INTO fabricante (nome) VALUES ('Seagate');       -- 28
INSERT INTO fabricante (nome) VALUES ('EVGA');          -- 29
INSERT INTO fabricante (nome) VALUES ('ID-Cooling');    -- 30
INSERT INTO fabricante (nome) VALUES ('Palit');         -- 31
INSERT INTO fabricante (nome) VALUES ('Sapphire');      -- 32
INSERT INTO fabricante (nome) VALUES ('PowerColor');    -- 33
INSERT INTO fabricante (nome) VALUES ('XFX');           -- 34
INSERT INTO fabricante (nome) VALUES ('Zotac');         -- 35
INSERT INTO fabricante (nome) VALUES ('Inno3D');        -- 36

-- ============================================================
-- CATEGORIAS
-- ============================================================
INSERT INTO categoria (nome) VALUES ('Processador');    -- 1
INSERT INTO categoria (nome) VALUES ('Placa de Video'); -- 2
INSERT INTO categoria (nome) VALUES ('Memoria RAM');    -- 3
INSERT INTO categoria (nome) VALUES ('Armazenamento');  -- 4
INSERT INTO categoria (nome) VALUES ('Placa-Mae');      -- 5
INSERT INTO categoria (nome) VALUES ('Cooler');         -- 6
INSERT INTO categoria (nome) VALUES ('Fonte');          -- 7
INSERT INTO categoria (nome) VALUES ('Gabinete');       -- 8

-- ============================================================
-- PROCESSADORES (categoria_id=1)
-- ============================================================

-- ─── Intel 12ª Gen (Alder Lake) LGA1700 ─────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i9-12900K',
        '16C (8P+8E)/24T | P-core 3.2/5.2GHz | E-core 2.4/3.9GHz | 30MB L3 | PCIe 5.0 x20 | 10nm Intel 7',
        2200.00, 241, 1, 1, 'LGA1700', 'DDR4/DDR5', NULL,
        'https://www.kabum.com.br/busca/core-i9-12900k',
        'https://www.pichau.com.br/search?q=core+i9+12900k',
        'https://www.terabyteshop.com.br/busca?busca=core%20i9%2012900k');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i9-12900KS',
        '16C (8P+8E)/24T | P-core 3.4/5.5GHz all-core OC | 30MB L3 | IMC melhorado | 10nm Intel 7',
        2500.00, 320, 1, 1, 'LGA1700', 'DDR4/DDR5', NULL,
        'https://www.kabum.com.br/busca/core-i9-12900ks',
        'https://www.pichau.com.br/search?q=core+i9+12900ks',
        'https://www.terabyteshop.com.br/busca?busca=core%20i9%2012900ks');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i7-12700K',
        '12C (8P+4E)/20T | P-core 3.6/5.0GHz | 25MB L3 | PCIe 5.0 x20 | 10nm Intel 7',
        1600.00, 190, 1, 1, 'LGA1700', 'DDR4/DDR5', NULL,
        'https://www.kabum.com.br/busca/core-i7-12700k',
        'https://www.pichau.com.br/search?q=core+i7+12700k',
        'https://www.terabyteshop.com.br/busca?busca=core%20i7%2012700k');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i7-12700KF',
        '12C (8P+4E)/20T | P-core 3.6/5.0GHz | 25MB L3 | Sem iGPU | 10nm Intel 7',
        1500.00, 190, 1, 1, 'LGA1700', 'DDR4/DDR5', NULL,
        'https://www.kabum.com.br/busca/core-i7-12700kf',
        'https://www.pichau.com.br/search?q=core+i7+12700kf',
        'https://www.terabyteshop.com.br/busca?busca=core%20i7%2012700kf');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i5-12600K',
        '10C (6P+4E)/16T | P-core 3.7/4.9GHz | 20MB L3 | 10nm Intel 7',
        1200.00, 150, 1, 1, 'LGA1700', 'DDR4/DDR5', NULL,
        'https://www.kabum.com.br/busca/core-i5-12600k',
        'https://www.pichau.com.br/search?q=core+i5+12600k',
        'https://www.terabyteshop.com.br/busca?busca=core%20i5%2012600k');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i5-12400F',
        '6P-cores/12T | 2.5/4.4GHz | 18MB L3 | Sem iGPU | 10nm Intel 7 | entry DDR4',
        700.00, 117, 1, 1, 'LGA1700', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/core-i5-12400f',
        'https://www.pichau.com.br/search?q=core+i5+12400f',
        'https://www.terabyteshop.com.br/busca?busca=core%20i5%2012400f');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i3-12100F',
        '4P-cores/8T | 3.3/4.3GHz | 12MB L3 | Sem iGPU | 10nm Intel 7 | entry econômico',
        600.00, 89, 1, 1, 'LGA1700', 'DDR4/DDR5', NULL,
        'https://www.kabum.com.br/busca/core-i3-12100f',
        'https://www.pichau.com.br/search?q=core+i3+12100f',
        'https://www.terabyteshop.com.br/busca?busca=core%20i3%2012100f');

-- ─── Intel 13ª Gen (Raptor Lake) LGA1700 ────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i9-13900K',
        '24C (8P+16E)/32T | P-core 3.0/5.8GHz | E-core 2.2/4.3GHz | 36MB L3 | PCIe 5.0 x20',
        2600.00, 253, 1, 1, 'LGA1700', 'DDR4/DDR5', NULL,
        'https://www.kabum.com.br/busca/core-i9-13900k',
        'https://www.pichau.com.br/search?q=core+i9+13900k',
        'https://www.terabyteshop.com.br/busca?busca=core%20i9%2013900k');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i9-13900KS',
        '24C (8P+16E)/32T | P-core 3.2/6.0GHz | 36MB L3 | Primeiro CPU 6GHz de fábrica',
        3000.00, 320, 1, 1, 'LGA1700', 'DDR4/DDR5', NULL,
        'https://www.kabum.com.br/busca/core-i9-13900ks',
        'https://www.pichau.com.br/search?q=core+i9+13900ks',
        'https://www.terabyteshop.com.br/busca?busca=core%20i9%2013900ks');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i7-13700K',
        '16C (8P+8E)/24T | P-core 3.4/5.4GHz | 30MB L3 | DDR4/DDR5-5600',
        2000.00, 253, 1, 1, 'LGA1700', 'DDR4/DDR5', NULL,
        'https://www.kabum.com.br/busca/core-i7-13700k',
        'https://www.pichau.com.br/search?q=core+i7+13700k',
        'https://www.terabyteshop.com.br/busca?busca=core%20i7%2013700k');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i7-13700KF',
        '16C (8P+8E)/24T | P-core 3.4/5.4GHz | 30MB L3 | Sem iGPU | DDR4/DDR5-5600',
        1900.00, 253, 1, 1, 'LGA1700', 'DDR4/DDR5', NULL,
        'https://www.kabum.com.br/busca/core-i7-13700kf',
        'https://www.pichau.com.br/search?q=core+i7+13700kf',
        'https://www.terabyteshop.com.br/busca?busca=core%20i7%2013700kf');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i5-13600K',
        '14C (6P+8E)/20T | P-core 3.5/5.1GHz | 24MB L3 | Melhor custo-benefício 13ª gen',
        1400.00, 181, 1, 1, 'LGA1700', 'DDR4/DDR5', NULL,
        'https://www.kabum.com.br/busca/core-i5-13600k',
        'https://www.pichau.com.br/search?q=core+i5+13600k',
        'https://www.terabyteshop.com.br/busca?busca=core%20i5%2013600k');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i5-13400F',
        '10C (6P+4E)/16T | 2.5/4.6GHz | 20MB L3 | Sem iGPU | entry office + 1080p gaming',
        900.00, 154, 1, 1, 'LGA1700', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/core-i5-13400f',
        'https://www.pichau.com.br/search?q=core+i5+13400f',
        'https://www.terabyteshop.com.br/busca?busca=core%20i5%2013400f');

-- ─── Intel 14ª Gen (Raptor Lake Refresh) LGA1700 ────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i9-14900K',
        '24C (8P+16E)/32T | P-core 3.2/6.0GHz | 36MB L3 | DDR4-3600/DDR5-5600',
        2900.00, 253, 1, 1, 'LGA1700', 'DDR4/DDR5', NULL,
        'https://www.kabum.com.br/busca/core-i9-14900k',
        'https://www.pichau.com.br/search?q=core+i9+14900k',
        'https://www.terabyteshop.com.br/busca?busca=core%20i9%2014900k');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i9-14900KS',
        '24C (8P+16E)/32T | P-core 3.2/6.2GHz factory boost máximo | 36MB L3',
        3200.00, 320, 1, 1, 'LGA1700', 'DDR4/DDR5', NULL,
        'https://www.kabum.com.br/busca/core-i9-14900ks',
        'https://www.pichau.com.br/search?q=core+i9+14900ks',
        'https://www.terabyteshop.com.br/busca?busca=core%20i9%2014900ks');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i7-14700K',
        '20C (8P+12E)/28T | P-core 3.4/5.6GHz | 33MB L3 | DDR4/DDR5-5600',
        2200.00, 253, 1, 1, 'LGA1700', 'DDR4/DDR5', NULL,
        'https://www.kabum.com.br/busca/core-i7-14700k',
        'https://www.pichau.com.br/search?q=core+i7+14700k',
        'https://www.terabyteshop.com.br/busca?busca=core%20i7%2014700k');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i7-14700KF',
        '20C (8P+12E)/28T | P-core 3.4/5.6GHz | 33MB L3 | Sem iGPU',
        2100.00, 253, 1, 1, 'LGA1700', 'DDR4/DDR5', NULL,
        'https://www.kabum.com.br/busca/core-i7-14700kf',
        'https://www.pichau.com.br/search?q=core+i7+14700kf',
        'https://www.terabyteshop.com.br/busca?busca=core%20i7%2014700kf');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i5-14600K',
        '14C (6P+8E)/20T | P-core 3.5/5.3GHz | 24MB L3 | Melhor custo-benefício 14ª gen gaming',
        1500.00, 181, 1, 1, 'LGA1700', 'DDR4/DDR5', NULL,
        'https://www.kabum.com.br/busca/core-i5-14600k',
        'https://www.pichau.com.br/search?q=core+i5+14600k',
        'https://www.terabyteshop.com.br/busca?busca=core%20i5%2014600k');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i5-14400F',
        '10C (6P+4E)/16T | 2.5/4.7GHz | 20MB L3 | Sem iGPU | entry DDR4',
        950.00, 148, 1, 1, 'LGA1700', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/core-i5-14400f',
        'https://www.pichau.com.br/search?q=core+i5+14400f',
        'https://www.terabyteshop.com.br/busca?busca=core%20i5%2014400f');

-- ─── Intel Core Ultra Série 2 (Arrow Lake) LGA1851 ──────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core Ultra 9 285K',
        '24C (8P+16E)/24T | P-core 3.7/5.7GHz | 36MB L3 | DDR5-6400 nativo | PCIe 5.0 x20 | TB5 | Intel 20A',
        3500.00, 250, 1, 1, 'LGA1851', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/core-ultra-9-285k',
        'https://www.pichau.com.br/search?q=core+ultra+9+285k',
        'https://www.terabyteshop.com.br/busca?busca=core%20ultra%209%20285k');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core Ultra 7 265K',
        '20C (8P+12E)/20T | P-core 3.9/5.5GHz | 30MB L3 | DDR5-6400 | Intel 20A',
        2800.00, 228, 1, 1, 'LGA1851', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/core-ultra-7-265k',
        'https://www.pichau.com.br/search?q=core+ultra+7+265k',
        'https://www.terabyteshop.com.br/busca?busca=core%20ultra%207%20265k');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core Ultra 7 265KF',
        '20C (8P+12E)/20T | P-core 3.9/5.5GHz | 30MB L3 | DDR5-6400 | Sem iGPU',
        2650.00, 228, 1, 1, 'LGA1851', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/core-ultra-7-265kf',
        'https://www.pichau.com.br/search?q=core+ultra+7+265kf',
        'https://www.terabyteshop.com.br/busca?busca=core%20ultra%207%20265kf');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core Ultra 5 245K',
        '14C (6P+8E)/14T | P-core 4.2/5.2GHz | 24MB L3 | DDR5-5600',
        1800.00, 159, 1, 1, 'LGA1851', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/core-ultra-5-245k',
        'https://www.pichau.com.br/search?q=core+ultra+5+245k',
        'https://www.terabyteshop.com.br/busca?busca=core%20ultra%205%20245k');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core Ultra 5 245KF',
        '14C (6P+8E)/14T | P-core 4.2/5.2GHz | 24MB L3 | DDR5-5600 | Sem iGPU',
        1700.00, 159, 1, 1, 'LGA1851', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/core-ultra-5-245kf',
        'https://www.pichau.com.br/search?q=core+ultra+5+245kf',
        'https://www.terabyteshop.com.br/busca?busca=core%20ultra%205%20245kf');

-- ─── AMD Ryzen 5000 (Zen 3) AM4 ─────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 9 5950X',
        '16C/32T | Base 3.4/Boost 4.9GHz | 72MB Cache | PCIe 4.0 x24 | 7nm Zen 3',
        1800.00, 105, 1, 2, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/ryzen-9-5950x',
        'https://www.pichau.com.br/search?q=ryzen+9+5950x',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%209%205950x');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 9 5900X',
        '12C/24T | Base 3.7/Boost 4.8GHz | 70MB Cache | PCIe 4.0 x24 | 7nm Zen 3',
        1400.00, 105, 1, 2, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/ryzen-9-5900x',
        'https://www.pichau.com.br/search?q=ryzen+9+5900x',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%209%205900x');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 7 5800X3D',
        '8C/16T | Base 3.4/Boost 4.5GHz | 96MB L3 3D V-Cache | Melhor AM4 gaming | 7nm Zen 3',
        1500.00, 105, 1, 2, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/ryzen-7-5800x3d',
        'https://www.pichau.com.br/search?q=ryzen+7+5800x3d',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%207%205800x3d');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 7 5800X',
        '8C/16T | Base 3.8/Boost 4.7GHz | 36MB Cache | 7nm Zen 3',
        1000.00, 105, 1, 2, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/ryzen-7-5800x',
        'https://www.pichau.com.br/search?q=ryzen+7+5800x',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%207%205800x');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 7 5700X',
        '8C/16T | Base 3.4/Boost 4.6GHz | 36MB Cache | 65W eco | 7nm Zen 3',
        850.00, 65, 1, 2, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/ryzen-7-5700x',
        'https://www.pichau.com.br/search?q=ryzen+7+5700x',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%207%205700x');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 7 5700G',
        '8C/16T + RX Vega 8 (8CU) | Base 3.8/Boost 4.6GHz | APU | 65W | 7nm Zen 3',
        800.00, 65, 1, 2, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/ryzen-7-5700g',
        'https://www.pichau.com.br/search?q=ryzen+7+5700g',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%207%205700g');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 5 5600X',
        '6C/12T | Base 3.7/Boost 4.6GHz | 35MB Cache | Top custo-benefício DDR4 gaming | 7nm Zen 3',
        900.00, 65, 1, 2, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/ryzen-5-5600x',
        'https://www.pichau.com.br/search?q=ryzen+5+5600x',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%205%205600x');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 5 5600',
        '6C/12T | Base 3.5/Boost 4.4GHz | 35MB Cache | 65W | 7nm Zen 3 | versão econômica',
        700.00, 65, 1, 2, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/ryzen-5-5600',
        'https://www.pichau.com.br/search?q=ryzen+5+5600',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%205%205600');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 5 5600G',
        '6C/12T + RX Vega 7 | Base 3.9/Boost 4.4GHz | APU | 65W | 7nm Zen 3',
        800.00, 65, 1, 2, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/ryzen-5-5600g',
        'https://www.pichau.com.br/search?q=ryzen+5+5600g',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%205%205600g');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 5 5500',
        '6C/12T | Base 3.6/Boost 4.2GHz | 19MB Cache | PCIe 3.0 | 65W | 7nm Zen 3',
        500.00, 65, 1, 2, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/ryzen-5-5500',
        'https://www.pichau.com.br/search?q=ryzen+5+5500',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%205%205500');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 3 5300G',
        '4C/8T + RX Vega 6 | Base 4.0/Boost 4.2GHz | APU | 65W | 7nm Zen 3',
        450.00, 65, 1, 2, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/ryzen-3-5300g',
        'https://www.pichau.com.br/search?q=ryzen+3+5300g',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%203%205300g');

-- ─── AMD Ryzen 7000 (Zen 4) AM5 ─────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 9 7950X3D',
        '16C/32T | Base 4.2/Boost 5.7GHz | 144MB 3D Cache | PCIe 5.0 x28 | 5nm Zen 4',
        2800.00, 120, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-9-7950x3d',
        'https://www.pichau.com.br/search?q=ryzen+9+7950x3d',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%209%207950x3d');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 9 7950X',
        '16C/32T | Base 4.5/Boost 5.7GHz | 64MB L3 | PCIe 5.0 x28 | 5nm Zen 4',
        2400.00, 170, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-9-7950x',
        'https://www.pichau.com.br/search?q=ryzen+9+7950x',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%209%207950x');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 9 7900X3D',
        '12C/24T | Base 4.4/Boost 5.6GHz | 140MB 3D Cache | 5nm Zen 4',
        2200.00, 120, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-9-7900x3d',
        'https://www.pichau.com.br/search?q=ryzen+9+7900x3d',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%209%207900x3d');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 7 7800X3D',
        '8C/16T | Base 4.2/Boost 5.0GHz | 96MB 3D V-Cache | #1 gaming AM5 custo-benefício | 5nm Zen 4',
        2200.00, 120, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-7-7800x3d',
        'https://www.pichau.com.br/search?q=ryzen+7+7800x3d',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%207%207800x3d');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 7 7700X',
        '8C/16T | Base 4.5/Boost 5.4GHz | 40MB L3 | 105W | 5nm Zen 4',
        1700.00, 105, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-7-7700x',
        'https://www.pichau.com.br/search?q=ryzen+7+7700x',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%207%207700x');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 7 7700',
        '8C/16T | Base 3.8/Boost 5.3GHz | 40MB L3 | 65W eco | 5nm Zen 4',
        1500.00, 65, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-7-7700',
        'https://www.pichau.com.br/search?q=ryzen+7+7700',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%207%207700');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 5 7600X',
        '6C/12T | Base 4.7/Boost 5.3GHz | 32MB L3 | 105W | 5nm Zen 4',
        1300.00, 105, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-5-7600x',
        'https://www.pichau.com.br/search?q=ryzen+5+7600x',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%205%207600x');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 5 7600',
        '6C/12T | Base 3.8/Boost 5.1GHz | 32MB L3 | 65W | 5nm Zen 4',
        1100.00, 65, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-5-7600',
        'https://www.pichau.com.br/search?q=ryzen+5+7600',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%205%207600');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 5 7500F',
        '6C/12T | Base 3.7/Boost 5.0GHz | 32MB L3 | 65W | Sem iGPU | Entry AM5',
        900.00, 65, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-5-7500f',
        'https://www.pichau.com.br/search?q=ryzen+5+7500f',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%205%207500f');

-- ─── AMD Ryzen 8000 APU (Zen 4) AM5 ─────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 7 8700G',
        '8C/16T + RX 780M (12CU) | Base 4.2/Boost 5.1GHz | 24MB L3 | APU | 65W | 4nm Zen 4',
        1600.00, 65, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-7-8700g',
        'https://www.pichau.com.br/search?q=ryzen+7+8700g',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%207%208700g');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 5 8600G',
        '6C/12T + RX 760M (8CU) | Base 4.3/Boost 5.0GHz | APU | 65W | 4nm Zen 4',
        1200.00, 65, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-5-8600g',
        'https://www.pichau.com.br/search?q=ryzen+5+8600g',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%205%208600g');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 5 8500G',
        '6C/12T + RX 740M (4CU) | Base 3.5/Boost 5.0GHz | APU | 65W | 4nm Zen 4c',
        900.00, 65, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-5-8500g',
        'https://www.pichau.com.br/search?q=ryzen+5+8500g',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%205%208500g');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 5 8400F',
        '6C/12T | Base 4.2/Boost 4.7GHz | Sem iGPU | 65W | DDR5-5200 | 4nm Zen 4c',
        700.00, 65, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-5-8400f',
        'https://www.pichau.com.br/search?q=ryzen+5+8400f',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%205%208400f');

-- ─── AMD Ryzen 9000 (Zen 5) AM5 ─────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 9 9950X3D',
        '16C/32T | Base 4.3/Boost 5.7GHz | 144MB 3D Cache | PCIe 5.0 x28 | 3nm Zen 5',
        3200.00, 170, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-9-9950x3d',
        'https://www.pichau.com.br/search?q=ryzen+9+9950x3d',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%209%209950x3d');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 9 9950X',
        '16C/32T | Base 4.3/Boost 5.7GHz | 64MB L3 | PCIe 5.0 x28 | 3nm Zen 5',
        2800.00, 170, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-9-9950x',
        'https://www.pichau.com.br/search?q=ryzen+9+9950x',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%209%209950x');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 9 9900X3D',
        '12C/24T | Base 4.4/Boost 5.6GHz | 140MB 3D Cache | 120W | 3nm Zen 5',
        2600.00, 120, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-9-9900x3d',
        'https://www.pichau.com.br/search?q=ryzen+9+9900x3d',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%209%209900x3d');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 7 9800X3D',
        '8C/16T | Base 4.7/Boost 5.2GHz | 96MB 3D V-Cache | #1 gaming absoluto 2026 | 3nm Zen 5',
        2500.00, 120, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-7-9800x3d',
        'https://www.pichau.com.br/search?q=ryzen+7+9800x3d',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%207%209800x3d');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 7 9700X',
        '8C/16T | Base 3.8/Boost 5.5GHz | 40MB L3 | 65W | Melhor IPC Zen 5',
        1900.00, 65, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-7-9700x',
        'https://www.pichau.com.br/search?q=ryzen+7+9700x',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%207%209700x');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Ryzen 5 9600X',
        '6C/12T | Base 3.9/Boost 5.4GHz | 38MB L3 | 65W | Entry Zen 5 | +15% IPC vs 7600X',
        1500.00, 65, 1, 2, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/ryzen-5-9600x',
        'https://www.pichau.com.br/search?q=ryzen+5+9600x',
        'https://www.terabyteshop.com.br/busca?busca=ryzen%205%209600x');

-- ─── CPUs Legado DDR3 ────────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i5-4460',
        '4C/4T | 3.2/3.4GHz | 6MB L3 | 22nm Haswell | Legado DDR3',
        200.00, 84, 1, 1, 'LGA1150', 'DDR3', NULL,
        'https://www.kabum.com.br/busca/core-i5-4460',
        'https://www.pichau.com.br/search?q=core+i5+4460',
        'https://www.terabyteshop.com.br/busca?busca=core%20i5%204460');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Core i3-4130',
        '2C/4T | 3.4GHz | 3MB L3 | 22nm Haswell | Legado DDR3',
        120.00, 54, 1, 1, 'LGA1150', 'DDR3', NULL,
        'https://www.kabum.com.br/busca/core-i3-4130',
        'https://www.pichau.com.br/search?q=core+i3+4130',
        'https://www.terabyteshop.com.br/busca?busca=core%20i3%204130');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Intel Pentium G3258',
        '2C/2T | 3.2GHz OC | 3MB L3 | 22nm Haswell | Legado DDR3',
        80.00, 53, 1, 1, 'LGA1150', 'DDR3', NULL,
        'https://www.kabum.com.br/busca/pentium-g3258',
        'https://www.pichau.com.br/search?q=pentium+g3258',
        'https://www.terabyteshop.com.br/busca?busca=pentium%20g3258');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD FX-8350',
        '8C/8T | 4.0/4.2GHz | 8MB L3 | 32nm Piledriver | Legado DDR3 AM3+',
        180.00, 125, 1, 2, 'AM3+', 'DDR3', NULL,
        'https://www.kabum.com.br/busca/fx-8350',
        'https://www.pichau.com.br/search?q=fx+8350',
        'https://www.terabyteshop.com.br/busca?busca=fx%208350');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD FX-6300',
        '6C/6T | 3.5/4.1GHz | 6MB L3 | 32nm Piledriver | Legado DDR3 AM3+',
        150.00, 95, 1, 2, 'AM3+', 'DDR3', NULL,
        'https://www.kabum.com.br/busca/fx-6300',
        'https://www.pichau.com.br/search?q=fx+6300',
        'https://www.terabyteshop.com.br/busca?busca=fx%206300');

-- ============================================================
-- PLACAS DE VÍDEO (categoria_id=2)
-- ============================================================

-- ─── NVIDIA GeForce GTX (Entry Legado / XX50 tier) ──────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce GTX 1650',
        '896 CUDA | 4GB GDDR6 128-bit | TDP 75W | sem conector extra | sem Ray Tracing | Turing TU117',
        600.00, 75, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/gtx-1650',
        'https://www.pichau.com.br/search?q=gtx+1650',
        'https://www.terabyteshop.com.br/busca?busca=gtx%201650');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce GTX 1660 Super',
        '1408 CUDA | 6GB GDDR6 192-bit | TDP 125W | NVENC atualizado | Turing TU116',
        900.00, 125, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/gtx-1660-super',
        'https://www.pichau.com.br/search?q=gtx+1660+super',
        'https://www.terabyteshop.com.br/busca?busca=gtx%201660%20super');

-- ─── NVIDIA RTX 30 Series ────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 3050 8GB',
        '2560 CUDA | 8GB GDDR6 128-bit | Boost 1777MHz | 9.1 TFLOPS | 224 GB/s | DLSS 2 | GA106 8nm',
        1100.00, 130, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-3050',
        'https://www.pichau.com.br/search?q=rtx+3050',
        'https://www.terabyteshop.com.br/busca?busca=rtx%203050');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 3060 12GB',
        '3584 CUDA | 12GB GDDR6 192-bit | 12.7 TFLOPS | 360 GB/s | DLSS 3 | 1080p-1440p | GA106 8nm',
        1500.00, 170, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-3060',
        'https://www.pichau.com.br/search?q=rtx+3060',
        'https://www.terabyteshop.com.br/busca?busca=rtx%203060');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 3060 Ti 8GB',
        '4864 CUDA | 8GB GDDR6 256-bit | 16.2 TFLOPS | 448 GB/s | DLSS 3 | GA104 8nm',
        1800.00, 200, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-3060-ti',
        'https://www.pichau.com.br/search?q=rtx+3060+ti',
        'https://www.terabyteshop.com.br/busca?busca=rtx%203060%20ti');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 3070 8GB',
        '5888 CUDA | 8GB GDDR6 256-bit | Boost 1725MHz | 20.3 TFLOPS | 448 GB/s | GA104 8nm',
        2200.00, 220, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-3070',
        'https://www.pichau.com.br/search?q=rtx+3070',
        'https://www.terabyteshop.com.br/busca?busca=rtx%203070');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 3070 Ti 8GB',
        '6144 CUDA | 8GB GDDR6X 256-bit | 21.7 TFLOPS | 608 GB/s | GA104 8nm',
        2500.00, 290, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-3070-ti',
        'https://www.pichau.com.br/search?q=rtx+3070+ti',
        'https://www.terabyteshop.com.br/busca?busca=rtx%203070%20ti');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 3080 10GB',
        '8704 CUDA | 10GB GDDR6X 320-bit | 29.8 TFLOPS | 760 GB/s | 4K gaming | GA102 8nm',
        3000.00, 320, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-3080',
        'https://www.pichau.com.br/search?q=rtx+3080',
        'https://www.terabyteshop.com.br/busca?busca=rtx%203080');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 3080 12GB',
        '8960 CUDA | 12GB GDDR6X 384-bit | 30.6 TFLOPS | 912 GB/s | GA102 8nm',
        3500.00, 350, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-3080-12gb',
        'https://www.pichau.com.br/search?q=rtx+3080+12gb',
        'https://www.terabyteshop.com.br/busca?busca=rtx%203080%2012gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 3090 24GB',
        '10496 CUDA | 24GB GDDR6X 384-bit | 35.6 TFLOPS | 936 GB/s | Workstation/IA | GA102 8nm',
        4500.00, 350, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-3090',
        'https://www.pichau.com.br/search?q=rtx+3090',
        'https://www.terabyteshop.com.br/busca?busca=rtx%203090');

-- ─── NVIDIA RTX 40 Series ────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 4060 8GB',
        '3072 CUDA | 8GB GDDR6 128-bit | Boost 2460MHz | 15.1 TFLOPS | 272 GB/s | DLSS 3 + Frame Gen | AD107 4nm',
        1800.00, 115, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-4060',
        'https://www.pichau.com.br/search?q=rtx+4060',
        'https://www.terabyteshop.com.br/busca?busca=rtx%204060');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 4060 Ti 8GB',
        '4352 CUDA | 8GB GDDR6 128-bit | Boost 2535MHz | 22.1 TFLOPS | DLSS 3 | AD106 4nm',
        2200.00, 165, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-4060-ti',
        'https://www.pichau.com.br/search?q=rtx+4060+ti',
        'https://www.terabyteshop.com.br/busca?busca=rtx%204060%20ti');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 4060 Ti 16GB',
        '4352 CUDA | 16GB GDDR6 128-bit | Boost 2535MHz | 22.1 TFLOPS | DLSS 3 | AD106 4nm',
        2800.00, 165, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-4060-ti-16gb',
        'https://www.pichau.com.br/search?q=rtx+4060+ti+16gb',
        'https://www.terabyteshop.com.br/busca?busca=rtx%204060%20ti%2016gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 4070 12GB',
        '5888 CUDA | 12GB GDDR6X 192-bit | 29.1 TFLOPS | 504 GB/s | DLSS 3 + Frame Gen | AD104 4nm',
        3500.00, 200, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-4070',
        'https://www.pichau.com.br/search?q=rtx+4070',
        'https://www.terabyteshop.com.br/busca?busca=rtx%204070');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 4070 Super 12GB',
        '7168 CUDA | 12GB GDDR6X 192-bit | 35.5 TFLOPS | 504 GB/s | ~20% mais rápido que 4070 | AD102-mini 4nm',
        4200.00, 220, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-4070-super',
        'https://www.pichau.com.br/search?q=rtx+4070+super',
        'https://www.terabyteshop.com.br/busca?busca=rtx%204070%20super');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 4070 Ti Super 16GB',
        '8448 CUDA | 16GB GDDR6X 256-bit | 44.1 TFLOPS | 672 GB/s | AD103 4nm',
        5000.00, 285, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-4070-ti-super',
        'https://www.pichau.com.br/search?q=rtx+4070+ti+super',
        'https://www.terabyteshop.com.br/busca?busca=rtx%204070%20ti%20super');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 4080 Super 16GB',
        '10240 CUDA | 16GB GDDR6X 256-bit | 52.2 TFLOPS | 736 GB/s | DLSS 3.5 + Ray Reconstruction | AD103 4nm',
        6500.00, 320, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-4080-super',
        'https://www.pichau.com.br/search?q=rtx+4080+super',
        'https://www.terabyteshop.com.br/busca?busca=rtx%204080%20super');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 4090 24GB',
        '16384 CUDA | 24GB GDDR6X 384-bit | Boost 2520MHz | 82.6 TFLOPS | 1008 GB/s | DLSS 3.5 | AD102 4nm',
        8000.00, 450, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-4090',
        'https://www.pichau.com.br/search?q=rtx+4090',
        'https://www.terabyteshop.com.br/busca?busca=rtx%204090');

-- ─── NVIDIA RTX 50 Series (Blackwell 2025-2026) ──────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 5050 8GB',
        '~2560 CUDA | 8GB GDDR7 128-bit | ~130W | DLSS 4 MFG | Entry Blackwell | GB207 4nm',
        1500.00, 130, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-5050',
        'https://www.pichau.com.br/search?q=rtx+5050',
        'https://www.terabyteshop.com.br/busca?busca=rtx%205050');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 5060 8GB',
        '3840 CUDA | 8GB GDDR7 128-bit | ~150W | DLSS 4 MFG | 1080p/1440p entry | GB207 4nm',
        2000.00, 150, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-5060',
        'https://www.pichau.com.br/search?q=rtx+5060',
        'https://www.terabyteshop.com.br/busca?busca=rtx%205060');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 5060 Ti 8GB',
        '4608 CUDA | 8GB GDDR7 128-bit | ~165W | DLSS 4 MFG | 1440p mid | GB206 4nm',
        2500.00, 165, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-5060-ti',
        'https://www.pichau.com.br/search?q=rtx+5060+ti',
        'https://www.terabyteshop.com.br/busca?busca=rtx%205060%20ti');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 5060 Ti 16GB',
        '4608 CUDA | 16GB GDDR7 128-bit | ~180W | DLSS 4 MFG | 1440p mid com VRAM extra | GB206 4nm',
        3000.00, 180, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-5060-ti-16gb',
        'https://www.pichau.com.br/search?q=rtx+5060+ti+16gb',
        'https://www.terabyteshop.com.br/busca?busca=rtx%205060%20ti%2016gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 5070 16GB',
        '6144 CUDA | 16GB GDDR7 128-bit | ~45 TFLOPS | ~400 GB/s | DLSS 4 MFG dobra FPS | PCIe 5.0 | GB205 4nm',
        5500.00, 250, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-5070',
        'https://www.pichau.com.br/search?q=rtx+5070',
        'https://www.terabyteshop.com.br/busca?busca=rtx%205070');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 5070 Ti 16GB',
        '8960 CUDA | 16GB GDDR7 256-bit | ~65 TFLOPS | ~640 GB/s | DLSS 4 MFG x4 | PCIe 5.0 | GB203 4nm',
        7500.00, 300, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-5070-ti',
        'https://www.pichau.com.br/search?q=rtx+5070+ti',
        'https://www.terabyteshop.com.br/busca?busca=rtx%205070%20ti');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 5080 16GB',
        '10752 CUDA | 16GB GDDR7 256-bit | ~90 TFLOPS | ~960 GB/s | DLSS 4 | PCIe 5.0 | GB203 4nm',
        9000.00, 360, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-5080',
        'https://www.pichau.com.br/search?q=rtx+5080',
        'https://www.terabyteshop.com.br/busca?busca=rtx%205080');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NVIDIA GeForce RTX 5090 32GB',
        '21760 CUDA | 32GB GDDR7 512-bit | ~170 TFLOPS | ~1792 GB/s | DLSS 4 MFG | PCIe 5.0 | 4-slot | GB202 4nm',
        18000.00, 575, 2, 3, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rtx-5090',
        'https://www.pichau.com.br/search?q=rtx+5090',
        'https://www.terabyteshop.com.br/busca?busca=rtx%205090');

-- ─── AMD RX 6000 Series ──────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 6400 4GB',
        '768 SPs | 4GB GDDR6 64-bit | Boost 2321MHz | 3.6 TFLOPS | 128 GB/s | FSR 1 | sem conector extra | Navi 24 6nm',
        500.00, 53, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-6400',
        'https://www.pichau.com.br/search?q=rx+6400',
        'https://www.terabyteshop.com.br/busca?busca=rx%206400');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 6500 XT 4GB',
        '1024 SPs | 4GB GDDR6 64-bit | Boost 2825MHz | 5.8 TFLOPS | 144 GB/s | FSR 1 | PCIe x4 | Navi 24 6nm',
        900.00, 107, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-6500-xt',
        'https://www.pichau.com.br/search?q=rx+6500+xt',
        'https://www.terabyteshop.com.br/busca?busca=rx%206500%20xt');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 6600 8GB',
        '2048 SPs | 8GB GDDR6 128-bit | Boost 2491MHz | 10.6 TFLOPS | 224 GB/s | FSR 2 | Navi 23 7nm',
        1400.00, 132, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-6600',
        'https://www.pichau.com.br/search?q=rx+6600',
        'https://www.terabyteshop.com.br/busca?busca=rx%206600');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 6600 XT 8GB',
        '2048 SPs | 8GB GDDR6 128-bit | Boost 2589MHz | 10.6 TFLOPS | 256 GB/s | FSR 2 | Navi 23 7nm',
        1600.00, 160, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-6600-xt',
        'https://www.pichau.com.br/search?q=rx+6600+xt',
        'https://www.terabyteshop.com.br/busca?busca=rx%206600%20xt');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 6700 10GB',
        '2304 SPs | 10GB GDDR6 160-bit | 11.1 TFLOPS | 320 GB/s | FSR 2 | Navi 22 7nm',
        1900.00, 175, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-6700',
        'https://www.pichau.com.br/search?q=rx+6700',
        'https://www.terabyteshop.com.br/busca?busca=rx%206700');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 6700 XT 12GB',
        '2560 SPs | 12GB GDDR6 192-bit | Boost 2581MHz | 13.2 TFLOPS | 384 GB/s | FSR 2 | Navi 22 7nm',
        2300.00, 230, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-6700-xt',
        'https://www.pichau.com.br/search?q=rx+6700+xt',
        'https://www.terabyteshop.com.br/busca?busca=rx%206700%20xt');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 6800 16GB',
        '3840 SPs | 16GB GDDR6 256-bit | 16.2 TFLOPS | 512 GB/s | FSR 2 | Navi 21 7nm',
        2800.00, 250, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-6800',
        'https://www.pichau.com.br/search?q=rx+6800',
        'https://www.terabyteshop.com.br/busca?busca=rx%206800');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 6800 XT 16GB',
        '4096 SPs | 16GB GDDR6 256-bit | Boost 2250MHz | 20.7 TFLOPS | 512 GB/s | Navi 21 7nm',
        3200.00, 300, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-6800-xt',
        'https://www.pichau.com.br/search?q=rx+6800+xt',
        'https://www.terabyteshop.com.br/busca?busca=rx%206800%20xt');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 6900 XT 16GB',
        '4096 SPs | 16GB GDDR6 256-bit | Boost 2250MHz | 23.0 TFLOPS | 512 GB/s | Full die Navi 21 7nm',
        4000.00, 300, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-6900-xt',
        'https://www.pichau.com.br/search?q=rx+6900+xt',
        'https://www.terabyteshop.com.br/busca?busca=rx%206900%20xt');

-- ─── AMD RX 7000 Series ──────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 7600 8GB',
        '2048 SPs | 8GB GDDR6 128-bit | Boost 2655MHz | 21.7 TFLOPS | 288 GB/s | FSR 3.1 | Navi 33 6nm',
        1600.00, 165, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-7600',
        'https://www.pichau.com.br/search?q=rx+7600',
        'https://www.terabyteshop.com.br/busca?busca=rx%207600');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 7600 XT 16GB',
        '2048 SPs | 16GB GDDR6 128-bit | Boost 2755MHz | 22.1 TFLOPS | 288 GB/s | FSR 3.1 | Navi 33 6nm',
        2200.00, 190, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-7600-xt',
        'https://www.pichau.com.br/search?q=rx+7600+xt',
        'https://www.terabyteshop.com.br/busca?busca=rx%207600%20xt');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 7700 XT 12GB',
        '3456 SPs | 12GB GDDR6 192-bit | Boost 2599MHz | 35.9 TFLOPS | 432 GB/s | FSR 3.1 | Navi 32 5nm+6nm',
        2500.00, 245, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-7700-xt',
        'https://www.pichau.com.br/search?q=rx+7700+xt',
        'https://www.terabyteshop.com.br/busca?busca=rx%207700%20xt');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 7800 XT 16GB',
        '3840 SPs | 16GB GDDR6 256-bit | Boost 2430MHz | 37.3 TFLOPS | 624 GB/s | FSR 3.1 | Navi 32 5nm+6nm',
        3000.00, 263, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-7800-xt',
        'https://www.pichau.com.br/search?q=rx+7800+xt',
        'https://www.terabyteshop.com.br/busca?busca=rx%207800%20xt');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 7900 GRE 16GB',
        '5120 SPs | 16GB GDDR6 256-bit | 46.0 TFLOPS | 576 GB/s | FSR 3 | Navi 31 5nm+6nm',
        3800.00, 260, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-7900-gre',
        'https://www.pichau.com.br/search?q=rx+7900+gre',
        'https://www.terabyteshop.com.br/busca?busca=rx%207900%20gre');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 7900 XT 20GB',
        '5376 SPs | 20GB GDDR6 320-bit | 51.6 TFLOPS | 800 GB/s | FSR 3 | Navi 31 5nm+6nm',
        4800.00, 315, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-7900-xt',
        'https://www.pichau.com.br/search?q=rx+7900+xt',
        'https://www.terabyteshop.com.br/busca?busca=rx%207900%20xt');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 7900 XTX 24GB',
        '6144 SPs | 24GB GDDR6 384-bit | Boost 2500MHz | 61.4 TFLOPS | 960 GB/s | FSR 3 | Navi 31 5nm full',
        6000.00, 355, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-7900-xtx',
        'https://www.pichau.com.br/search?q=rx+7900+xtx',
        'https://www.terabyteshop.com.br/busca?busca=rx%207900%20xtx');

-- ─── AMD RX 9000 Series (RDNA 4) ─────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 9060 XT 8GB',
        '2048 SPs | 8GB GDDR6 | Boost ~2900MHz | FSR 4 com Machine Learning | RT 2x RDNA3 | Navi 44 4nm | PCIe 5.0 x8',
        2000.00, 150, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-9060-xt',
        'https://www.pichau.com.br/search?q=rx+9060+xt',
        'https://www.terabyteshop.com.br/busca?busca=rx%209060%20xt');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 9060 XT 16GB',
        '2048 SPs | 16GB GDDR6 | Boost ~2900MHz | FSR 4 ML | RDNA 4 | Navi 44 4nm | PCIe 5.0 x8',
        2500.00, 150, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-9060-xt-16gb',
        'https://www.pichau.com.br/search?q=rx+9060+xt+16gb',
        'https://www.terabyteshop.com.br/busca?busca=rx%209060%20xt%2016gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 9070 16GB',
        '3584 SPs | 16GB GDDR6 256-bit | ~43 TFLOPS | 700 GB/s | FSR 4 ML | RDNA 4 | Navi 48 4nm | PCIe 5.0 x16',
        3800.00, 220, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-9070',
        'https://www.pichau.com.br/search?q=rx+9070',
        'https://www.terabyteshop.com.br/busca?busca=rx%209070');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('AMD Radeon RX 9070 XT 16GB',
        '4096 SPs | 16GB GDDR6 256-bit | Boost 2970MHz | ~51 TFLOPS | 800 GB/s | FSR 4 ML | Navi 48 4nm | PCIe 5.0 x16',
        4500.00, 304, 2, 2, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/rx-9070-xt',
        'https://www.pichau.com.br/search?q=rx+9070+xt',
        'https://www.terabyteshop.com.br/busca?busca=rx%209070%20xt');

-- ============================================================
-- CONTINUAÇÃO — MEMÓRIA RAM, ARMAZENAMENTO, PLACAS-MÃE,
-- COOLERS, FONTES E GABINETES
-- ============================================================

-- ============================================================
-- MEMÓRIA RAM (categoria_id=3)
-- ============================================================

-- ─── DDR3 Legado ─────────────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair Vengeance DDR3 1866 CL10 8GB',
        '240-pin | 1.5V | dissipador alumínio | 1866 MT/s CL10 | 14.9 GB/s | LGA1150 / AM3+',
        120.00, 5, 3, 4, NULL, 'DDR3', NULL,
        'https://www.kabum.com.br/busca/memoria-ddr3-corsair-1866',
        'https://www.pichau.com.br/search?q=memoria+ddr3+corsair+1866',
        'https://www.terabyteshop.com.br/busca?busca=memoria%20ddr3%20corsair%201866');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Kingston HyperX Fury DDR3 1600 8GB',
        '240-pin | 1.5V | 1600 MT/s CL10 | 12.8 GB/s | LGA1150/1155 / AM3+ | plug-n-play',
        80.00, 5, 3, 6, NULL, 'DDR3', NULL,
        'https://www.kabum.com.br/busca/hyperx-fury-ddr3-1600',
        'https://www.pichau.com.br/search?q=hyperx+fury+ddr3+1600',
        'https://www.terabyteshop.com.br/busca?busca=hyperx%20fury%20ddr3%201600');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('G.Skill Ripjaws X DDR3 1600 CL9 8GB',
        '240-pin | 1.5V | 1600 MT/s CL9 apertado | dissipador X | LGA1150 / AM3+',
        90.00, 5, 3, 15, NULL, 'DDR3', NULL,
        'https://www.kabum.com.br/busca/gskill-ripjaws-ddr3-1600',
        'https://www.pichau.com.br/search?q=gskill+ripjaws+ddr3+1600',
        'https://www.terabyteshop.com.br/busca?busca=gskill%20ripjaws%20ddr3%201600');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Crucial DDR3 1600 CL11 8GB',
        '240-pin | 1.5V | sem dissipador | 1600 MT/s CL11 | LGA1150 / AM3+ | econômico',
        70.00, 5, 3, 10, NULL, 'DDR3', NULL,
        'https://www.kabum.com.br/busca/crucial-ddr3-1600-8gb',
        'https://www.pichau.com.br/search?q=crucial+ddr3+1600+8gb',
        'https://www.terabyteshop.com.br/busca?busca=crucial%20ddr3%201600%208gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Kingston ValueRAM DDR3 1333 4GB',
        '240-pin | 1.5V | 1333 MT/s CL9 | LGA1150/1155 / AM3+ | básico office',
        40.00, 4, 3, 6, NULL, 'DDR3', NULL,
        'https://www.kabum.com.br/busca/kingston-valueram-ddr3-1333',
        'https://www.pichau.com.br/search?q=kingston+valueram+ddr3+1333',
        'https://www.terabyteshop.com.br/busca?busca=kingston%20valueram%20ddr3%201333');

-- ─── DDR4 16GB (Kits 2x8GB) ──────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair Vengeance LPX DDR4 3000 CL15 16GB',
        '2x8GB | 288-pin | 1.35V | perfil ultra-baixo 31mm | 3000 MT/s CL15 | Intel/AMD DDR4',
        200.00, 10, 3, 4, NULL, 'DDR4', NULL,
        'https://www.kabum.com.br/busca/corsair-vengeance-lpx-ddr4-3000-16gb',
        'https://www.pichau.com.br/search?q=corsair+vengeance+lpx+ddr4+3000+16gb',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20vengeance%20lpx%20ddr4%203000%2016gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair Vengeance LPX DDR4 3200 CL16 16GB',
        '2x8GB | 288-pin | 1.35V | Samsung B-die | 3200 MT/s CL16 | 51.2 GB/s | XMP 2.0',
        220.00, 10, 3, 4, NULL, 'DDR4', NULL,
        'https://www.kabum.com.br/busca/corsair-vengeance-lpx-ddr4-3200-16gb',
        'https://www.pichau.com.br/search?q=corsair+vengeance+lpx+ddr4+3200+16gb',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20vengeance%20lpx%20ddr4%203200%2016gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('G.Skill Ripjaws V DDR4 3200 CL16 16GB',
        '2x8GB | 288-pin | 1.35V | sem RGB | perfil baixo | 3200 MT/s CL16 | Intel/AMD',
        180.00, 10, 3, 15, NULL, 'DDR4', NULL,
        'https://www.kabum.com.br/busca/gskill-ripjaws-v-ddr4-3200-16gb',
        'https://www.pichau.com.br/search?q=gskill+ripjaws+v+ddr4+3200+16gb',
        'https://www.terabyteshop.com.br/busca?busca=gskill%20ripjaws%20v%20ddr4%203200%2016gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Kingston FURY Beast DDR4 3200 CL16 16GB',
        '2x8GB | 288-pin | 1.35V | 3200 MT/s CL16 | XMP 2.0 | Ryzen 5000 sweet spot',
        190.00, 10, 3, 6, NULL, 'DDR4', NULL,
        'https://www.kabum.com.br/busca/kingston-fury-beast-ddr4-3200-16gb',
        'https://www.pichau.com.br/search?q=kingston+fury+beast+ddr4+3200+16gb',
        'https://www.terabyteshop.com.br/busca?busca=kingston%20fury%20beast%20ddr4%203200%2016gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Crucial Ballistix DDR4 3200 CL16 16GB',
        '2x8GB | 288-pin | 1.35V | Micron E-die | termômetro embutido | 3200 MT/s CL16',
        170.00, 10, 3, 10, NULL, 'DDR4', NULL,
        'https://www.kabum.com.br/busca/crucial-ballistix-ddr4-3200-16gb',
        'https://www.pichau.com.br/search?q=crucial+ballistix+ddr4+3200+16gb',
        'https://www.terabyteshop.com.br/busca?busca=crucial%20ballistix%20ddr4%203200%2016gb');

-- ─── DDR4 32GB (Kits 2x16GB) ─────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair Vengeance LPX DDR4 3200 CL16 32GB',
        '2x16GB | 288-pin | 1.35V | Samsung B-die | 3200 MT/s CL16 | 51.2 GB/s | fácil OC 3600 XMP',
        450.00, 15, 3, 4, NULL, 'DDR4', NULL,
        'https://www.kabum.com.br/busca/corsair-vengeance-lpx-ddr4-3200-32gb',
        'https://www.pichau.com.br/search?q=corsair+vengeance+lpx+ddr4+3200+32gb',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20vengeance%20lpx%20ddr4%203200%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair Dominator Platinum RGB DDR4 3600 CL18 32GB',
        '2x16GB | 288-pin | 1.35V | perfil 51mm | 3600 MT/s CL18 | 57.6 GB/s | XMP 2.0 | RGB endereçável',
        650.00, 15, 3, 4, NULL, 'DDR4', NULL,
        'https://www.kabum.com.br/busca/corsair-dominator-platinum-rgb-ddr4-3600-32gb',
        'https://www.pichau.com.br/search?q=corsair+dominator+platinum+rgb+ddr4+3600+32gb',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20dominator%20platinum%20rgb%20ddr4%203600%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('G.Skill Trident Z RGB DDR4 3600 CL16 32GB',
        '2x16GB | 288-pin | 1.35V | Samsung B-die | 3600 MT/s CL16 | lat ~13.3ns | OC DDR4-4000+',
        550.00, 15, 3, 15, NULL, 'DDR4', NULL,
        'https://www.kabum.com.br/busca/gskill-trident-z-rgb-ddr4-3600-32gb',
        'https://www.pichau.com.br/search?q=gskill+trident+z+rgb+ddr4+3600+32gb',
        'https://www.terabyteshop.com.br/busca?busca=gskill%20trident%20z%20rgb%20ddr4%203600%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('G.Skill Ripjaws V DDR4 3200 CL16 32GB',
        '2x16GB | 288-pin | 1.35V | sem RGB | perfil baixo | 3200 MT/s CL16 | Intel/AMD universais',
        350.00, 15, 3, 15, NULL, 'DDR4', NULL,
        'https://www.kabum.com.br/busca/gskill-ripjaws-v-ddr4-3200-32gb',
        'https://www.pichau.com.br/search?q=gskill+ripjaws+v+ddr4+3200+32gb',
        'https://www.terabyteshop.com.br/busca?busca=gskill%20ripjaws%20v%20ddr4%203200%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Kingston FURY Beast DDR4 3600 CL18 32GB',
        '2x16GB | 288-pin | 1.35V | 3600 MT/s CL18 | DDR4-3800 OC possível | Ryzen 5000 sweet spot',
        480.00, 15, 3, 6, NULL, 'DDR4', NULL,
        'https://www.kabum.com.br/busca/kingston-fury-beast-ddr4-3600-32gb',
        'https://www.pichau.com.br/search?q=kingston+fury+beast+ddr4+3600+32gb',
        'https://www.terabyteshop.com.br/busca?busca=kingston%20fury%20beast%20ddr4%203600%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Kingston HyperX Predator DDR4 4000 CL19 32GB',
        '2x16GB | 288-pin | 1.35V | XMP 3.0 | 4000 MT/s | lat ~14.25ns | Intel Z790/Z690 OC',
        700.00, 15, 3, 6, NULL, 'DDR4', NULL,
        'https://www.kabum.com.br/busca/hyperx-predator-ddr4-4000-32gb',
        'https://www.pichau.com.br/search?q=hyperx+predator+ddr4+4000+32gb',
        'https://www.terabyteshop.com.br/busca?busca=hyperx%20predator%20ddr4%204000%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Crucial Ballistix DDR4 3200 CL16 32GB',
        '2x16GB | 288-pin | 1.35V | Micron E-die | termômetro embutido | 3200 MT/s CL16',
        320.00, 15, 3, 10, NULL, 'DDR4', NULL,
        'https://www.kabum.com.br/busca/crucial-ballistix-ddr4-3200-32gb',
        'https://www.pichau.com.br/search?q=crucial+ballistix+ddr4+3200+32gb',
        'https://www.terabyteshop.com.br/busca?busca=crucial%20ballistix%20ddr4%203200%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Crucial Pro DDR4 3600 CL18 32GB',
        '2x16GB | 288-pin | 1.35V | Micron E-die | 3600 MT/s CL18 | boa estabilidade sem tunagem',
        450.00, 15, 3, 10, NULL, 'DDR4', NULL,
        'https://www.kabum.com.br/busca/crucial-pro-ddr4-3600-32gb',
        'https://www.pichau.com.br/search?q=crucial+pro+ddr4+3600+32gb',
        'https://www.terabyteshop.com.br/busca?busca=crucial%20pro%20ddr4%203600%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('TeamGroup T-Force Vulcan Z DDR4 3200 CL16 32GB',
        '2x16GB | 288-pin | 1.35V | spreader alumínio | 3200 MT/s CL16 | Intel/AMD | econômico',
        300.00, 15, 3, 16, NULL, 'DDR4', NULL,
        'https://www.kabum.com.br/busca/teamgroup-vulcan-z-ddr4-3200-32gb',
        'https://www.pichau.com.br/search?q=teamgroup+vulcan+z+ddr4+3200+32gb',
        'https://www.terabyteshop.com.br/busca?busca=teamgroup%20vulcan%20z%20ddr4%203200%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('TeamGroup T-Force Delta RGB DDR4 3600 CL18 32GB',
        '2x16GB | 288-pin | 1.35V | RGB difuso | 3600 MT/s | 57.6 GB/s | XMP 2.0',
        420.00, 15, 3, 16, NULL, 'DDR4', NULL,
        'https://www.kabum.com.br/busca/teamgroup-delta-rgb-ddr4-3600-32gb',
        'https://www.pichau.com.br/search?q=teamgroup+delta+rgb+ddr4+3600+32gb',
        'https://www.terabyteshop.com.br/busca?busca=teamgroup%20delta%20rgb%20ddr4%203600%2032gb');

-- ─── DDR5 16GB (Kits 2x8GB) ──────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Kingston FURY Beast DDR5 5200 CL40 16GB',
        '2x8GB | 288-pin | 1.25V | 5200 MT/s CL40 | 83 GB/s | DDR5 entry | AM5 / LGA1700',
        200.00, 8, 3, 6, NULL, 'DDR5', NULL,
        'https://www.kabum.com.br/busca/kingston-fury-beast-ddr5-5200-16gb',
        'https://www.pichau.com.br/search?q=kingston+fury+beast+ddr5+5200+16gb',
        'https://www.terabyteshop.com.br/busca?busca=kingston%20fury%20beast%20ddr5%205200%2016gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair Vengeance DDR5 5200 CL40 16GB',
        '2x8GB | 288-pin | 1.25V | 5200 MT/s CL40 | 83 GB/s | XMP3/EXPO | DDR5 entry Corsair',
        220.00, 8, 3, 4, NULL, 'DDR5', NULL,
        'https://www.kabum.com.br/busca/corsair-vengeance-ddr5-5200-16gb',
        'https://www.pichau.com.br/search?q=corsair+vengeance+ddr5+5200+16gb',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20vengeance%20ddr5%205200%2016gb');

-- ─── DDR5 32GB (Kits 2x16GB) ─────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair Vengeance DDR5 5200 CL40 32GB',
        '2x16GB | 288-pin | 1.25V | 5200 MT/s CL40 | 83 GB/s | XMP3/EXPO | AM5/LGA1700/LGA1851',
        450.00, 15, 3, 4, NULL, 'DDR5', NULL,
        'https://www.kabum.com.br/busca/corsair-vengeance-ddr5-5200-32gb',
        'https://www.pichau.com.br/search?q=corsair+vengeance+ddr5+5200+32gb',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20vengeance%20ddr5%205200%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair Vengeance RGB DDR5 6000 CL36 32GB',
        '2x16GB | 288-pin | 1.35V | Micron B-die | PMIC on-module | 6000 MT/s CL36 | 96 GB/s | XMP3/EXPO',
        600.00, 15, 3, 4, NULL, 'DDR5', NULL,
        'https://www.kabum.com.br/busca/corsair-vengeance-rgb-ddr5-6000-32gb',
        'https://www.pichau.com.br/search?q=corsair+vengeance+rgb+ddr5+6000+32gb',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20vengeance%20rgb%20ddr5%206000%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair Dominator Titanium DDR5 7200 CL34 32GB',
        '2x16GB | 288-pin | 1.4V | SK Hynix M-die selecionado | 7200 MT/s CL34 | lat ~9.4ns | LGA1851/Z890/X870',
        1200.00, 20, 3, 4, NULL, 'DDR5', NULL,
        'https://www.kabum.com.br/busca/corsair-dominator-titanium-ddr5-7200-32gb',
        'https://www.pichau.com.br/search?q=corsair+dominator+titanium+ddr5+7200+32gb',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20dominator%20titanium%20ddr5%207200%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('G.Skill Ripjaws S5 DDR5 5600 CL36 32GB',
        '2x16GB | 288-pin | 1.25V | baixo perfil sem RGB | 5600 MT/s CL36 | AM5/LGA1700 | entry-mid',
        430.00, 15, 3, 15, NULL, 'DDR5', NULL,
        'https://www.kabum.com.br/busca/gskill-ripjaws-s5-ddr5-5600-32gb',
        'https://www.pichau.com.br/search?q=gskill+ripjaws+s5+ddr5+5600+32gb',
        'https://www.terabyteshop.com.br/busca?busca=gskill%20ripjaws%20s5%20ddr5%205600%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('G.Skill Ripjaws S5 DDR5 6000 CL30 32GB',
        '2x16GB | 288-pin | 1.35V | baixo perfil | 6000 MT/s CL30 | baixa latência | melhor custo DDR5 G.Skill',
        550.00, 15, 3, 15, NULL, 'DDR5', NULL,
        'https://www.kabum.com.br/busca/gskill-ripjaws-s5-ddr5-6000-32gb',
        'https://www.pichau.com.br/search?q=gskill+ripjaws+s5+ddr5+6000+32gb',
        'https://www.terabyteshop.com.br/busca?busca=gskill%20ripjaws%20s5%20ddr5%206000%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('G.Skill Trident Z5 RGB DDR5 6400 CL32 32GB',
        '2x16GB | 288-pin | 1.4V | SK Hynix A-die | 6400 MT/s CL32 | 102 GB/s | EXPO/XMP3 | AM5/Z890/X870',
        800.00, 20, 3, 15, NULL, 'DDR5', NULL,
        'https://www.kabum.com.br/busca/gskill-trident-z5-rgb-ddr5-6400-32gb',
        'https://www.pichau.com.br/search?q=gskill+trident+z5+rgb+ddr5+6400+32gb',
        'https://www.terabyteshop.com.br/busca?busca=gskill%20trident%20z5%20rgb%20ddr5%206400%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Crucial Pro OC DDR5 5600 CL36 32GB',
        '2x16GB | 288-pin | 1.25V | Micron A-die | 5600 MT/s CL36 | XMP/EXPO automático | entry DDR5',
        380.00, 15, 3, 10, NULL, 'DDR5', NULL,
        'https://www.kabum.com.br/busca/crucial-pro-oc-ddr5-5600-32gb',
        'https://www.pichau.com.br/search?q=crucial+pro+oc+ddr5+5600+32gb',
        'https://www.terabyteshop.com.br/busca?busca=crucial%20pro%20oc%20ddr5%205600%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Crucial T700 DDR5 7200 CL34 32GB',
        '2x16GB | 288-pin | 1.4V | Micron B-die | heatspreader | 7200 MT/s CL34 | 115 GB/s | LGA1851/Z890/X870',
        1100.00, 20, 3, 10, NULL, 'DDR5', NULL,
        'https://www.kabum.com.br/busca/crucial-t700-ddr5-7200-32gb',
        'https://www.pichau.com.br/search?q=crucial+t700+ddr5+7200+32gb',
        'https://www.terabyteshop.com.br/busca?busca=crucial%20t700%20ddr5%207200%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('TeamGroup T-Force Delta RGB DDR5 6400 CL32 32GB',
        '2x16GB | 288-pin | 1.4V | SK Hynix A-die | 6400 MT/s CL32 | 102 GB/s | RGB premium acessível',
        700.00, 20, 3, 16, NULL, 'DDR5', NULL,
        'https://www.kabum.com.br/busca/teamgroup-delta-rgb-ddr5-6400-32gb',
        'https://www.pichau.com.br/search?q=teamgroup+delta+rgb+ddr5+6400+32gb',
        'https://www.terabyteshop.com.br/busca?busca=teamgroup%20delta%20rgb%20ddr5%206400%2032gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('TeamGroup T-Force Vulcan DDR5 6000 CL38 32GB',
        '2x16GB | 288-pin | 1.35V | baixo perfil | 6000 MT/s CL38 | ideal SFF com restrição de altura',
        500.00, 15, 3, 16, NULL, 'DDR5', NULL,
        'https://www.kabum.com.br/busca/teamgroup-vulcan-ddr5-6000-32gb',
        'https://www.pichau.com.br/search?q=teamgroup+vulcan+ddr5+6000+32gb',
        'https://www.terabyteshop.com.br/busca?busca=teamgroup%20vulcan%20ddr5%206000%2032gb');

-- ─── DDR5 64GB (Kits 2x32GB) ─────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Kingston FURY Renegade DDR5 6000 CL32 64GB',
        '2x32GB | 288-pin | 1.35V | Micron E-die | 6000 MT/s CL32 | EXPO/XMP3 | workstation AM5/Z890',
        1100.00, 25, 3, 6, NULL, 'DDR5', NULL,
        'https://www.kabum.com.br/busca/kingston-fury-renegade-ddr5-6000-64gb',
        'https://www.pichau.com.br/search?q=kingston+fury+renegade+ddr5+6000+64gb',
        'https://www.terabyteshop.com.br/busca?busca=kingston%20fury%20renegade%20ddr5%206000%2064gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair Dominator Titanium DDR5 7200 CL34 64GB',
        '2x32GB | 288-pin | 1.4V | SK Hynix M-die | 7200 MT/s CL34 | lat ~9.4ns | workstation entusiasta',
        2200.00, 30, 3, 4, NULL, 'DDR5', NULL,
        'https://www.kabum.com.br/busca/corsair-dominator-titanium-ddr5-7200-64gb',
        'https://www.pichau.com.br/search?q=corsair+dominator+titanium+ddr5+7200+64gb',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20dominator%20titanium%20ddr5%207200%2064gb');

-- ============================================================
-- ARMAZENAMENTO (categoria_id=4)
-- ============================================================

-- ─── SSDs NVMe PCIe Gen 4 ────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Samsung 980 Pro 2TB',
        'M.2 2280 | PCIe 4.0 x4 | NVMe 1.3c | 176-layer V-NAND | DRAM 512MB | 7000/5100 MB/s | TBW 1200TB',
        600.00, 7, 4, 5, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/samsung-980-pro-2tb',
        'https://www.pichau.com.br/search?q=samsung+980+pro+2tb',
        'https://www.terabyteshop.com.br/busca?busca=samsung%20980%20pro%202tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Samsung 990 Pro 2TB',
        'M.2 2280 | PCIe 4.0 x4 | NVMe 2.0 | 176-layer V-NAND MLC | DRAM 1GB | 7450/6900 MB/s | TBW 1200TB | PS5',
        800.00, 7, 4, 5, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/samsung-990-pro-2tb',
        'https://www.pichau.com.br/search?q=samsung+990+pro+2tb',
        'https://www.terabyteshop.com.br/busca?busca=samsung%20990%20pro%202tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Samsung 990 Pro 4TB',
        'M.2 2280 | PCIe 4.0 x4 | NVMe 2.0 | 176-layer V-NAND | DRAM 1.5GB | 7450/6900 MB/s | TBW 2400TB',
        1500.00, 8, 4, 5, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/samsung-990-pro-4tb',
        'https://www.pichau.com.br/search?q=samsung+990+pro+4tb',
        'https://www.terabyteshop.com.br/busca?busca=samsung%20990%20pro%204tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('WD Black SN850X 4TB',
        'M.2 2280 | PCIe 4.0 x4 | NVMe 2.0 | 112-layer 3D TLC | DRAM | 7300/6600 MB/s | TBW 2800TB | PS5/Xbox',
        1400.00, 8, 4, 9, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/wd-black-sn850x-4tb',
        'https://www.pichau.com.br/search?q=wd+black+sn850x+4tb',
        'https://www.terabyteshop.com.br/busca?busca=wd%20black%20sn850x%204tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Crucial T500 2TB',
        'M.2 2280 | PCIe 4.0 x4 | NVMe 1.4 | Micron B47R 232-layer TLC | DRAM | 7400/7000 MB/s | TBW 1200TB',
        700.00, 7, 4, 10, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/crucial-t500-2tb',
        'https://www.pichau.com.br/search?q=crucial+t500+2tb',
        'https://www.terabyteshop.com.br/busca?busca=crucial%20t500%202tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Kingston Fury Renegade 4TB PCIe 4.0',
        'M.2 2280 | PCIe 4.0 x4 | NVMe 2.0 | 3D TLC | DRAM | 7300/7000 MB/s | TBW 4000TB | maior TBW Gen4',
        1300.00, 8, 4, 6, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/kingston-fury-renegade-4tb',
        'https://www.pichau.com.br/search?q=kingston+fury+renegade+4tb',
        'https://www.terabyteshop.com.br/busca?busca=kingston%20fury%20renegade%204tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Seagate FireCuda 530 4TB',
        'M.2 2280 | PCIe 4.0 x4 | NVMe 1.4 | E18 controller | DRAM | 7300/6900 MB/s | TBW 5100TB | workstation',
        1400.00, 8, 4, 28, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/seagate-firecuda-530-4tb',
        'https://www.pichau.com.br/search?q=seagate+firecuda+530+4tb',
        'https://www.terabyteshop.com.br/busca?busca=seagate%20firecuda%20530%204tb');

-- ─── SSDs NVMe PCIe Gen 5 ────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Samsung 9100 Pro 4TB',
        'M.2 2280 | PCIe 5.0 x4 | NVMe 2.0 | 9-layer V-NAND TLC | DRAM 4GB | 14000/13000 MB/s | TBW 6400TB | AM5/Z890',
        3500.00, 10, 4, 5, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/samsung-9100-pro-4tb',
        'https://www.pichau.com.br/search?q=samsung+9100+pro+4tb',
        'https://www.terabyteshop.com.br/busca?busca=samsung%209100%20pro%204tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Samsung 9100 Pro 8TB',
        'M.2 2280 | PCIe 5.0 x4 | NVMe 2.0 | 9-layer V-NAND TLC | DRAM 4GB | 14000/13000 MB/s | TBW 6400TB',
        6500.00, 12, 4, 5, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/samsung-9100-pro-8tb',
        'https://www.pichau.com.br/search?q=samsung+9100+pro+8tb',
        'https://www.terabyteshop.com.br/busca?busca=samsung%209100%20pro%208tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('WD Black SN8100 4TB',
        'M.2 2280 | PCIe 5.0 x4 | NVMe 2.0 | 3D TLC | Phison E26 | DRAM 2GB | 14900/12900 MB/s | TBW 2800TB',
        2800.00, 10, 4, 9, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/wd-black-sn8100-4tb',
        'https://www.pichau.com.br/search?q=wd+black+sn8100+4tb',
        'https://www.terabyteshop.com.br/busca?busca=wd%20black%20sn8100%204tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Crucial T705 2TB',
        'M.2 2280 | PCIe 5.0 x4 | NVMe 2.0 | Micron 232-layer TLC | Phison E26 | 13600/10200 MB/s | TBW 1200TB',
        1200.00, 9, 4, 10, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/crucial-t705-2tb',
        'https://www.pichau.com.br/search?q=crucial+t705+2tb',
        'https://www.terabyteshop.com.br/busca?busca=crucial%20t705%202tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Crucial T705 4TB',
        'M.2 2280 | PCIe 5.0 x4 | NVMe 2.0 | Micron 232-layer TLC | Phison E26 | 14100/12600 MB/s | TBW 2400TB',
        2200.00, 10, 4, 10, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/crucial-t705-4tb',
        'https://www.pichau.com.br/search?q=crucial+t705+4tb',
        'https://www.terabyteshop.com.br/busca?busca=crucial%20t705%204tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Kingston Fury Renegade 2TB PCIe 5.0',
        'M.2 2280 | PCIe 5.0 x4 | NVMe 2.0 | Phison E26 | 12400/11800 MB/s | TBW 1400TB | builds AM5/Z890',
        1100.00, 9, 4, 6, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/kingston-fury-renegade-pcie5-2tb',
        'https://www.pichau.com.br/search?q=kingston+fury+renegade+pcie5+2tb',
        'https://www.terabyteshop.com.br/busca?busca=kingston%20fury%20renegade%20pcie5%202tb');

-- ─── SSDs SATA e NVMe Gen 3 (Entry/Budget) ───────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Samsung 870 EVO 1TB',
        '2.5" SATA III | 128-layer V-NAND MLC | DRAM | 560/530 MB/s | TBW 600TB | melhor SATA 2026',
        400.00, 3, 4, 5, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/samsung-870-evo-1tb',
        'https://www.pichau.com.br/search?q=samsung+870+evo+1tb',
        'https://www.terabyteshop.com.br/busca?busca=samsung%20870%20evo%201tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Samsung 870 EVO 2TB',
        '2.5" SATA III | 128-layer V-NAND MLC | DRAM | 560/530 MB/s | TBW 1200TB | storage secundário',
        750.00, 3, 4, 5, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/samsung-870-evo-2tb',
        'https://www.pichau.com.br/search?q=samsung+870+evo+2tb',
        'https://www.terabyteshop.com.br/busca?busca=samsung%20870%20evo%202tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Crucial MX500 1TB',
        '2.5" SATA III | Micron TLC | DRAM | AES-256 hardware | 560/510 MB/s | TBW 360TB',
        320.00, 3, 4, 10, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/crucial-mx500-1tb',
        'https://www.pichau.com.br/search?q=crucial+mx500+1tb',
        'https://www.terabyteshop.com.br/busca?busca=crucial%20mx500%201tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Crucial MX500 2TB',
        '2.5" SATA III | Micron TLC | DRAM | AES-256 | 560/510 MB/s | TBW 700TB | games biblioteca',
        580.00, 3, 4, 10, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/crucial-mx500-2tb',
        'https://www.pichau.com.br/search?q=crucial+mx500+2tb',
        'https://www.terabyteshop.com.br/busca?busca=crucial%20mx500%202tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Kingston A400 960GB',
        '2.5" SATA III | TLC NAND sem DRAM | 500/450 MB/s | TBW 160TB | entry econômico',
        250.00, 2, 4, 6, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/kingston-a400-960gb',
        'https://www.pichau.com.br/search?q=kingston+a400+960gb',
        'https://www.terabyteshop.com.br/busca?busca=kingston%20a400%20960gb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('WD Blue SN580 2TB',
        'M.2 2280 | PCIe 4.0 x4 | NVMe 1.4 | TLC DRAM-less | 4150/4150 MB/s | TBW 900TB | entry NVMe Gen4',
        550.00, 5, 4, 9, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/wd-blue-sn580-2tb',
        'https://www.pichau.com.br/search?q=wd+blue+sn580+2tb',
        'https://www.terabyteshop.com.br/busca?busca=wd%20blue%20sn580%202tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('WD Blue SN550 1TB',
        'M.2 2280 | PCIe 3.0 x4 | NVMe 1.4 | TLC DRAM-less | 2400/1750 MB/s | TBW 600TB | budget NVMe',
        280.00, 4, 4, 9, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/wd-blue-sn550-1tb',
        'https://www.pichau.com.br/search?q=wd+blue+sn550+1tb',
        'https://www.terabyteshop.com.br/busca?busca=wd%20blue%20sn550%201tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Crucial P3 Plus 4TB',
        'M.2 2280 | PCIe 4.0 x4 | NVMe 1.4 | TLC DRAM-less | 5000/4200 MB/s | TBW 800TB | 4TB barato',
        700.00, 6, 4, 10, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/crucial-p3-plus-4tb',
        'https://www.pichau.com.br/search?q=crucial+p3+plus+4tb',
        'https://www.terabyteshop.com.br/busca?busca=crucial%20p3%20plus%204tb');

-- ─── HDDs ─────────────────────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Seagate Barracuda 8TB',
        '3.5" SATA III | 7200 RPM | 256MB cache | 210 MB/s seq | lat ~5ms | desktop storage massivo',
        600.00, 8, 4, 28, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/seagate-barracuda-8tb',
        'https://www.pichau.com.br/search?q=seagate+barracuda+8tb',
        'https://www.terabyteshop.com.br/busca?busca=seagate%20barracuda%208tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Seagate Barracuda 20TB',
        '3.5" SATA III | helium-filled | CMR | 256MB cache | 260 MB/s seq | custo/TB baixo | backup massivo',
        1400.00, 10, 4, 28, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/seagate-barracuda-20tb',
        'https://www.pichau.com.br/search?q=seagate+barracuda+20tb',
        'https://www.terabyteshop.com.br/busca?busca=seagate%20barracuda%2020tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Seagate IronWolf Pro 24TB',
        '3.5" SATA III NAS | 7200 RPM | sensor RV | rated 24/7 | 285 MB/s | workload 550TB/ano | RAID',
        2000.00, 12, 4, 28, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/seagate-ironwolf-pro-24tb',
        'https://www.pichau.com.br/search?q=seagate+ironwolf+pro+24tb',
        'https://www.terabyteshop.com.br/busca?busca=seagate%20ironwolf%20pro%2024tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('WD Black 8TB',
        '3.5" SATA III | 7200 RPM | 256MB cache | WD Performance Optimizer | 250 MB/s | gaming backup',
        700.00, 9, 4, 9, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/wd-black-8tb',
        'https://www.pichau.com.br/search?q=wd+black+8tb',
        'https://www.terabyteshop.com.br/busca?busca=wd%20black%208tb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('WD Red Plus 6TB',
        '3.5" SATA III NAS | 5640 RPM | CMR | NAS 1-8 baias | 180 MB/s seq | RAID 0/1/5/6 doméstico',
        550.00, 7, 4, 9, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/wd-red-plus-6tb',
        'https://www.pichau.com.br/search?q=wd+red+plus+6tb',
        'https://www.terabyteshop.com.br/busca?busca=wd%20red%20plus%206tb');

-- ============================================================
-- PLACAS-MÃE (categoria_id=5)
-- ============================================================

-- ─── ASUS DDR4 LGA1700 / AM4 ─────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASUS ROG Strix Z790-A Gaming WiFi DDR4',
        'ATX | Z790 LGA1700 | VRM 16+1+1 DrMOS 90A | 4x DDR4 até 5333 OC | 4x M.2 (1x PCIe5) | WiFi 6E | 2.5Gb | TB4',
        1800.00, 15, 5, 7, 'LGA1700', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/asus-rog-strix-z790-a-ddr4',
        'https://www.pichau.com.br/search?q=asus+rog+strix+z790+a+ddr4',
        'https://www.terabyteshop.com.br/busca?busca=asus%20rog%20strix%20z790%20a%20ddr4');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASUS TUF Gaming B760-Plus WiFi DDR4',
        'ATX | B760 LGA1700 | VRM 12+1 DrMOS | 4x DDR4 até 4800 OC | 3x M.2 (1x PCIe4) | WiFi 6 | 2.5Gb',
        950.00, 12, 5, 7, 'LGA1700', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/asus-tuf-b760-plus-ddr4',
        'https://www.pichau.com.br/search?q=asus+tuf+b760+plus+ddr4',
        'https://www.terabyteshop.com.br/busca?busca=asus%20tuf%20b760%20plus%20ddr4');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASUS Prime H610M-E D4',
        'mATX | H610 LGA1700 | VRM 8+1 phases | 2x DDR4 até 3200 | 1x M.2 | 1Gb LAN | sem WiFi | entry Intel',
        400.00, 10, 5, 7, 'LGA1700', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/asus-prime-h610m-e-d4',
        'https://www.pichau.com.br/search?q=asus+prime+h610m+e+d4',
        'https://www.terabyteshop.com.br/busca?busca=asus%20prime%20h610m%20e%20d4');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASUS Prime B550M-A',
        'mATX | B550 AM4 | VRM 10+2 phases | 4x DDR4 até 4400 OC | 2x M.2 (1x PCIe4) | 1Gb LAN | Ryzen 5000',
        550.00, 12, 5, 7, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/asus-prime-b550m-a',
        'https://www.pichau.com.br/search?q=asus+prime+b550m+a',
        'https://www.terabyteshop.com.br/busca?busca=asus%20prime%20b550m%20a');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASUS TUF B450-Plus Gaming',
        'ATX | B450 AM4 | VRM 10+2 phases | 4x DDR4 até 4400 OC | 2x M.2 (PCIe3) | 1Gb LAN | legado AM4',
        550.00, 12, 5, 7, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/asus-tuf-b450-plus',
        'https://www.pichau.com.br/search?q=asus+tuf+b450+plus',
        'https://www.terabyteshop.com.br/busca?busca=asus%20tuf%20b450%20plus');

-- ─── ASUS DDR5 LGA1700/LGA1851/AM5 ──────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASUS ROG Maximus Z890 Hero',
        'E-ATX | Z890 LGA1851 | VRM 20+1+2 SPS 110A | 4x DDR5 até 9200 OC | 5x M.2 PCIe5 | WiFi 7 | 10Gb | TB5',
        4500.00, 25, 5, 7, 'LGA1851', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/asus-rog-maximus-z890-hero',
        'https://www.pichau.com.br/search?q=asus+rog+maximus+z890+hero',
        'https://www.terabyteshop.com.br/busca?busca=asus%20rog%20maximus%20z890%20hero');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASUS ROG Strix X870-E Gaming WiFi',
        'ATX | X870E AM5 | VRM 18+2+1 SPS 105A | 4x DDR5 até 8000 OC | 5x M.2 PCIe5 | WiFi 7 | 5Gb | USB4',
        3000.00, 22, 5, 7, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/asus-rog-strix-x870e',
        'https://www.pichau.com.br/search?q=asus+rog+strix+x870e',
        'https://www.terabyteshop.com.br/busca?busca=asus%20rog%20strix%20x870e');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASUS TUF Gaming Z790-Pro WiFi DDR5',
        'ATX | Z790 LGA1700 DDR5 | VRM 16+1+1 DrMOS 80A | 4x DDR5 até 7800 OC | 4x M.2 | WiFi 6E | 2.5Gb',
        1600.00, 18, 5, 7, 'LGA1700', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/asus-tuf-z790-pro-ddr5',
        'https://www.pichau.com.br/search?q=asus+tuf+z790+pro+ddr5',
        'https://www.terabyteshop.com.br/busca?busca=asus%20tuf%20z790%20pro%20ddr5');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASUS Prime B860M-A D5',
        'mATX | B860 LGA1851 | VRM 10+1 phases | 4x DDR5 até 6400 | 2x M.2 | 1Gb LAN | sem WiFi | entry Arrow Lake',
        650.00, 12, 5, 7, 'LGA1851', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/asus-prime-b860m-a-d5',
        'https://www.pichau.com.br/search?q=asus+prime+b860m+a+d5',
        'https://www.terabyteshop.com.br/busca?busca=asus%20prime%20b860m%20a%20d5');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASUS TUF Gaming B650M-Plus WiFi',
        'mATX | B650 AM5 | VRM 12+2 phases | 4x DDR5 até 7200 OC | 3x M.2 | WiFi 6E | 2.5Gb | entry AM5',
        900.00, 14, 5, 7, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/asus-tuf-b650m-plus-wifi',
        'https://www.pichau.com.br/search?q=asus+tuf+b650m+plus+wifi',
        'https://www.terabyteshop.com.br/busca?busca=asus%20tuf%20b650m%20plus%20wifi');

-- ─── Gigabyte DDR4 ───────────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Gigabyte Z790 Gaming X DDR4',
        'ATX | Z790 LGA1700 | VRM 16+1+1 SPS 60A | 4x DDR4 até 5333 OC | 4x M.2 PCIe4 | WiFi 6E | 2.5Gb',
        1500.00, 15, 5, 12, 'LGA1700', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/gigabyte-z790-gaming-x-ddr4',
        'https://www.pichau.com.br/search?q=gigabyte+z790+gaming+x+ddr4',
        'https://www.terabyteshop.com.br/busca?busca=gigabyte%20z790%20gaming%20x%20ddr4');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Gigabyte B550 Aorus Elite AX V2',
        'ATX | B550 AM4 | VRM 12+2 phases | 4x DDR4 até 5100 OC | 2x M.2 PCIe4 | WiFi 6 | 2.5Gb | Ryzen 5000',
        700.00, 12, 5, 12, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/gigabyte-b550-aorus-elite-ax-v2',
        'https://www.pichau.com.br/search?q=gigabyte+b550+aorus+elite+ax+v2',
        'https://www.terabyteshop.com.br/busca?busca=gigabyte%20b550%20aorus%20elite%20ax%20v2');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Gigabyte H610M S2H DDR4',
        'mATX | H610 LGA1700 | VRM 6+1 phases | 2x DDR4 até 3200 | 1x M.2 | 1Gb LAN | sem WiFi | entry econômico',
        380.00, 10, 5, 12, 'LGA1700', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/gigabyte-h610m-s2h-ddr4',
        'https://www.pichau.com.br/search?q=gigabyte+h610m+s2h+ddr4',
        'https://www.terabyteshop.com.br/busca?busca=gigabyte%20h610m%20s2h%20ddr4');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Gigabyte B450M DS3H',
        'mATX | B450 AM4 | VRM 8+2 phases | 4x DDR4 até 4400 OC | 2x M.2 | 1Gb LAN | legado AM4 econômico',
        380.00, 10, 5, 12, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/gigabyte-b450m-ds3h',
        'https://www.pichau.com.br/search?q=gigabyte+b450m+ds3h',
        'https://www.terabyteshop.com.br/busca?busca=gigabyte%20b450m%20ds3h');

-- ─── Gigabyte DDR5 ───────────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Gigabyte Z890 Aorus Master',
        'ATX | Z890 LGA1851 | VRM 20+1+2 SPS 105A | 4x DDR5 até 9000 OC | 5x M.2 PCIe5 | WiFi 7 | 10Gb | TB5',
        4000.00, 22, 5, 12, 'LGA1851', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/gigabyte-z890-aorus-master',
        'https://www.pichau.com.br/search?q=gigabyte+z890+aorus+master',
        'https://www.terabyteshop.com.br/busca?busca=gigabyte%20z890%20aorus%20master');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Gigabyte X870E Aorus Pro Ice',
        'ATX | X870E AM5 | VRM 18+2+1 SPS | 4x DDR5 até 8000 OC | 4x M.2 PCIe5 | WiFi 7 | 5Gb | USB4',
        2800.00, 20, 5, 12, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/gigabyte-x870e-aorus-pro-ice',
        'https://www.pichau.com.br/search?q=gigabyte+x870e+aorus+pro+ice',
        'https://www.terabyteshop.com.br/busca?busca=gigabyte%20x870e%20aorus%20pro%20ice');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Gigabyte B650 Gaming X AX V2',
        'ATX | B650 AM5 | VRM 12+2+1 phases | 4x DDR5 até 7200 OC | 3x M.2 PCIe4 | WiFi 6E | 2.5Gb',
        850.00, 14, 5, 12, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/gigabyte-b650-gaming-x-ax-v2',
        'https://www.pichau.com.br/search?q=gigabyte+b650+gaming+x+ax+v2',
        'https://www.terabyteshop.com.br/busca?busca=gigabyte%20b650%20gaming%20x%20ax%20v2');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Gigabyte B650M Gaming Plus WiFi',
        'mATX | B650 AM5 | VRM 10+2+1 phases | 4x DDR5 até 6400 | 2x M.2 | WiFi 6E | 2.5Gb | entry AM5',
        700.00, 12, 5, 12, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/gigabyte-b650m-gaming-plus-wifi',
        'https://www.pichau.com.br/search?q=gigabyte+b650m+gaming+plus+wifi',
        'https://www.terabyteshop.com.br/busca?busca=gigabyte%20b650m%20gaming%20plus%20wifi');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Gigabyte B860M DS3H',
        'mATX | B860 LGA1851 | VRM 8+1 phases | 4x DDR5 até 5600 | 1x M.2 | 1Gb LAN | sem WiFi | entry Arrow Lake',
        500.00, 10, 5, 12, 'LGA1851', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/gigabyte-b860m-ds3h',
        'https://www.pichau.com.br/search?q=gigabyte+b860m+ds3h',
        'https://www.terabyteshop.com.br/busca?busca=gigabyte%20b860m%20ds3h');

-- ─── MSI DDR4 ────────────────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('MSI MPG Z790 Edge WiFi DDR4',
        'ATX | Z790 LGA1700 | VRM 16+1+1 DrMOS 80A | 4x DDR4 até 5600 OC | 4x M.2 PCIe5 | WiFi 6E | 2.5Gb',
        1700.00, 18, 5, 11, 'LGA1700', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/msi-mpg-z790-edge-ddr4',
        'https://www.pichau.com.br/search?q=msi+mpg+z790+edge+ddr4',
        'https://www.terabyteshop.com.br/busca?busca=msi%20mpg%20z790%20edge%20ddr4');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('MSI MAG B550 Tomahawk Max WiFi',
        'ATX | B550 AM4 | VRM 14+2+1 phases | 4x DDR4 até 5100 OC | 2x M.2 PCIe4 | WiFi 6 | 2.5Gb | top B550',
        750.00, 14, 5, 11, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/msi-mag-b550-tomahawk-max-wifi',
        'https://www.pichau.com.br/search?q=msi+mag+b550+tomahawk+max+wifi',
        'https://www.terabyteshop.com.br/busca?busca=msi%20mag%20b550%20tomahawk%20max%20wifi');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('MSI PRO B760M-A DDR4',
        'mATX | B760 LGA1700 | VRM 10+1 phases | 4x DDR4 até 4800 | 2x M.2 | 1Gb LAN | sem WiFi | entry Intel',
        480.00, 11, 5, 11, 'LGA1700', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/msi-pro-b760m-a-ddr4',
        'https://www.pichau.com.br/search?q=msi+pro+b760m+a+ddr4',
        'https://www.terabyteshop.com.br/busca?busca=msi%20pro%20b760m%20a%20ddr4');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('MSI PRO H610M-G DDR4',
        'mATX | H610 LGA1700 | VRM 7+1 phases | 2x DDR4 até 3200 | 1x M.2 | 1Gb LAN | entry Intel econômico',
        340.00, 10, 5, 11, 'LGA1700', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/msi-pro-h610m-g-ddr4',
        'https://www.pichau.com.br/search?q=msi+pro+h610m+g+ddr4',
        'https://www.terabyteshop.com.br/busca?busca=msi%20pro%20h610m%20g%20ddr4');

-- ─── MSI DDR5 ────────────────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('MSI MEG Z890 Ace',
        'ATX | Z890 LGA1851 | VRM 20+1+2 SPS 115A | 4x DDR5 até 9400 OC | 5x M.2 PCIe5 | WiFi 7 | 10Gb | USB4 x4',
        4200.00, 25, 5, 11, 'LGA1851', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/msi-meg-z890-ace',
        'https://www.pichau.com.br/search?q=msi+meg+z890+ace',
        'https://www.terabyteshop.com.br/busca?busca=msi%20meg%20z890%20ace');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('MSI MPG X870 Carbon WiFi',
        'ATX | X870 AM5 | VRM 18+2+1 SPS 90A | 4x DDR5 até 8000 OC | 4x M.2 PCIe5 | WiFi 7 | 5Gb | USB4',
        2000.00, 20, 5, 11, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/msi-mpg-x870-carbon-wifi',
        'https://www.pichau.com.br/search?q=msi+mpg+x870+carbon+wifi',
        'https://www.terabyteshop.com.br/busca?busca=msi%20mpg%20x870%20carbon%20wifi');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('MSI MAG Z790 Tomahawk WiFi DDR5',
        'ATX | Z790 LGA1700 DDR5 | VRM 16+1+1 80A | 4x DDR5 até 7600 OC | 4x M.2 | WiFi 6E | 2.5Gb',
        1400.00, 16, 5, 11, 'LGA1700', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/msi-mag-z790-tomahawk-ddr5',
        'https://www.pichau.com.br/search?q=msi+mag+z790+tomahawk+ddr5',
        'https://www.terabyteshop.com.br/busca?busca=msi%20mag%20z790%20tomahawk%20ddr5');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('MSI PRO B650M-A WiFi',
        'mATX | B650 AM5 | VRM 10+2 phases | 4x DDR5 até 6400 | 2x M.2 | WiFi 6E | 2.5Gb | entry AM5 MSI',
        650.00, 12, 5, 11, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/msi-pro-b650m-a-wifi',
        'https://www.pichau.com.br/search?q=msi+pro+b650m+a+wifi',
        'https://www.terabyteshop.com.br/busca?busca=msi%20pro%20b650m%20a%20wifi');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('MSI PRO B860M-E DDR5',
        'mATX | B860 LGA1851 | VRM 8+1 phases | 4x DDR5 até 5600 | 2x M.2 | 1Gb LAN | sem WiFi | entry Arrow Lake',
        550.00, 10, 5, 11, 'LGA1851', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/msi-pro-b860m-e-ddr5',
        'https://www.pichau.com.br/search?q=msi+pro+b860m+e+ddr5',
        'https://www.terabyteshop.com.br/busca?busca=msi%20pro%20b860m%20e%20ddr5');

-- ─── ASRock DDR4 ─────────────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASRock Z790 Steel Legend WiFi DDR4',
        'ATX | Z790 LGA1700 | VRM 16+1+1 DrMOS | 4x DDR4 até 5333 OC | 3x M.2 PCIe5 | WiFi 6E | 2.5Gb',
        1600.00, 16, 5, 17, 'LGA1700', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/asrock-z790-steel-legend-ddr4',
        'https://www.pichau.com.br/search?q=asrock+z790+steel+legend+ddr4',
        'https://www.terabyteshop.com.br/busca?busca=asrock%20z790%20steel%20legend%20ddr4');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASRock B550 Phantom Gaming 4',
        'ATX | B550 AM4 | VRM 10+2 phases | 4x DDR4 até 4733 OC | 2x M.2 PCIe4 | 1Gb LAN | Ryzen 5000',
        600.00, 12, 5, 17, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/asrock-b550-phantom-gaming-4',
        'https://www.pichau.com.br/search?q=asrock+b550+phantom+gaming+4',
        'https://www.terabyteshop.com.br/busca?busca=asrock%20b550%20phantom%20gaming%204');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASRock H610M-HDV/M.2 D4',
        'mATX | H610 LGA1700 | VRM 6+1 phases | 2x DDR4 até 3200 | 1x M.2 | 1Gb LAN | sem WiFi | mínimo Intel',
        350.00, 9, 5, 17, 'LGA1700', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/asrock-h610m-hdv-m2-d4',
        'https://www.pichau.com.br/search?q=asrock+h610m+hdv+m2+d4',
        'https://www.terabyteshop.com.br/busca?busca=asrock%20h610m%20hdv%20m2%20d4');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASRock B450M Pro4',
        'mATX | B450 AM4 | VRM 8+2 phases | 4x DDR4 até 4267 OC | 2x M.2 PCIe3 | 1Gb LAN | legado AM4',
        400.00, 10, 5, 17, 'AM4', 'DDR4', NULL,
        'https://www.kabum.com.br/busca/asrock-b450m-pro4',
        'https://www.pichau.com.br/search?q=asrock+b450m+pro4',
        'https://www.terabyteshop.com.br/busca?busca=asrock%20b450m%20pro4');

-- ─── ASRock DDR5 ─────────────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASRock Z890 Taichi',
        'E-ATX | Z890 LGA1851 | VRM 20+1+2 SPS 110A | 4x DDR5 até 9200 OC | 5x M.2 | WiFi 7 | 10Gb | USB4 x3',
        4300.00, 25, 5, 17, 'LGA1851', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/asrock-z890-taichi',
        'https://www.pichau.com.br/search?q=asrock+z890+taichi',
        'https://www.terabyteshop.com.br/busca?busca=asrock%20z890%20taichi');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASRock X870 Steel Legend WiFi',
        'ATX | X870 AM5 | VRM 16+2+1 SPS 90A | 4x DDR5 até 7600 OC | 4x M.2 PCIe5 | WiFi 7 | 2.5Gb | USB4',
        1800.00, 18, 5, 17, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/asrock-x870-steel-legend-wifi',
        'https://www.pichau.com.br/search?q=asrock+x870+steel+legend+wifi',
        'https://www.terabyteshop.com.br/busca?busca=asrock%20x870%20steel%20legend%20wifi');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASRock B650 Pro RS',
        'ATX | B650 AM5 | VRM 14+2+1 phases | 4x DDR5 até 7200 OC | 3x M.2 | 2.5Gb LAN | sem WiFi | mid AM5',
        900.00, 14, 5, 17, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/asrock-b650-pro-rs',
        'https://www.pichau.com.br/search?q=asrock+b650+pro+rs',
        'https://www.terabyteshop.com.br/busca?busca=asrock%20b650%20pro%20rs');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASRock B650M PG Riptide',
        'mATX | B650 AM5 | VRM 12+2 phases | 4x DDR5 até 6400 | 2x M.2 | 2.5Gb LAN | sem WiFi | entry AM5',
        700.00, 12, 5, 17, 'AM5', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/asrock-b650m-pg-riptide',
        'https://www.pichau.com.br/search?q=asrock+b650m+pg+riptide',
        'https://www.terabyteshop.com.br/busca?busca=asrock%20b650m%20pg%20riptide');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ASRock B860M Pro RS',
        'mATX | B860 LGA1851 | VRM 10+1 phases | 4x DDR5 até 6400 | 2x M.2 | 2.5Gb LAN | sem WiFi | entry Arrow',
        600.00, 11, 5, 17, 'LGA1851', 'DDR5', NULL,
        'https://www.kabum.com.br/busca/asrock-b860m-pro-rs',
        'https://www.pichau.com.br/search?q=asrock+b860m+pro+rs',
        'https://www.terabyteshop.com.br/busca?busca=asrock%20b860m%20pro%20rs');

-- ============================================================
-- COOLERS (categoria_id=6)
-- tdp_watts = TDP máximo suportado pelo cooler
-- ============================================================

-- ─── Air Coolers ─────────────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Noctua NH-D15 G2',
        'Dual-tower 160mm | 8 heatpipes | alumínio/níquel | 2x NF-A15 fans | <25 dB(A) @1500RPM | AM4/AM5/LGA1700/1851',
        900.00, 260, 6, 18, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/noctua-nh-d15-g2',
        'https://www.pichau.com.br/search?q=noctua+nh+d15+g2',
        'https://www.terabyteshop.com.br/busca?busca=noctua%20nh%20d15%20g2');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Noctua NH-U12S',
        'Torre única 158mm | 5 heatpipes | NF-F12 fan | silencioso | AM4/AM5/LGA1700/LGA1851',
        380.00, 180, 6, 18, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/noctua-nh-u12s',
        'https://www.pichau.com.br/search?q=noctua+nh+u12s',
        'https://www.terabyteshop.com.br/busca?busca=noctua%20nh%20u12s');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Noctua NH-U12S Redux',
        'Torre única 158mm | 5 heatpipes | acabamento cinza econômico | 1.2°C/W | AM4/AM5/LGA1700',
        450.00, 160, 6, 18, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/noctua-nh-u12s-redux',
        'https://www.pichau.com.br/search?q=noctua+nh+u12s+redux',
        'https://www.terabyteshop.com.br/busca?busca=noctua%20nh%20u12s%20redux');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('be quiet! Dark Rock Pro 5',
        'Dual-tower 162mm | 7 heatpipes | Silent Wings fans | <24.4 dB(A) | AM4/AM5/LGA1700/LGA1851',
        700.00, 250, 6, 19, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/be-quiet-dark-rock-pro-5',
        'https://www.pichau.com.br/search?q=be+quiet+dark+rock+pro+5',
        'https://www.terabyteshop.com.br/busca?busca=be%20quiet%20dark%20rock%20pro%205');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('be quiet! Dark Rock 4',
        'Torre única 162mm | 7 heatpipes | <24.3 dB(A) | AM4/AM5/LGA1700 | single tower premium',
        450.00, 200, 6, 19, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/be-quiet-dark-rock-4',
        'https://www.pichau.com.br/search?q=be+quiet+dark+rock+4',
        'https://www.terabyteshop.com.br/busca?busca=be%20quiet%20dark%20rock%204');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('DeepCool AK620 Digital',
        'Dual-tower 158mm | 6 heatpipes | display OLED frontal temp/RPM | AM4/AM5/LGA1700/LGA1851',
        500.00, 260, 6, 23, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/deepcool-ak620-digital',
        'https://www.pichau.com.br/search?q=deepcool+ak620+digital',
        'https://www.terabyteshop.com.br/busca?busca=deepcool%20ak620%20digital');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('DeepCool AK400',
        'Torre única 155mm | 4 heatpipes | <29 dB(A) @1850RPM | melhor custo-benefício 2026 | AM4/AM5/LGA1700',
        250.00, 220, 6, 23, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/deepcool-ak400',
        'https://www.pichau.com.br/search?q=deepcool+ak400',
        'https://www.terabyteshop.com.br/busca?busca=deepcool%20ak400');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Thermalright Peerless Assassin 120 SE',
        'Dual-tower 157mm | 6 heatpipes | 2x 120mm fans | melhor preço dual-tower | AM4/AM5/LGA1700/LGA1851',
        280.00, 240, 6, 24, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/thermalright-peerless-assassin-120-se',
        'https://www.pichau.com.br/search?q=thermalright+peerless+assassin+120+se',
        'https://www.terabyteshop.com.br/busca?busca=thermalright%20peerless%20assassin%20120%20se');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Scythe Fuma 3',
        'Dual-tower assimétrico 154.5mm | 6 heatpipes | 2x 120mm fans | compatível RAM alto perfil | AM4/AM5',
        380.00, 220, 6, 25, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/scythe-fuma-3',
        'https://www.pichau.com.br/search?q=scythe+fuma+3',
        'https://www.terabyteshop.com.br/busca?busca=scythe%20fuma%203');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Cooler Master Hyper 212 Black Edition',
        'Torre única 159mm | 4 heatpipes | 1x 120mm PWM fan | AM4/AM5/LGA1700 | até 95W apenas',
        180.00, 150, 6, 8, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/hyper-212-black-edition',
        'https://www.pichau.com.br/search?q=hyper+212+black+edition',
        'https://www.terabyteshop.com.br/busca?busca=hyper%20212%20black%20edition');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ID-Cooling SE-226-XT ARGB',
        'Dual-tower 155mm | 6 heatpipes | 2x 120mm ARGB fans | 240W TDP | AM4/AM5/LGA1700 | ARGB econômico',
        230.00, 240, 6, 30, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/id-cooling-se-226-xt-argb',
        'https://www.pichau.com.br/search?q=id+cooling+se+226+xt+argb',
        'https://www.terabyteshop.com.br/busca?busca=id%20cooling%20se%20226%20xt%20argb');

-- ─── AIOs (Refrigeração Líquida) ─────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NZXT Kraken Elite 360',
        '360mm rad | Bomba Asetek 7ª gen | LCD 2.36" display | 3x F120 fans | AM4/AM5/LGA1700/LGA1851',
        1200.00, 350, 6, 21, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/nzxt-kraken-elite-360',
        'https://www.pichau.com.br/search?q=nzxt+kraken+elite+360',
        'https://www.terabyteshop.com.br/busca?busca=nzxt%20kraken%20elite%20360');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NZXT Kraken 240',
        '240mm rad | Bomba Asetek 7ª gen | LCD display | 2x F120 fans 2400RPM | AM4/AM5/LGA1700',
        700.00, 250, 6, 21, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/nzxt-kraken-240',
        'https://www.pichau.com.br/search?q=nzxt+kraken+240',
        'https://www.terabyteshop.com.br/busca?busca=nzxt%20kraken%20240');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Arctic Liquid Freezer III 420',
        '420mm rad | bomba alta pressão | 4x 140mm fans | VRM fan integrado | 0.49°C/W | melhor AIO 2026',
        1100.00, 400, 6, 20, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/arctic-liquid-freezer-iii-420',
        'https://www.pichau.com.br/search?q=arctic+liquid+freezer+iii+420',
        'https://www.terabyteshop.com.br/busca?busca=arctic%20liquid%20freezer%20iii%20420');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Arctic Liquid Freezer III 360',
        '360mm rad | bomba high-pressure | 3x P14 fans | VRM fan integrado | 0.52°C/W | top 360mm perf/preço',
        900.00, 380, 6, 20, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/arctic-liquid-freezer-iii-360',
        'https://www.pichau.com.br/search?q=arctic+liquid+freezer+iii+360',
        'https://www.terabyteshop.com.br/busca?busca=arctic%20liquid%20freezer%20iii%20360');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Arctic Liquid Freezer III 240',
        '240mm rad | bomba Arctic | fan VRM integrada | 0.62°C/W | melhor 240mm custo-benefício | AM4/AM5/LGA1700',
        550.00, 280, 6, 20, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/arctic-liquid-freezer-iii-240',
        'https://www.pichau.com.br/search?q=arctic+liquid+freezer+iii+240',
        'https://www.terabyteshop.com.br/busca?busca=arctic%20liquid%20freezer%20iii%20240');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair iCUE H150i Elite LCD XT 360',
        '360mm rad | bomba Corsair PWM | 3x AF120 fans | LCD 2.1" display | iCUE RGB | AM4/AM5/LGA1700',
        1000.00, 350, 6, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-h150i-elite-lcd-xt',
        'https://www.pichau.com.br/search?q=corsair+h150i+elite+lcd+xt',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20h150i%20elite%20lcd%20xt');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair iCUE H100i Elite 240',
        '240mm rad | 2x LL120 RGB fans | display LED | iCUE | AM4/AM5/LGA1700 | mid gaming build',
        600.00, 250, 6, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-h100i-elite',
        'https://www.pichau.com.br/search?q=corsair+h100i+elite',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20h100i%20elite');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Cooler Master MasterLiquid ML240L RGB V2',
        '240mm rad | bomba dual-chamber | 2x SickleFlow ARGB fans | 250W TDP | AM4/AM5/LGA1700 | budget AIO',
        400.00, 250, 6, 8, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/masterliquid-ml240l-rgb-v2',
        'https://www.pichau.com.br/search?q=masterliquid+ml240l+rgb+v2',
        'https://www.terabyteshop.com.br/busca?busca=masterliquid%20ml240l%20rgb%20v2');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('DeepCool LS520 Zero Dark',
        '240mm rad | 2x FK120 fans | sem RGB | 280W TDP | silencioso | AM4/AM5/LGA1700 | minimalista',
        480.00, 280, 6, 23, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/deepcool-ls520-zero-dark',
        'https://www.pichau.com.br/search?q=deepcool+ls520+zero+dark',
        'https://www.terabyteshop.com.br/busca?busca=deepcool%20ls520%20zero%20dark');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('DeepCool LT720 360',
        '360mm rad | LCD 2.1" display | 3x FK120 fans | 380W TDP | AM4/AM5/LGA1700/LGA1851',
        850.00, 380, 6, 23, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/deepcool-lt720-360',
        'https://www.pichau.com.br/search?q=deepcool+lt720+360',
        'https://www.terabyteshop.com.br/busca?busca=deepcool%20lt720%20360');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Thermaltake TH240 ARGB',
        '240mm rad | 2x ARGB fans | controlador RGB incluso | 250W TDP | AM4/AM5/LGA1700 | budget ARGB',
        380.00, 250, 6, 26, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/thermaltake-th240-argb',
        'https://www.pichau.com.br/search?q=thermaltake+th240+argb',
        'https://www.terabyteshop.com.br/busca?busca=thermaltake%20th240%20argb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('ID-Cooling Frostflow 240X',
        '240mm rad | 2x 120mm fans | silencioso <30 dB(A) | 230W TDP | AM4/AM5/LGA1700 | mais barato confiável',
        320.00, 230, 6, 30, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/id-cooling-frostflow-240x',
        'https://www.pichau.com.br/search?q=id+cooling+frostflow+240x',
        'https://www.terabyteshop.com.br/busca?busca=id%20cooling%20frostflow%20240x');

-- ============================================================
-- FONTES (categoria_id=7)
-- tdp_watts = CAPACIDADE TOTAL DA FONTE em Watts
-- ============================================================

-- ─── Entry: 550W–700W Bronze/Gold ────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair CX650M',
        '650W | 80+ Bronze | Semi-modular | 85% efic @50% | Caps japonesas | 24-pin 2x EPS 4x PCIe 6+2',
        350.00, 650, 7, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-cx650m',
        'https://www.pichau.com.br/search?q=corsair+cx650m',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20cx650m');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair VS650',
        '650W | 80+ White | Não-modular | 82% efic | 24-pin 1x EPS 2x PCIe 6+2 | entry básico',
        280.00, 650, 7, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-vs650',
        'https://www.pichau.com.br/search?q=corsair+vs650',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20vs650');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair CX750M',
        '750W | 80+ Bronze | Semi-modular | para i7/Ryzen 7 + RTX 4070',
        400.00, 750, 7, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-cx750m',
        'https://www.pichau.com.br/search?q=corsair+cx750m',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20cx750m');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Seasonic S12III 650W',
        '650W | 80+ Bronze | Não-modular | Seasonic Tier-A | 24-pin 2x EPS 2x PCIe 6+2 | melhor build quality Bronze',
        380.00, 650, 7, 14, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/seasonic-s12iii-650w',
        'https://www.pichau.com.br/search?q=seasonic+s12iii+650w',
        'https://www.terabyteshop.com.br/busca?busca=seasonic%20s12iii%20650w');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('be quiet! System Power 10 550W',
        '550W | 80+ Bronze | Semi-modular | Pure Wings fan silenciosa | be quiet! padrão de qualidade',
        320.00, 550, 7, 19, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/be-quiet-system-power-10-550w',
        'https://www.pichau.com.br/search?q=be+quiet+system+power+10+550w',
        'https://www.terabyteshop.com.br/busca?busca=be%20quiet%20system%20power%2010%20550w');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('MSI MAG A550BN',
        '550W | 80+ Bronze | Não-modular | entry MSI econômico | Ryzen5/i5 + RX 6600 / RTX 3060',
        260.00, 550, 7, 11, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/msi-mag-a550bn',
        'https://www.pichau.com.br/search?q=msi+mag+a550bn',
        'https://www.terabyteshop.com.br/busca?busca=msi%20mag%20a550bn');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('EVGA 600 W1',
        '600W | 80+ White | Não-modular | entry econômico | para i3/Ryzen 5 + RTX 3060',
        240.00, 600, 7, 29, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/evga-600-w1',
        'https://www.pichau.com.br/search?q=evga+600+w1',
        'https://www.terabyteshop.com.br/busca?busca=evga%20600%20w1');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('EVGA 700 GD',
        '700W | 80+ Gold | Não-modular | 700W Gold econômico | margem para RTX 3070 entry',
        350.00, 700, 7, 29, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/evga-700-gd',
        'https://www.pichau.com.br/search?q=evga+700+gd',
        'https://www.terabyteshop.com.br/busca?busca=evga%20700%20gd');

-- ─── Médias: 750W–850W Gold/Platinum ─────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair RM850x',
        '850W | 80+ Gold | Full-modular | 92% efic @50% | zero RPM até ~600W | 10 anos garantia | top 850W Gold',
        700.00, 850, 7, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-rm850x',
        'https://www.pichau.com.br/search?q=corsair+rm850x',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20rm850x');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair RM750x',
        '750W | 80+ Gold | Full-modular | Cybenetics Gold | zero RPM | para RTX 4070 Ti / RX 7800 XT',
        620.00, 750, 7, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-rm750x',
        'https://www.pichau.com.br/search?q=corsair+rm750x',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20rm750x');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Seasonic Focus GX-850',
        '850W | 80+ Gold | Full-modular | Tier-S Seasonic | 10 anos garantia | benchmark de qualidade 850W',
        680.00, 850, 7, 14, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/seasonic-focus-gx-850',
        'https://www.pichau.com.br/search?q=seasonic+focus+gx+850',
        'https://www.terabyteshop.com.br/busca?busca=seasonic%20focus%20gx%20850');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Seasonic Core GM-650',
        '650W | 80+ Gold | Semi-modular | Seasonic plataforma | entry Gold econômico',
        450.00, 650, 7, 14, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/seasonic-core-gm-650',
        'https://www.pichau.com.br/search?q=seasonic+core+gm+650',
        'https://www.terabyteshop.com.br/busca?busca=seasonic%20core%20gm%20650');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('be quiet! Pure Power 12 650W',
        '650W | 80+ Gold | Semi-modular | Fanless até 20% carga | silencioso be quiet! | entry Gold',
        380.00, 650, 7, 19, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/be-quiet-pure-power-12-650w',
        'https://www.pichau.com.br/search?q=be+quiet+pure+power+12+650w',
        'https://www.terabyteshop.com.br/busca?busca=be%20quiet%20pure%20power%2012%20650w');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('be quiet! Straight Power 12 850W',
        '850W | 80+ Platinum | Full-modular | ATX 3.0 | 12V-2x6 nativo | conector RTX 4080/5080 nativo',
        800.00, 850, 7, 19, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/be-quiet-straight-power-12-850w',
        'https://www.pichau.com.br/search?q=be+quiet+straight+power+12+850w',
        'https://www.terabyteshop.com.br/busca?busca=be%20quiet%20straight%20power%2012%20850w');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('MSI MPG A650GF',
        '650W | 80+ Gold | Full-modular | ATX 2.52 | Ryzen 7/i7 + RTX 4060 Ti / RX 7800 XT',
        420.00, 650, 7, 11, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/msi-mpg-a650gf',
        'https://www.pichau.com.br/search?q=msi+mpg+a650gf',
        'https://www.terabyteshop.com.br/busca?busca=msi%20mpg%20a650gf');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('EVGA SuperNOVA 850 G7',
        '850W | 80+ Gold | Full-modular | 93% efic @50% | qualidade construção premium | 10 anos garantia',
        680.00, 850, 7, 29, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/evga-supernova-850-g7',
        'https://www.pichau.com.br/search?q=evga+supernova+850+g7',
        'https://www.terabyteshop.com.br/busca?busca=evga%20supernova%20850%20g7');

-- ─── High-End: 1000W–1300W Gold/Platinum/Titanium ────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair RM1000x 2024',
        '1000W | 80+ Gold | Full-modular | ATX 3.0 | 1x 12V-2x6 nativo 600W | melhor 1000W Gold 2026',
        900.00, 1000, 7, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-rm1000x-2024',
        'https://www.pichau.com.br/search?q=corsair+rm1000x+2024',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20rm1000x%202024');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair RM850x Shift',
        '850W | 80+ Gold | Full-modular | design Shift (jacks na lateral) | facilita roteamento em cases premium',
        750.00, 850, 7, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-rm850x-shift',
        'https://www.pichau.com.br/search?q=corsair+rm850x+shift',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20rm850x%20shift');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair HX1200i',
        '1200W | 80+ Platinum | Full-modular | 93% efic | monitoramento digital iCUE | telemetria watts/temp',
        1400.00, 1200, 7, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-hx1200i',
        'https://www.pichau.com.br/search?q=corsair+hx1200i',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20hx1200i');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Seasonic Prime TX-1000',
        '1000W | 80+ Titanium | Full-modular | 94% efic | 12 anos garantia | pico de qualidade e eficiência',
        1200.00, 1000, 7, 14, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/seasonic-prime-tx-1000',
        'https://www.pichau.com.br/search?q=seasonic+prime+tx+1000',
        'https://www.terabyteshop.com.br/busca?busca=seasonic%20prime%20tx%201000');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Seasonic Vertex GX-1200',
        '1200W | 80+ Gold | Full-modular | ATX 3.0 | 2x 12V-2x6 | suporta RTX 5090 sem adaptadores',
        1100.00, 1200, 7, 14, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/seasonic-vertex-gx-1200',
        'https://www.pichau.com.br/search?q=seasonic+vertex+gx+1200',
        'https://www.terabyteshop.com.br/busca?busca=seasonic%20vertex%20gx%201200');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('be quiet! Dark Power 13 1000W',
        '1000W | 80+ Titanium | Full-modular | ATX 3.0 | Fanless até 300W | único Titanium 1000W fanless',
        1300.00, 1000, 7, 19, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/be-quiet-dark-power-13-1000w',
        'https://www.pichau.com.br/search?q=be+quiet+dark+power+13+1000w',
        'https://www.terabyteshop.com.br/busca?busca=be%20quiet%20dark%20power%2013%201000w');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('EVGA SuperNOVA 1300 G+',
        '1300W | 80+ Gold | Full-modular | 10 anos garantia | 10x PCIe 6+2 | dual GPU / OC extremo',
        1100.00, 1300, 7, 29, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/evga-supernova-1300-g-plus',
        'https://www.pichau.com.br/search?q=evga+supernova+1300+g+plus',
        'https://www.terabyteshop.com.br/busca?busca=evga%20supernova%201300%20g%20plus');

-- ============================================================
-- GABINETES (categoria_id=8)
-- tdp_watts = 0 (gabinetes não têm TDP)
-- ============================================================

-- ─── Mid-Tower Airflow ────────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Lian Li Lancool 216',
        'Mid-Tower ATX | 418x220x491mm | 2x 160mm fans frontais (78CFM) | mesh total | GPU 400mm | Cooler 167mm',
        600.00, 0, 8, 13, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/lian-li-lancool-216',
        'https://www.pichau.com.br/search?q=lian+li+lancool+216',
        'https://www.terabyteshop.com.br/busca?busca=lian%20li%20lancool%20216');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Lian Li O11D EVO RGB',
        'Mid-Tower E-ATX | vidro 3 lados | dual-chamber | 9x 120mm fan | 420mm rad | GPU 446mm | custom loop',
        900.00, 0, 8, 13, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/lian-li-o11d-evo-rgb',
        'https://www.pichau.com.br/search?q=lian+li+o11d+evo+rgb',
        'https://www.terabyteshop.com.br/busca?busca=lian%20li%20o11d%20evo%20rgb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Lian Li Lancool 205 Mesh',
        'Mid-Tower ATX | mesh frontal full | 2x 120mm fans incl | 360mm rad | GPU 380mm | ATX/mATX',
        420.00, 0, 8, 13, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/lian-li-lancool-205-mesh',
        'https://www.pichau.com.br/search?q=lian+li+lancool+205+mesh',
        'https://www.terabyteshop.com.br/busca?busca=lian%20li%20lancool%20205%20mesh');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Fractal Design Meshify 2 Compact',
        'Mid-Tower ATX compact | 428x210x474mm | mesh | 2x 140mm Aspect fans | 280mm rad | GPU 341mm | top compact',
        700.00, 0, 8, 22, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/fractal-meshify-2-compact',
        'https://www.pichau.com.br/search?q=fractal+meshify+2+compact',
        'https://www.terabyteshop.com.br/busca?busca=fractal%20meshify%202%20compact');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Fractal Design Torrent',
        'Mid-Tower ATX | 2x 180mm frontais | floor-to-ceiling intake | GPU 461mm | máximo airflow passivo',
        900.00, 0, 8, 22, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/fractal-design-torrent',
        'https://www.pichau.com.br/search?q=fractal+design+torrent',
        'https://www.terabyteshop.com.br/busca?busca=fractal%20design%20torrent');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Fractal Design North XL',
        'Mid-Tower E-ATX | madeira real + mesh | 3x 140mm fans incl | 420mm rad | GPU 435mm | living room design',
        800.00, 0, 8, 22, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/fractal-design-north-xl',
        'https://www.pichau.com.br/search?q=fractal+design+north+xl',
        'https://www.terabyteshop.com.br/busca?busca=fractal%20design%20north%20xl');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Fractal Design Pop Air',
        'Mid-Tower ATX | vidro temperado | 3x 120mm fans incl | 360mm rad | GPU 460mm | mid econômico Fractal',
        500.00, 0, 8, 22, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/fractal-design-pop-air',
        'https://www.pichau.com.br/search?q=fractal+design+pop+air',
        'https://www.terabyteshop.com.br/busca?busca=fractal%20design%20pop%20air');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair 5000D Airflow',
        'Mid-Tower ATX | dual-mesh | 5x 120mm fan support | 360mm rad topo+frente | GPU 420mm | flagship airflow',
        700.00, 0, 8, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-5000d-airflow',
        'https://www.pichau.com.br/search?q=corsair+5000d+airflow',
        'https://www.terabyteshop.com.br/busca?busca=corsair%205000d%20airflow');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair 4000X RGB',
        'Mid-Tower ATX | 3x vidro temperado | 3x LL120 RGB iCUE incl | 360mm rad | GPU 360mm | estético Corsair',
        600.00, 0, 8, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-4000x-rgb',
        'https://www.pichau.com.br/search?q=corsair+4000x+rgb',
        'https://www.terabyteshop.com.br/busca?busca=corsair%204000x%20rgb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair 275R Airflow',
        'Mid-Tower ATX | mesh frontal | 2x 120mm incl | 360mm rad | GPU 370mm | budget Corsair airflow',
        350.00, 0, 8, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-275r-airflow',
        'https://www.pichau.com.br/search?q=corsair+275r+airflow',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20275r%20airflow');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair iCUE 465X RGB',
        'Mid-Tower ATX | triple glass 3 lados | 3x LL120 RGB iCUE incl | 360mm rad | GPU 370mm | estético máximo',
        650.00, 0, 8, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-icue-465x-rgb',
        'https://www.pichau.com.br/search?q=corsair+icue+465x+rgb',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20icue%20465x%20rgb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair 2500X',
        'Mid-Tower mATX | vidro duplo | 3x 120mm RGB incl | GPU 360mm | compacto estético Corsair',
        450.00, 0, 8, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-2500x',
        'https://www.pichau.com.br/search?q=corsair+2500x',
        'https://www.terabyteshop.com.br/busca?busca=corsair%202500x');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NZXT H5 Flow',
        'Mid-Tower ATX | mesh frontal | 2x 120mm incl | 280mm rad topo | GPU 365mm | Cooler 165mm | minimalista',
        500.00, 0, 8, 21, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/nzxt-h5-flow',
        'https://www.pichau.com.br/search?q=nzxt+h5+flow',
        'https://www.terabyteshop.com.br/busca?busca=nzxt%20h5%20flow');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NZXT H5 Flow RGB',
        'Mid-Tower ATX | mesh + vidro | 3x F120 RGB incl | 280mm rad | GPU 365mm | H5 Flow com RGB',
        550.00, 0, 8, 21, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/nzxt-h5-flow-rgb',
        'https://www.pichau.com.br/search?q=nzxt+h5+flow+rgb',
        'https://www.terabyteshop.com.br/busca?busca=nzxt%20h5%20flow%20rgb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NZXT H510',
        'Mid-Tower ATX | aço + vidro | sem mesh | 1x 120mm + 1x 140mm incl | 280mm rad | design elegante',
        380.00, 0, 8, 21, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/nzxt-h510',
        'https://www.pichau.com.br/search?q=nzxt+h510',
        'https://www.terabyteshop.com.br/busca?busca=nzxt%20h510');

-- ─── Full-Tower e E-ATX ───────────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Lian Li PC-O11 Dynamic XL ROG',
        'Full-Tower E-ATX | 470x272x513mm | vidro duplo | 3+3 fan layout | 2x 360mm rad | custom loop ideal',
        1200.00, 0, 8, 13, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/lian-li-o11-dynamic-xl-rog',
        'https://www.pichau.com.br/search?q=lian+li+o11+dynamic+xl+rog',
        'https://www.terabyteshop.com.br/busca?busca=lian%20li%20o11%20dynamic%20xl%20rog');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Fractal Design Define 7 XL',
        'Full-Tower E-ATX | 250x468x547mm | isolamento acústico | 2x 140mm Nexus incl | 10x fan | GPU 491mm',
        1100.00, 0, 8, 22, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/fractal-define-7-xl',
        'https://www.pichau.com.br/search?q=fractal+define+7+xl',
        'https://www.terabyteshop.com.br/busca?busca=fractal%20define%207%20xl');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Phanteks Enthoo Pro II',
        'Full-Tower E-ATX | 561mm altura | dual-system support | 9x 140mm fan | 3x 480mm rad | único dual build',
        1300.00, 0, 8, 27, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/phanteks-enthoo-pro-ii',
        'https://www.pichau.com.br/search?q=phanteks+enthoo+pro+ii',
        'https://www.terabyteshop.com.br/busca?busca=phanteks%20enthoo%20pro%20ii');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Cooler Master HAF 700 EVO',
        'Full-Tower E-ATX | 4x 200mm fans frontais | LCD display | GPU 490mm | máximo airflow do mercado',
        1500.00, 0, 8, 8, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/cooler-master-haf-700-evo',
        'https://www.pichau.com.br/search?q=cooler+master+haf+700+evo',
        'https://www.terabyteshop.com.br/busca?busca=cooler%20master%20haf%20700%20evo');

-- ─── Compact, mATX e Mini-ITX ─────────────────────────────────

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Lian Li A4-H2O',
        'Mini-ITX | alumínio | 10.7L | GPU 336mm | AIO 240mm | fonte SFX obrigatória | ultimate SFF',
        600.00, 0, 8, 13, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/lian-li-a4-h2o',
        'https://www.pichau.com.br/search?q=lian+li+a4+h2o',
        'https://www.terabyteshop.com.br/busca?busca=lian%20li%20a4%20h2o');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Lian Li O11 Vision',
        'Mid-Tower mATX/ATX | vidro duplo | 2x USB-C | 3x 120mm ARGB incl | GPU 420mm | visual premium',
        650.00, 0, 8, 13, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/lian-li-o11-vision',
        'https://www.pichau.com.br/search?q=lian+li+o11+vision',
        'https://www.terabyteshop.com.br/busca?busca=lian%20li%20o11%20vision');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Fractal Design Define 7 Compact',
        'Mid-Tower compact ATX | 210x428x452mm | isolamento acústico | 2x 140mm incl | 360mm rad | silencioso',
        600.00, 0, 8, 22, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/fractal-define-7-compact',
        'https://www.pichau.com.br/search?q=fractal+define+7+compact',
        'https://www.terabyteshop.com.br/busca?busca=fractal%20define%207%20compact');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Fractal Design Meshify C Mini',
        'mATX compact | 175x395x412mm | mesh frontal | 2x 120mm incl | 280mm rad topo | GPU 315mm',
        380.00, 0, 8, 22, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/fractal-meshify-c-mini',
        'https://www.pichau.com.br/search?q=fractal+meshify+c+mini',
        'https://www.terabyteshop.com.br/busca?busca=fractal%20meshify%20c%20mini');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Cooler Master MasterBox Q300L',
        'mATX Micro | 387x230x381mm | 1x 120mm incl | GPU 360mm (mod) | mais barato confiável | builds compactas',
        220.00, 0, 8, 8, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/cooler-master-q300l',
        'https://www.pichau.com.br/search?q=cooler+master+q300l',
        'https://www.terabyteshop.com.br/busca?busca=cooler%20master%20q300l');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Cooler Master NR600',
        'Mid-Tower ATX | mesh frontal dupla | 3x 120mm incl | 280mm rad | GPU 410mm | melhor custo airflow',
        350.00, 0, 8, 8, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/cooler-master-nr600',
        'https://www.pichau.com.br/search?q=cooler+master+nr600',
        'https://www.terabyteshop.com.br/busca?busca=cooler%20master%20nr600');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Cooler Master TD500 Mesh',
        'Mid-Tower ATX | mesh 3D frontal | 3x 120mm ARGB incl | 360mm rad | GPU 410mm | ARGB mid econômico',
        450.00, 0, 8, 8, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/cooler-master-td500-mesh',
        'https://www.pichau.com.br/search?q=cooler+master+td500+mesh',
        'https://www.terabyteshop.com.br/busca?busca=cooler%20master%20td500%20mesh');

-- ============================================================
-- FONTES DE ALTA POTÊNCIA (para builds extremas RTX 5090 etc)
-- ============================================================
INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair RM1200x Shift',
        '1200W | 80+ Gold | Full-modular | ATX 3.0 | 2x 12V-2x6 nativos | design Shift lateral | RTX 5090',
        1100.00, 1200, 7, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-rm1200x-shift',
        'https://www.pichau.com.br/search?q=corsair+rm1200x+shift',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20rm1200x%20shift');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Seasonic Prime TX-1300',
        '1300W | 80+ Titanium | Full-modular | 94% eficiencia | 12 anos garantia | workstation extremo',
        1500.00, 1300, 7, 14, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/seasonic-prime-tx-1300',
        'https://www.pichau.com.br/search?q=seasonic+prime+tx+1300',
        'https://www.terabyteshop.com.br/busca?busca=seasonic%20prime%20tx%201300');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('be quiet! Dark Power 13 1600W',
        '1600W | 80+ Titanium | Full-modular | ATX 3.1 | 4x 12V-2x6 | dual GPU / RTX 5090 OC extremo',
        1800.00, 1600, 7, 19, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/be-quiet-dark-power-13-1600w',
        'https://www.pichau.com.br/search?q=be+quiet+dark+power+13+1600w',
        'https://www.terabyteshop.com.br/busca?busca=be%20quiet%20dark%20power%2013%201600w');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Seasonic Vertex GX-1600',
        '1600W | 80+ Gold | Full-modular | ATX 3.0 | 3x 12V-2x6 nativos | maxima potencia confiavel',
        1400.00, 1600, 7, 14, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/seasonic-vertex-gx-1600',
        'https://www.pichau.com.br/search?q=seasonic+vertex+gx+1600',
        'https://www.terabyteshop.com.br/busca?busca=seasonic%20vertex%20gx%201600');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair AX1600i Digital',
        '1600W | 80+ Titanium | Full-modular | monitoramento digital iCUE | 10 anos garantia | top absoluto',
        2200.00, 1600, 7, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-ax1600i',
        'https://www.pichau.com.br/search?q=corsair+ax1600i',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20ax1600i');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('EVGA SuperNOVA 1600 G+ T2',
        '1600W | 80+ Titanium | Full-modular | 10 anos garantia | 16x PCIe 6+2 | dual workstation GPU',
        1700.00, 1600, 7, 29, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/evga-supernova-1600',
        'https://www.pichau.com.br/search?q=evga+supernova+1600',
        'https://www.terabyteshop.com.br/busca?busca=evga%20supernova%201600');

-- ============================================================
-- FONTES DE ALTISSIMA POTENCIA (builds extremas 1322W+)
-- ============================================================
INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair AX1800i Digital',
        '1800W | 80+ Titanium | Full-modular | Controle digital iCUE | ATX 3.1 | 4x 12V-2x6 | dual RTX 5090',
        2800.00, 1800, 7, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-ax1800i',
        'https://www.pichau.com.br/search?q=corsair+ax1800i+1800w',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20ax1800i%201800w');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Seasonic PRIME TX-2000',
        '2000W | 80+ Titanium | Full-modular | 94% eficiencia | 12 anos garantia | workstation dual-GPU extremo',
        3500.00, 2000, 7, 14, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/seasonic-prime-tx-2000',
        'https://www.pichau.com.br/search?q=seasonic+prime+tx+2000',
        'https://www.terabyteshop.com.br/busca?busca=seasonic%20prime%20tx%202000');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('be quiet! Dark Power Pro 13 2000W',
        '2000W | 80+ Titanium | Full-modular | ATX 3.1 | 5x 12V-2x6 | maxima confiabilidade para workstation',
        3200.00, 2000, 7, 19, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/be-quiet-dark-power-pro-13-2000w',
        'https://www.pichau.com.br/search?q=be+quiet+dark+power+pro+13+2000w',
        'https://www.terabyteshop.com.br/busca?busca=be%20quiet%20dark%20power%20pro%2013%202000w');

-- ============================================================
-- CATEGORIA 9: FAN (Ventoinhas/Case Fans)
-- ============================================================
INSERT INTO categoria (nome) VALUES ('Fan');

-- ── Fans — 12 modelos reais (categoria_id = 9) ──────────────

-- Noctua (id=18)
INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Noctua NF-F12 PWM',
        '120mm | 1500 RPM | 22.4 dBA | PWM | 6 anos garantia | referência do mercado',
        189.90, 2, 9, 18, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/noctua-nf-f12',
        'https://www.pichau.com.br/search?q=noctua+nf+f12',
        'https://www.terabyteshop.com.br/busca?busca=noctua%20nf%20f12');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Noctua NF-A12x25 PWM',
        '120mm | 2000 RPM | 22.6 dBA | PWM | melhor airflow 120mm do mercado',
        279.90, 3, 9, 18, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/noctua-nf-a12x25',
        'https://www.pichau.com.br/search?q=noctua+nf+a12x25',
        'https://www.terabyteshop.com.br/busca?busca=noctua%20nf%20a12x25');

-- be quiet! (id=19)
INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('be quiet! Silent Wings 4 120mm',
        '120mm | 1600 RPM | 12.8 dBA | ultra silencioso | ideal para home office',
        129.90, 2, 9, 19, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/be-quiet-silent-wings-4-120',
        'https://www.pichau.com.br/search?q=be+quiet+silent+wings+4+120',
        'https://www.terabyteshop.com.br/busca?busca=be%20quiet%20silent%20wings%204%20120');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('be quiet! Silent Wings 4 140mm',
        '140mm | 1200 RPM | 13.5 dBA | maior volume ar | ainda mais silencioso',
        149.90, 2, 9, 19, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/be-quiet-silent-wings-4-140',
        'https://www.pichau.com.br/search?q=be+quiet+silent+wings+4+140',
        'https://www.terabyteshop.com.br/busca?busca=be%20quiet%20silent%20wings%204%20140');

-- Corsair (id=4)
INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair LL120 RGB',
        '120mm | 1500 RPM | 16 LEDs RGB duplo anel | software iCUE | visual premium',
        179.90, 3, 9, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-ll120-rgb',
        'https://www.pichau.com.br/search?q=corsair+ll120+rgb',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20ll120%20rgb');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Corsair LL140 RGB',
        '140mm | 1300 RPM | 16 LEDs RGB duplo anel | maior fluxo de ar | iCUE',
        199.90, 3, 9, 4, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/corsair-ll140-rgb',
        'https://www.pichau.com.br/search?q=corsair+ll140+rgb',
        'https://www.terabyteshop.com.br/busca?busca=corsair%20ll140%20rgb');

-- NZXT (id=21)
INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('NZXT F120 RGB Core',
        '120mm | 1800 RPM | RGB | software CAM | design minimalista NZXT',
        139.90, 3, 9, 21, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/nzxt-f120-rgb',
        'https://www.pichau.com.br/search?q=nzxt+f120+rgb',
        'https://www.terabyteshop.com.br/busca?busca=nzxt%20f120%20rgb');

-- Arctic (id=20)
INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Arctic P12 PWM PST',
        '120mm | 1800 RPM | 22.5 dBa | daisy chain PWM | melhor custo-beneficio 120mm',
        59.90, 2, 9, 20, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/arctic-p12-pwm',
        'https://www.pichau.com.br/search?q=arctic+p12+pwm',
        'https://www.terabyteshop.com.br/busca?busca=arctic%20p12%20pwm');

INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Arctic P14 PWM PST',
        '140mm | 1700 RPM | 22.5 dBa | daisy chain | excelente custo-beneficio 140mm',
        69.90, 2, 9, 20, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/arctic-p14-pwm',
        'https://www.pichau.com.br/search?q=arctic+p14+pwm',
        'https://www.terabyteshop.com.br/busca?busca=arctic%20p14%20pwm');

-- DeepCool (id=23)
INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('DeepCool FK120',
        '120mm | 1850 RPM | 31.5 dBA | alto desempenho | ideal para builds quentes',
        89.90, 3, 9, 23, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/deepcool-fk120',
        'https://www.pichau.com.br/search?q=deepcool+fk120',
        'https://www.terabyteshop.com.br/busca?busca=deepcool%20fk120');

-- Cooler Master (id=8)
INSERT INTO componente (nome, especificacao, preco, tdp_watts, categoria_id, fabricante_id, socket, ddr_version, imagem_url, link_kabum, link_pichau, link_terabyte)
VALUES ('Cooler Master SickleFlow 120 ARGB',
        '120mm | 1800 RPM | ARGB | bearing sleeve | custo-beneficio com RGB',
        79.90, 3, 9, 8, NULL, NULL, NULL,
        'https://www.kabum.com.br/busca/cooler-master-sickleflow-120-argb',
        'https://www.pichau.com.br/search?q=cooler+master+sickleflow+120+argb',
        'https://www.terabyteshop.com.br/busca?busca=cooler%20master%20sickleflow%20120%20argb');


-- ============================================================
-- Total de INSERTs: ~43 fabricantes, 9 categorias,
-- ~50 CPUs, ~45 GPUs, ~27 RAMs, ~15 SSDs/HDDs, ~40 Placas-Mãe,
-- ~23 Coolers, ~24 Fontes, ~27 Gabinetes, ~12 Fan
-- ============================================================


-- ============================================================
-- IMAGENS COMPLETAS POR FABRICANTE E CATEGORIA
-- Usando simple-icons CDN (confiavel) + fallbacks por categoria
-- ============================================================

-- ── Processadores ──────────────────────────────────────────
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/intel/0068B5'  WHERE fabricante_id = 1  AND categoria_id = 1;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/amd/ED1C24'   WHERE fabricante_id = 2  AND categoria_id = 1;

-- ── Placas de Video ────────────────────────────────────────
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/nvidia/76B900' WHERE fabricante_id = 3  AND categoria_id = 2;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/amd/ED1C24'   WHERE fabricante_id = 2  AND categoria_id = 2;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/nvidia/76B900' WHERE fabricante_id = 31 AND categoria_id = 2;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/amd/ED1C24'   WHERE fabricante_id = 32 AND categoria_id = 2;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/amd/ED1C24'   WHERE fabricante_id = 33 AND categoria_id = 2;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/amd/ED1C24'   WHERE fabricante_id = 34 AND categoria_id = 2;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/nvidia/76B900' WHERE fabricante_id = 35 AND categoria_id = 2;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/nvidia/76B900' WHERE fabricante_id = 36 AND categoria_id = 2;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/msi/FF0000'   WHERE fabricante_id = 11 AND categoria_id = 2;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/asus/00AEEF'  WHERE fabricante_id = 7  AND categoria_id = 2;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/gigabyte/E3242B' WHERE fabricante_id = 12 AND categoria_id = 2;

-- ── Memorias RAM ───────────────────────────────────────────
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/corsair/F5B700' WHERE fabricante_id = 4  AND categoria_id = 3;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/kingston/FF0000' WHERE fabricante_id = 6  AND categoria_id = 3;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/asus/00AEEF'   WHERE fabricante_id = 7  AND categoria_id = 3;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/samsung/1428A0' WHERE fabricante_id = 5  AND categoria_id = 3;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/micron/0073BE'  WHERE fabricante_id = 10 AND categoria_id = 3;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/gskill/E31837'  WHERE fabricante_id = 15 AND categoria_id = 3;

-- ── Armazenamento ──────────────────────────────────────────
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/samsung/1428A0'     WHERE fabricante_id = 5  AND categoria_id = 4;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/westerndigital/F0402B' WHERE fabricante_id = 9  AND categoria_id = 4;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/seagate/6CB33F'    WHERE fabricante_id = 28 AND categoria_id = 4;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/micron/0073BE'     WHERE fabricante_id = 10 AND categoria_id = 4;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/kingston/FF0000'   WHERE fabricante_id = 6  AND categoria_id = 4;

-- ── Placas-Mae ─────────────────────────────────────────────
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/asus/00AEEF'      WHERE fabricante_id = 7  AND categoria_id = 5;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/msi/FF0000'       WHERE fabricante_id = 11 AND categoria_id = 5;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/gigabyte/E3242B'  WHERE fabricante_id = 12 AND categoria_id = 5;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/asrock/009DE0'    WHERE fabricante_id = 17 AND categoria_id = 5;

-- ── Coolers ────────────────────────────────────────────────
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/noctua/A2682E'    WHERE fabricante_id = 18 AND categoria_id = 6;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/bequiet/1A1A1A'   WHERE fabricante_id = 19 AND categoria_id = 6;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/arctic/00B4D8'    WHERE fabricante_id = 20 AND categoria_id = 6;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/nzxt/0066CC'      WHERE fabricante_id = 21 AND categoria_id = 6;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/coolermaster/E2002E' WHERE fabricante_id = 8  AND categoria_id = 6;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/deepcool/0070BB'  WHERE fabricante_id = 23 AND categoria_id = 6;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/corsair/F5B700'   WHERE fabricante_id = 4  AND categoria_id = 6;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/thermaltake/E30000' WHERE fabricante_id = 26 AND categoria_id = 6;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/coolermaster/E2002E' WHERE fabricante_id = 24 AND categoria_id = 6;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/coolermaster/E2002E' WHERE fabricante_id = 25 AND categoria_id = 6;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/deepcool/0070BB'  WHERE fabricante_id = 30 AND categoria_id = 6;

-- ── Fontes ─────────────────────────────────────────────────
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/corsair/F5B700'   WHERE fabricante_id = 4  AND categoria_id = 7;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/seasonic/2980B9'  WHERE fabricante_id = 14 AND categoria_id = 7;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/bequiet/1A1A1A'   WHERE fabricante_id = 19 AND categoria_id = 7;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/msi/FF0000'       WHERE fabricante_id = 11 AND categoria_id = 7;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/evga/E60012'      WHERE fabricante_id = 29 AND categoria_id = 7;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/thermaltake/E30000' WHERE fabricante_id = 26 AND categoria_id = 7;

-- ── Gabinetes ──────────────────────────────────────────────
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/lianli/A0001D'    WHERE fabricante_id = 13 AND categoria_id = 8;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/fractaldesign/1D1D1D' WHERE fabricante_id = 22 AND categoria_id = 8;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/corsair/F5B700'   WHERE fabricante_id = 4  AND categoria_id = 8;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/nzxt/0066CC'      WHERE fabricante_id = 21 AND categoria_id = 8;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/coolermaster/E2002E' WHERE fabricante_id = 8  AND categoria_id = 8;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/phanteks/010101'   WHERE fabricante_id = 27 AND categoria_id = 8;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/thermaltake/E30000' WHERE fabricante_id = 26 AND categoria_id = 8;


-- ── Fans ──────────────────────────────────────────────
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/noctua/A2682E'      WHERE fabricante_id = 18 AND categoria_id = 9;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/bequiet/1A1A1A'     WHERE fabricante_id = 19 AND categoria_id = 9;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/corsair/F5B700'     WHERE fabricante_id = 4  AND categoria_id = 9;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/nzxt/0066CC'        WHERE fabricante_id = 21 AND categoria_id = 9;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/arctic/00B4D8'      WHERE fabricante_id = 20 AND categoria_id = 9;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/deepcool/0070BB'    WHERE fabricante_id = 23 AND categoria_id = 9;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/coolermaster/E2002E' WHERE fabricante_id = 8  AND categoria_id = 9;

-- ── Fallback universal: qualquer componente ainda sem imagem ─
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/intel/0068B5'     WHERE imagem_url IS NULL AND categoria_id = 1;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/nvidia/76B900'    WHERE imagem_url IS NULL AND categoria_id = 2;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/corsair/F5B700'   WHERE imagem_url IS NULL AND categoria_id = 3;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/samsung/1428A0'   WHERE imagem_url IS NULL AND categoria_id = 4;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/asus/00AEEF'      WHERE imagem_url IS NULL AND categoria_id = 5;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/noctua/A2682E'    WHERE imagem_url IS NULL AND categoria_id = 6;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/corsair/F5B700'   WHERE imagem_url IS NULL AND categoria_id = 7;
UPDATE componente SET imagem_url = 'https://cdn.simpleicons.org/nzxt/0066CC'      WHERE imagem_url IS NULL AND categoria_id = 8;

-- ============================================================
-- CORRECAO DE URLS DE BUSCA POR LOJA
-- ============================================================
UPDATE componente SET link_pichau   = REPLACE(link_pichau,   'pichau.com.br/search?q=',         'pichau.com.br/search?q=')        WHERE link_pichau   LIKE '%pichau.com.br/search?q=%';
UPDATE componente SET link_terabyte = REPLACE(link_terabyte, 'terabyteshop.com.br/busca?busca=',    'terabyteshop.com.br/busca?busca=') WHERE link_terabyte LIKE '%terabyteshop.com.br/busca?busca=%';

-- ============================================================
-- IMAGENS FALTANTES (fab 25=Scythe, 31=Palit, 32=Sapphire,
--                    33=PowerColor, 34=XFX, 36=Inno3D)
-- ============================================================
-- Scythe (id=25) — cooler japonês
UPDATE componente SET imagem_url = 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Cooler_Master_logo.svg/200px-Cooler_Master_logo.svg.png' WHERE fabricante_id = 25;
-- Palit (id=31) — GPU NVIDIA parceira
UPDATE componente SET imagem_url = 'https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/nvidia.svg' WHERE fabricante_id = 31 AND categoria_id = 2;
-- Sapphire (id=32) — GPU AMD parceira
UPDATE componente SET imagem_url = 'https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/amd.svg'    WHERE fabricante_id = 32 AND categoria_id = 2;
-- PowerColor (id=33) — GPU AMD parceira
UPDATE componente SET imagem_url = 'https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/amd.svg'    WHERE fabricante_id = 33 AND categoria_id = 2;
-- XFX (id=34) — GPU AMD parceira
UPDATE componente SET imagem_url = 'https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/amd.svg'    WHERE fabricante_id = 34 AND categoria_id = 2;
-- Inno3D (id=36) — GPU NVIDIA parceira
UPDATE componente SET imagem_url = 'https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/nvidia.svg' WHERE fabricante_id = 36 AND categoria_id = 2;

-- Cobrir todas as categorias sem imagem com fallback genérico por categoria
UPDATE componente SET imagem_url = 'https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/intel.svg'   WHERE imagem_url IS NULL AND categoria_id = 1;
UPDATE componente SET imagem_url = 'https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/nvidia.svg'  WHERE imagem_url IS NULL AND categoria_id = 2;
UPDATE componente SET imagem_url = 'https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/corsair.svg' WHERE imagem_url IS NULL AND categoria_id = 3;
UPDATE componente SET imagem_url = 'https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/samsung.svg' WHERE imagem_url IS NULL AND categoria_id = 4;
UPDATE componente SET imagem_url = 'https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/asus.svg'    WHERE imagem_url IS NULL AND categoria_id = 5;
UPDATE componente SET imagem_url = 'https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/corsair.svg' WHERE imagem_url IS NULL AND categoria_id = 6;
UPDATE componente SET imagem_url = 'https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/corsair.svg' WHERE imagem_url IS NULL AND categoria_id = 7;
UPDATE componente SET imagem_url = 'https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/corsair.svg' WHERE imagem_url IS NULL AND categoria_id = 8;

-- ============================================================
-- FIM DO ARQUIVO
-- ============================================================