-- Inserir Usuários
INSERT INTO usr_usuario (usr_cpf, usr_nome, usr_email, usr_telefone)
VALUES ('22233344455', 'Orlando', 'orlando@meu.email', '12999887755');

INSERT INTO usr_usuario (usr_cpf, usr_nome, usr_email, usr_telefone)
VALUES ('33344455566', 'Gilmar', 'gilmar@meu.email', '12988775544');

-- Inserir Endereços
INSERT INTO end_endereco (end_estado, end_cidade, end_bairro, end_logradouro, end_numero, end_complemento, end_usr_id)
VALUES ('SP', 'Sao Jose dos Campos', 'Cidade Morumbi', 'Rua Sete', 70, 'Bloco 2, Apartamento 707', 1);

INSERT INTO end_endereco (end_estado, end_cidade, end_bairro, end_logradouro, end_numero, end_complemento, end_usr_id)
VALUES ('SP', 'Sao Jose dos Campos', 'Parque Industrial', 'Praça Natal', 60, 'Bloco 1, Apartamento 770', 2);

-- Inserir Entidades Financeiras
INSERT INTO fin_financeira (fin_cnpj, fin_nome, fin_razao_social, fin_email, fin_telefone)
VALUES ('22233344455000', 'OrlandoInveste', 'Financeira Leal do Brasil SA', 'orlando@investe.email', '12999887755');

INSERT INTO fin_financeira (fin_cnpj, fin_nome, fin_razao_social, fin_email, fin_telefone)
VALUES ('33344455566000', 'GilmarInvest', 'Financeira Nº1 do Brasil SA', 'gilmar@invest.email', '12988775544');

-- Inserir Leilões
INSERT INTO lei_leilao (lei_data_hora, lei_data_visitacao, lei_descricao, lei_status, lei_fin_id)
VALUES ('2023-12-29T09:27:39', '2023-11-27', 'Este leilão é um teste', 'EM_ABERTO', 2);

INSERT INTO lei_leilao (lei_data_hora, lei_data_visitacao, lei_descricao, lei_status, lei_fin_id)
VALUES ('2024-01-25T09:00:00', '2023-12-01', 'Este leilão é um teste também', 'EM_ABERTO', 2);

-- Inserir Lotes
INSERT INTO lot_lote (lot_lance, lot_valor_inicial, lot_lei_id)
VALUES (1500.00, 1300.00, 1);

INSERT INTO lot_lote (lot_lance, lot_valor_inicial, lot_lei_id)
VALUES (9000.00, 7500.00, 1);

-- Inserir Itens
INSERT INTO itm_item (tipo_item, itm_nome, itm_valor_inicial, itm_lei_id)
VALUES ('NOTEBOOK', 'Notebook', 1300.00, 1);

INSERT INTO itm_item (tipo_item, itm_nome, vei_marca, vei_modelo, itm_valor_inicial, itm_lei_id)
VALUES ('CARRO', 'Corsa', 'GM', '96/97', 9000.00, 1);

-- Inserir Lance para o Corsa
INSERT INTO lan_lance (lan_valor, lan_data_hora, lan_itm_id, lan_usr_id)
VALUES (9500.00, '2024-02-15T14:30:00', 2, 2);

