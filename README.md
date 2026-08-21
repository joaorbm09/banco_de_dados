# 🗄️ Banco de Dados (PostgreSQL & Modelagem Relacional)

![Status](https://img.shields.io/badge/Status-Em%20Andamento%20--%20Semestre%20Letivo-blue?style=for-the-badge&logo=postgresql)
![Tecnologia](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![Modelagem](https://img.shields.io/badge/Mermaid.js-FF69B4?style=for-the-badge&logo=mermaid&logoColor=white)

---

## 📌 1. Visão Geral do Repositório

Este repositório registra minha evolução acadêmica e prática na disciplina de **Banco de Dados Relacionais**. O foco do curso abrange desde os conceitos fundamentais de Modelagem Entidade-Relacionamento (MER/DER) e administração de bancos de dados via CLI até a escrita de scripts DDL/DML em PostgreSQL e diagramação de esquemas utilizando sintaxe Mermaid.js.

---

## 🚀 2. O Que Foi Desenvolvido Até Agora (Progresso Atual)

Até o presente momento, o repositório conta com anotações teóricas, guias técnicos de referência rápida, modelos relacionais e scripts SQL de criação de tabelas.

### 📚 Tópicos e Práticas Concluídas:

1. **Administração & CLI do PostgreSQL (`anotacoesBD.md`):**
   - Acesso ao PostgreSQL via CLI (`psql`) com usuário do sistema (PAM) e usuário do banco (`-U postgres -h localhost`).
   - Comandos de gerenciamento de bancos de dados (`CREATE DATABASE`, `ALTER DATABASE OWNER TO`, `DROP DATABASE`, `\l`).
   - Gerenciamento de usuários e privilégios (`CREATE USER`, `ALTER USER`, `DROP USER`).

2. **Linguagem SQL - DDL & DML (`anotacoesBD.md` & `meu_sql.pgsql`):**
   - Criação de tabelas (`CREATE TABLE`) com chaves primárias autoincrementáveis (`SERIAL PRIMARY KEY`).
   - Definição de chaves estrangeiras (`FOREIGN KEY`) para integridade referencial.
   - Inserção de dados (`INSERT INTO ... VALUES`) e consultas básicas (`SELECT * FROM`).

3. **Guia Completo de Tipos de Dados em PostgreSQL (`tiposdedados.md`):**
   - **Numéricos:** `smallint`, `integer`, `bigint`, `decimal`/`numeric` (ideal para finanças), `real`, `double precision`.
   - **Caractere:** `char(n)`, `varchar(n)`, `text`.
   - **Binários & Temporal:** `bytea`, `date`, `time`, `timestamp`, `timestamptz` (com fuso horário) e `interval`.
   - **Booleanos & Enums:** `boolean` e tipos enumerados customizados (`CREATE TYPE mood AS ENUM (...)`).

4. **Modelagem Entidade-Relacionamento - MER/DER (`diagrama.md` & `tbl_clientes_compras.md`):**
   - Conceito e aplicação de cardinalidades **1:1**, **1:N** e **N:N** (com tabela associativa).
   - Metodologia de mapeamento por perguntas de cardinalidade (Tabela Primária $\rightarrow$ Tabela Secundária $\rightarrow$ Frequência).
   - Representação gráfica de diagramas ER via **Mermaid.js** englobando entidades como `clientes`, `vendas`, `compras`, `pagamento`, `endereco` e `telefone`.

### 🛠️ Tecnologias e Ferramentas Utilizadas:
- **PostgreSQL 14+ / psql CLI**
- **SQL (Data Definition Language & Data Manipulation Language)**
- **Mermaid.js (Diagramas Entidade-Relacionamento)**
- **Markdown (Documentação Técnica)**

---

## 🗓️ 3. Mapeamento do Semestre (Cronograma & Evolução)

Confira abaixo a estrutura de tópicos da disciplina, mapeada por módulos acadêmicos:

- [x] **Módulo 1:** Introdução aos Bancos de Dados Relacionais e Operações CLI no PostgreSQL
- [x] **Módulo 2:** Administração de BD e Gerenciamento de Usuários/Permissões
- [x] **Módulo 3:** Definição de Estruturas com DDL (`CREATE TABLE`, Data Types, PK/FK)
- [x] **Módulo 4:** Manipulação de Dados com DML (`INSERT`, `SELECT`, `UPDATE`, `DELETE`)
- [x] **Módulo 5:** Modelagem Conceitual e Lógica (Relacionamentos 1:1, 1:N e N:N)
- [x] **Módulo 6:** Diagramação ER (Entity-Relationship Diagrams) com Mermaid.js
- [ ] **Módulo 7:** Consultas Avançadas (`JOIN`, `INNER JOIN`, `LEFT/RIGHT JOIN`)
- [ ] **Módulo 8:** Agrupamento e Filtragem de Dados (`GROUP BY`, `HAVING`, `COUNT`, `SUM`, `AVG`)
- [ ] **Módulo 9:** Subqueries e Visões (`VIEWS`)
- [ ] **Módulo 10:** Integridade de Dados, Restrições (`CONSTRAINTS`) e Índices (`INDEX`)
- [ ] **Módulo 11:** Normalização de Dados (1FN, 2FN e 3FN)
- [ ] **Módulo 12:** Stored Procedures, Functions e Triggers no PostgreSQL

---

## 💻 4. Como Executar e Testar

### Pré-requisitos:
- PostgreSQL instalado localmente (ou via Docker).
- Cliente de banco de dados (ex: `psql`, DBeaver, PGAdmin) ou extensão Mermaid no VS Code.

### Passo a Passo:

1. **Acessar o terminal PostgreSQL:**
   ```bash
   psql -U postgres -h localhost
   ```

2. **Criar o Banco de Dados de Teste:**
   ```sql
   CREATE DATABASE banco_estudos;
   \c banco_estudos
   ```

3. **Executar o script SQL do repositório (`meu_sql.pgsql`):**
   ```sql
   CREATE TABLE clientes (
       id SERIAL PRIMARY KEY,
       nome VARCHAR(30),
       sobre_nome VARCHAR(50),
       telefone VARCHAR(13),
       cpf VARCHAR(11)
   );

   CREATE TABLE vendas (
       id SERIAL PRIMARY KEY,
       data DATE,
       id_cliente INT REFERENCES clientes(id)
   );
   ```

4. **Visualizar os Diagramas Mermaid:**
   - Abra arquivos como [`diagrama.md`](./diagrama.md) ou [`tbl_clientes_compras.md`](./tbl_clientes_compras.md) em um editor Markdown com suporte a Mermaid (ex: GitHub ou VS Code com extensão Markdown Preview Mermaid Support).

---

## 📝 5. Próximos Passos & Anotações

- [ ] Aprofundar estudos sobre junções (`JOINs`) complexas para relatórios de vendas.
- [ ] Criar scripts com constraints adicionais (`UNIQUE`, `NOT NULL`, `CHECK`).
- [ ] Implementar índices para otimização de busca nas tabelas de clientes e compras.

### 🔗 Links Úteis:
- [Documentação Oficial do PostgreSQL](https://www.postgresql.org/docs/)
- [Mermaid Live Editor](https://mermaid.live/)

---
*Repositório mantido por [João Wictor](https://github.com/joaorbm09) para fins acadêmicos.*
