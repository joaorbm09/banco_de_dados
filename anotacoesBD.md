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
- adiconando colunas em uma tabela
 > - assim desta forma podemos acrescentar uma coluna a uma tabela ja criada, ou seja, se caso a gente criar uma tabela faltando alguma informação(no caso uma coluna), podemos arescentatr.
```sql
ALTER TABLE alunos 
    ADD COLUMNS "nome_coluna" & "tipo_da_coluna";
    ADD COLUMNS "nome_coluna" & "tipo_da_coluna";
```
---

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


## 4 Modelagem de dados

 - Armazenar informação/Dados relevantes á aplicação
 
 - Representar o mundo real em "tabelas" relacionados
 
 - Utilizar para análises (consiltas/Query)
 
 - Modelo conceitual (Entidades e atributos)
    - Relacionamento
 - Modelo lógico => Detalhes do modelo conceitual(Relacionamentos/tipos de dados)

 - Modelo Físico (SGBD-SQL)  

### Entidades:

    Pessoa => atributos: Nome, CPF;

    Cliente => Pessoa, Empresa;

    Loja;

    Empresa;

---

**MER** - Modelo Entidade Relacionamento
 -
 - É um modelo que descreve os objtos envolvidos(entidade) em um negocio, com suas caracteristicas(atributos) e como elas se relacionam entre si(relacionamentos)


**DER** - Diagrama Entidade Relacionamento 
 -
 - Também conhecido como diagrama ER, é uma representação visual que ilustra como as entidades (pessoas, objetos ou conceitos) interagem e se relacionam dentro de um sistema de banco de dados. 

---

# Revisao previa de login com linux e pelo postgres no banco de dados

## CRUD com POSTGRESQL

 > - Create (insert) Inserir dados
 > - Read (Select) Ler dados 
 > - Update (Update) Altualizar dados
 > - Delete (Delete) Apagar dados


## login postegresql
 1. usando o usuário linux:
 ```bash
 sudo -u postgres psql
 ```
**nunca** utilizar o postres para gerenciamento de bancos e tabelas. (Não utilizar na aplicação).
 2. usando usuario postgres:
 ```sql
 psql -U escola -h localhost -d escola
 ```

## Gerenciamento de databases
 1. Criando um database
 ```sql
 CREATE DATABASE escola;
 ```
 2. Alterando database:
 ```sql
 ALTER DATABASE escola OWNER TO escola;
 ```
 3. Apagando um database:
 ```sql
 DROP DATABASE nome_banco;
 ```

## GErenciamento de usuario:
 1. Criando usuário:
 ```sql
 CREATE USER escola WITH PASSWORD 'escola';
 ```
 2. Alterando usário :
 ```sql
 ALTER USER escola WITH PASSWORD 'senha2';
 ```

---

## Diagrama da tabela:

```mermaid
erDiagram
alunos {
    serial ID PK
    varshar(60) nome
    varshar(12) turma
    date nascimento
    bool ativo
}
```

---

