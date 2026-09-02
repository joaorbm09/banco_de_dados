# primeiro exercio, criando uma tabela para clientes em mermaid

``` mermaid
    erDiagram
        Tabela_Clientes{
            int id_cliente PK "unique autoincrement" 
            string nome "not null"
            string cpf "not null"
        }

        telefone{
            int id PK "unique autoincrement"
            int id_cliente FK "not null"
            string telefone "not null"
        }
    Tabela_Clientes ||--o{ telefone:"possui"

```

