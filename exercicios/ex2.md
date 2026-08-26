# segundo exercicio, criando tabela para Catálogo de Livros e Autores

```mermaid
    erDiagram
        View_Livros{
            int ISBN PK 
            string Título 
            string Editora 
        }
        Autor1{
            int id PK 
            int ISBN FK 
            int id_autor 
        }

        Autor2{
            int id PK 
            int ISBN FK 
            int id_autor 
        }


Autor1 ||--o{ View_Livros:"escreve"
Autor2 ||--o{ View_Livros:"escreve"
``` 
