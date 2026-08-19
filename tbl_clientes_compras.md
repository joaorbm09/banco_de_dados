# Criando tabela de compras dos clientes

``` mermaid
    erDiagram
        clientes{
            int id PK
            string nome
            string cpf
            string telefone
            FK int numero_compra
        }

    compras { 
        int id PK
        int id_cliente FK
        date data_compra
    }

    pagamento{
        int id PK
        int id_cliente FK
        date data
        date valid
        date pago
        float valor
        status bool 
    }

    endereco{
        int id PK
        int id_cliente FK
        string rua
        string numero
        string bairro
        string cep
    }

    clientes ||--o{ compras: "conecta"
    clientes ||--o{ pagamento: "conecta"
    clientes ||--o{ endereco: "conecta"
```