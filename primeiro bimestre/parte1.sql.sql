create database trabalho_pt1;
use trabalho_pt1;

CREATE TABLE clientes (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    celular VARCHAR(20) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE produtos (
    produto_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(6, 2) NOT NULL,
    descricao TEXT,
    q_estoque INT NOT NULL
);

CREATE TABLE pedidos (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    d_compra DATE NOT NULL,
    d_e_entrega DATE NOT NULL,
    v_total DECIMAL(6, 2) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
);

CREATE TABLE itens_pedido (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    pedido_id int,
    quantidade INT NOT NULL,
    v_unitario DECIMAL(6, 2) NOT NULL,
    v_total DECIMAL(6, 2) NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(pedido_id),
    FOREIGN KEY (produto_id) REFERENCES Produtos(produto_id)
);