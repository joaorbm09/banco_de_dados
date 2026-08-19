CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(30),
    sobre_nome VARCHAR(50),
    telefone VARCHAR(13),
    cpf VARCHAR(11)
    
);

CREATE TABLE vendas(
    id SERIAL PRIMARY KEY,
    data DATE,
    id_cliente INT
);

INSERT INTO clientes(
    nome,
    sobre_nome,
    telefone,
    cpf)

    VALUES(
        'Joao Wictor',
        'Ribeiro',
        '984125082',
        '41985372825'    
);

SELECT * FROM clientes;