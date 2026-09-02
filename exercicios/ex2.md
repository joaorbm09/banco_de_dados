# segundo exercicio, criando tabela para Catálogo de Livros e Autores

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
