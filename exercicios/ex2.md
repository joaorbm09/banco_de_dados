# segundo exercicio, criando tabela para Catálogo de Livros e Autores

## primeira solução do professor

```mermaid
erDiagram
    livros{
        int id PK "unique autoincrement"
        int id_autor FK "not null"
        string ISBD "not null"
        string titulo "not null"
        string editora "not null"
    }
    autores{
        int id PK "unique autoincrement"
        int id_livro FK "not null"
        string nome "not null"
    }

livros}|--|{ autores:"sao escritos"






## eu escrevi
```mermaid
    erDiagram
        LIVRO{
            int ISBN PK "unique autoincrement"
            string titulo "not null"
            string editora "not null"
        }
        AUTOR{
            int id PK "unique autoincrement"
            string nome "not null"
        }

        LIVRO_AUTOR{
            int id PK "unique autoincrement"
            int id_livro FK "not null"
            int id_autor FK "not null"
        }


LIVRO }|--|{ AUTOR:"escreve"
LIVRO ||--o{ LIVRO_AUTOR:"possui"
AUTOR ||--o{ LIVRO_AUTOR:"escreve"
``` 
