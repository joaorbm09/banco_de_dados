# PostgreSQL: Guia Rápido de Tipos de Dados

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![Status](https://img.shields.io/badge/Status-Concluído-brightgreen?style=for-the-badge)

Um guia direto e prático sobre os tipos de dados mais comuns no PostgreSQL para rápida consulta no dia a dia de desenvolvimento.

---

##  Sumário
- [Numéricos](#-numéricos)
- [Caractere](#-caractere)
- [Binários](#-binários)
- [Data e Tempo](#-data-e-tempo)
- [Booleano](#-booleano)
- [Enumerado (ENUM)](#-enumerado-enum)
- [Geométricos e de Rede](#-geométricos-e-de-rede)

---

##  Numéricos
Utilizados para armazenar de inteiros simples a números de ponto flutuante de alta precisão.

| Tipo | Tamanho | Descrição | Exemplo |
| :--- | :--- | :--- | :--- |
| `smallint` | 2 bytes | Inteiro com sinal (-32.768 a 32.767) | `32000` |
| `integer` | 4 bytes | Inteiro com sinal padrão (~2 bilhões) | `2147483647` |
| `bigint` | 8 bytes | Inteiro com sinal de grande alcance | `9223372036854775807` |
| `decimal` / `numeric` | Variável | Precisão exata (ideal para dados financeiros) | `NUMERIC(10,2)` |
| `real` | 4 bytes | Ponto flutuante de precisão simples (6 dígitos) | `3.14159` |
| `double precision` | 8 bytes | Ponto flutuante de dupla precisão (15 dígitos) | `2.718281828459045` |

---

##  Caractere
Para armazenamento de textos e strings alfanuméricas.

* **`char(n)`**: Tamanho fixo. Preenche com espaços à direita até completar $n$ caracteres.
* **`varchar(n)`**: Tamanho variável com limite máximo de $n$ caracteres.
* **`text`**: Tamanho variável sem limite máximo predefinido.

---

##  Binários
* **`bytea`**: Armazena sequências de bytes brutos (byte array) de tamanho variável.

---

##  Data e Tempo
Tipos para manipulação temporal com e sem fuso horário (*timezone*).

| Tipo | Formato | Descrição |
| :--- | :--- | :--- |
| `date` | `YYYY-MM-DD` | Apenas a data |
| `time` | `HH:MM:SS` | Apenas o horário |
| `timestamp` | `YYYY-MM-DD HH:MM:SS` | Data e hora **sem** fuso horário |
| `timestamptz` | `YYYY-MM-DD HH:MM:SS-03` | Data e hora **com** fuso horário |
| `interval` | `1 day 2 hours` | Diferença ou intervalo de tempo |

---

## Booleano
* **`boolean`**: Aceita os valores `TRUE`, `FALSE` ou `NULL`.

---

##  Enumerado (ENUM)
Criação de tipos customizados com valores estáticos e ordenados.

```sql
-- Criando o tipo
CREATE TYPE mood AS ENUM ('sad', 'ok', 'happy');

-- Utilizando na tabela
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    status mood NOT NULL
);