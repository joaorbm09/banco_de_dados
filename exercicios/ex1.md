# primeiro exercio, criando uma tabela para clientes em mermaid

``` mermaid
    erDiagram
        Tabela_Clientes{
            int id_cliente PK
            string nome 
            string cpf 
        }

        telefone{
            int id PK 
            int id_cliente FK
            string telefone 
        }
    Tabela_Clientes ||--o{ telefone:"possui"

```

