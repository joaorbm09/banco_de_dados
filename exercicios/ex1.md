# primeiro exercio, criando uma tabela para clientes em mermaid

``` mermaid
    erDiagram
        Tabela_Clientes{
            int id PK " 1"
            string nome "Joao da silva"
            string cpf "123.456.789-00"
        }

        telefone{
            int id PK "1"
            int id_cliente FK "1"
            string telefone "(11) 8888-8888"
            int id PK "2"
            int id_cliente FK "1"
            string telefone "(11) 9999-9999"
            
        }
    Tabela_Clientes ||--o{ telefone:"possui"

```

