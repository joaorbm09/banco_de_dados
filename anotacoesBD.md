# O basico de BD
## Comandos que eu não vou esquecer:

## 1. Acessar o postgres por CLI:

- Usando o usuario do linux (PAM):
``` bash
sudo -u postgres psql -h localhost 
```
- utilizando usuario do postgres:
```bash
psql -U *usuario* -h localhost -d *banco_app* 
```
---
## 2. Gerenciando banco de dados:
 - criando banco de dados
```sql
CREATE DATABASE nome_do_banco;
```
 - alterar proprietario do banco:
```sql
ALTER DATABASE nome_do_banco OWNER TO nome_user;
```

 - apagar banco de dado:
```sql
DROP DATABASE nome_do_banco;
```
 - Lista todos so bancos:

``` bash
\l
``` 

---

## 3. Gerenciando usuarios no banco de dados:

 - criando um usuario  e senhe para o usuario no postgres:
```sql
 CREATE USAR nome_user WITH PASSWORD 'senha';
``` 

 - trocando de senha no postgres
``` sql
ALTER USER nome_user WITH PASSWORD  'senha1';
```
 - trocando o nome de usuario:
``` sql
ALTER USER nome_user WITH NAME = novo_nome;
```
 - Apagar usuario:
``` sql
DROP USER nome_user;
```

## 4. GERENCIANDO tabelas:

```sql
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(30),
    sobre_nome VARCHAR(50),
    telefone INT,
    cpf VARCHAR(11)
    
);
```
- inserindo registro:
``` sql
CREATE TABLE vendas(
    id SERIAL PRIMARY KEY,
    data DATE,
    id_cliente INT
);

```



# Guia de Relacionamentos em Banco de Dados

## Relacionamentos

### 1 para 1 (1:1)
Ocorre quando um registro em uma tabela está relacionado a exatamente um registro em outra tabela. É comum para evitar duplicação de dados ou separar informações de acesso, como em uma tabela de **Alunos** e uma de **Alunos da Banda**.

### 1 para muitos (1:N)
É o tipo mais comum, onde um registro em uma tabela pode estar relacionado a vários registros em outra. Isso é estabelecido através de uma chave estrangeira na tabela do "muitos" que referencia a chave primária da tabela do "um", como em **Clientes** e **Pedidos**.

### Muitos para muitos (N:N)
Ocorre quando vários registros de uma tabela se relacionam com vários de outra. Como bancos relacionais não suportam isso diretamente, ele é implementado por meio de uma tabela associativa (ou intermediária) que cria dois relacionamentos 1:N, como em **Pedidos** e **Produtos**.

---

## Perguntas para Relacionar Entidades de Banco de Dados

> **Dica:** Ao analisar o relacionamento entre tabelas, siga o fluxo de perguntas abaixo:

1. **Identificar a tabela primária:** Focar na tabela primária (ex: `Cliente`)
2. **Identificar a tabela secundária:** Quem é a tabela secundária?
3. **Mapear a cardinalidade:** Quantas vezes a tabela secundária terá dados da tabela primária?

