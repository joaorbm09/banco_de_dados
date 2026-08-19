# Criando diagrama de trabalhos com o Mermaid:

## Banco Estudos:

``` mermaid
    erDiagram
        clientes{
            int id PK
            varshar(30) nome
            varshar(50) sobre_nome
            int telefone
            varshar(11) cpf
        }

    vendas { 
        int id PK
        date data
        int id_cliente FK
    }

    clientes ||--o{ vendas: "conecta"
```