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