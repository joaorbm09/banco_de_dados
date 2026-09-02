# terceiro exercicio, criando tabela para Itens de um Pedido


```mermaid
    erDiagram
        cliente{
            int id PK "unique autoincrement"
            string nome "null"
        }
        produto{
            int id PK "unique autoincrement"
            string nome_produto "not null"
            float valor_produto "not null"
        }
        pedido{
            int id PK "unique autoincrement"
            int id_produto PK "unique autoincrement" 
            int id_cliente FK "not null"
            dete data "not null"
            int quantidade "not null"
            float produto_unit "not null"
        }

cliente ||--o{ pedido :"Realiza"
produto ||--o{ pedido :"Está"

```