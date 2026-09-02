# segundo exercicio, criando tabela para Catálogo de Livros e Autores

## primeira solução do professor

```mermaid
erDiagram
    livros{
        int id PK
        int id_autor FK
        string ISBD
        string titulo
        string editora
    }
    autores{
        int id PK
        int id_livro FK
        string nome
    }

livros}|--|{ autores:"sao escritos"






## eu escrevi
```mermaid
    erDiagram
        LIVRO{
            int ISBN PK 
            string titulo 
            string editora 
        }
        AUTOR{
            int id PK 
            string nome 
        }

        LIVRO_AUTOR{
            int id PK
            int id_livro FK 
            int id_autor FK
        }


LIVRO }|--|{ AUTOR:"escreve"
LIVRO ||--o{ LIVRO_AUTOR:"possui"
AUTOR ||--o{ LIVRO_AUTOR:"escreve"
``` 
