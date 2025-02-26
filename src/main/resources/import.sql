-- Inserindo categorias
INSERT INTO tb_category(name) VALUES ('Maquiagem');
INSERT INTO tb_category(name) VALUES ('Cuidados com a Pele');
INSERT INTO tb_category(name) VALUES ('Perfumaria');

-- Inserindo produtos
INSERT INTO tb_product (name, price, description, img_url) VALUES ('Batom Vermelho', 29.90, 'Batom de longa duração com acabamento mate e pigmentação intensa.', 'https://exemplo.com/imagens/batom-vermelho.jpg');
INSERT INTO tb_product (name, price, description, img_url) VALUES ('Base Líquida', 59.90, 'Base líquida de cobertura média a alta, ideal para pele mista a oleosa.', 'https://exemplo.com/imagens/base-liquida.jpg');
INSERT INTO tb_product (name, price, description, img_url) VALUES ('Paleta de Sombras', 89.90, 'Paleta com 12 cores vibrantes e altamente pigmentadas.', 'https://exemplo.com/imagens/paleta-sombras.jpg');
INSERT INTO tb_product (name, price, description, img_url) VALUES ('Hidratante Facial', 79.90, 'Hidratante facial com ácido hialurônico para pele seca.', 'https://exemplo.com/imagens/hidratante-facial.jpg');
INSERT INTO tb_product (name, price, description, img_url) VALUES ('Protetor Solar FPS 50', 99.90, 'Protetor solar facial com FPS 50 e toque seco.', 'https://exemplo.com/imagens/protetor-solar.jpg');
INSERT INTO tb_product (name, price, description, img_url) VALUES ('Perfume Florais', 199.90, 'Perfume floral com notas de jasmim e baunilha.', 'https://exemplo.com/imagens/perfume-floral.jpg');
INSERT INTO tb_product (name, price, description, img_url) VALUES ('Máscara de Cílios', 39.90, 'Máscara de cílios com efeito alongador e volumoso.', 'https://exemplo.com/imagens/mascara-cilios.jpg');
INSERT INTO tb_product (name, price, description, img_url) VALUES ('Delineador Líquido', 49.90, 'Delineador líquido de alta precisão e longa duração.', 'https://exemplo.com/imagens/delineador-liquido.jpg');
INSERT INTO tb_product (name, price, description, img_url) VALUES ('Esfoliante Corporal', 69.90, 'Esfoliante corporal com partículas de caroço de damasco.', 'https://exemplo.com/imagens/esfoliante-corporal.jpg');
INSERT INTO tb_product (name, price, description, img_url) VALUES ('Creme para Mãos', 49.90, 'Creme para mãos com extrato de aloe vera e vitamina E.', 'https://exemplo.com/imagens/creme-maos.jpg');

-- Associando produtos às categorias
INSERT INTO tb_product_category (product_id, category_id) VALUES (1, 1); -- Batom Vermelho -> Maquiagem
INSERT INTO tb_product_category (product_id, category_id) VALUES (2, 1); -- Base Líquida -> Maquiagem
INSERT INTO tb_product_category (product_id, category_id) VALUES (3, 1); -- Paleta de Sombras -> Maquiagem
INSERT INTO tb_product_category (product_id, category_id) VALUES (4, 2); -- Hidratante Facial -> Cuidados com a Pele
INSERT INTO tb_product_category (product_id, category_id) VALUES (5, 2); -- Protetor Solar -> Cuidados com a Pele
INSERT INTO tb_product_category (product_id, category_id) VALUES (6, 3); -- Perfume Florais -> Perfumaria
INSERT INTO tb_product_category (product_id, category_id) VALUES (7, 1); -- Máscara de Cílios -> Maquiagem
INSERT INTO tb_product_category (product_id, category_id) VALUES (8, 1); -- Delineador Líquido -> Maquiagem
INSERT INTO tb_product_category (product_id, category_id) VALUES (9, 2); -- Esfoliante Corporal -> Cuidados com a Pele
INSERT INTO tb_product_category (product_id, category_id) VALUES (10, 2); -- Creme para Mãos -> Cuidados com a Pele

-- Inserindo usuários
INSERT INTO tb_user (name, email, phone, password, birth_date) VALUES ('Ana Silva', 'ana@gmail.com', '988888888', '123456', '1990-05-15');
INSERT INTO tb_user (name, email, phone, password, birth_date) VALUES ('Carlos Souza', 'carlos@gmail.com', '977777777', '123456', '1985-10-20');

-- Inserindo pedidos
INSERT INTO tb_order (created_at, status, client_id) VALUES (TIMESTAMP WITH TIME ZONE '2023-10-01T10:00:00Z', 1, 1);
INSERT INTO tb_order (created_at, status, client_id) VALUES (TIMESTAMP WITH TIME ZONE '2023-10-02T14:30:00Z', 2, 2);

-- Inserindo itens dos pedidos
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (1, 1, 2, 29.90); -- 2 Batons Vermelhos
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (1, 4, 1, 79.90); -- 1 Hidratante Facial
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (2, 6, 1, 199.90); -- 1 Perfume Florais

-- Inserindo pagamentos
INSERT INTO tb_payment (order_id, created_at) VALUES (1, TIMESTAMP WITH TIME ZONE '2023-10-01T10:30:00Z');
INSERT INTO tb_payment (order_id, created_at) VALUES (2, TIMESTAMP WITH TIME ZONE '2023-10-02T15:00:00Z');