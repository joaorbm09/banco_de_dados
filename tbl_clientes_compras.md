# criando tabela de compras dos clientes

``` mermaid
    erDiagram
        clientes{
            int id PK
            string nome
            string cpf
            string endereço
            string telefone
            FK int numero_compra
        }

    compras { 
        int id PK
        int id_cliente
        date data_compra
    }

    pagamento{
        int id PK
        date data
        date valid
        date pago
        float valor
        status bool 
    }

    clientes ||--o{ compras: "conecta"
    clientes ||--o{ pagamento: "conecta"
```