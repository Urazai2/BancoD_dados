INSERT INTO clientes (nome, endereco, email, celular, data_nascimento) VALUES
('Guilherme Laube', 'Rua E, 123', 'guilherme@gmail.com', '54321-12345', '1900-01-25'),
('Victor Santos', 'Av. B, 456', 'victor@gmail.com', '8888-8888', '1985-08-25'),
('Joao Imlau', 'Rua C, 789', 'joaoimlau@gmail.com', '98765-56789', '1978-12-10'),
('Mike Wz', 'Av. D, 998', 'mike@gmail.com', '6666-6666', '1995-03-20'),
('Julio Cesar', 'Rua E, 002', 'julioce@gmail.com', '4444-5555', '1982-07-03'),
('Ednaldo Pereira', 'Av. F, 777', 'professormyckfavorito@gmail.com', '9283-1029', '1998-10-30'),
('Lucas Costa', 'Rua V, 321', 'lucas@gmail.com', '3333-3333', '1989-02-18'),
('Fernanda Oliveira', 'Av. H, 748', 'fernanda@gmail.com', '2222-2222', '1993-09-12'),
('Paulo Mendes', 'Rua L, 987', 'paulo@gmail.com', '1111-1111', '1975-06-28'),
('Miguel Nery', 'Rua. Z, 019', 'nery@gmail.com', '0000-0000', '1987-11-05');

INSERT INTO produtos (nome, preco, descricao, q_estoque) VALUES
('Whey-Protein', 99.99, 'Whey-Protein', 200),
('Relógio', 79.99, 'Relogio', 20),
('Nike Air-force', 899.99, 'Nike Air-force', 300),
('Monitor Asus 360Hz', 7299.99, 'Monitor Asus 360hz', 5),
('Mochila Escolar', 39.99, 'Mochila escolar preta', 500),
('Óculos de Sol', 12.99, 'Óculos de sol estilo aviador', 130),
('Moletom', 79.99, 'Moletom Preto G', 40),
('Boné', 89.99, 'Boné preto Nike ajustável', 35),
('Correntinha de Prata', 49.99, 'Correntinha de prata ', 12),
('Malbec', 169.99, 'Malbec', 8);


INSERT INTO Pedidos (cliente_id, data_compra, v_total, d_e_entrega) VALUES
(1, '2024-03-29', 59.98, '2024-05-01'),
(2, '2024-03-10', 179.97, '2024-05-02'),
(3, '2024-03-10', 69.99, '2024-05-03'),
(4, '2024-03-11', 119.98, '2024-05-04'),
(5, '2024-03-27', 99.01, '2024-05-05');

INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, v_unitario, v_total) VALUES
(1, 1, 2, 29.99, 59.98),
(2, 2, 2, 79.99, 159.98),
(2, 3, 1, 99.99, 99.99),
(3, 4, 2, 59.99, 119.98),
(4, 5, 1, 39.99, 39.99),
(4, 6, 1, 59.99, 59.99),
(5, 7, 1, 69.99, 69.99),
(5, 8, 1, 19.99, 19.99);
DELETE FROM clientes WHERE cliente_id = 10;