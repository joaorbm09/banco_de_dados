# quinto exercicio, criando tabelas para Gestão de Projetos (Equipes)

## Aqui é a solução do porfessor

```mermaid
    erDiagram
        funcionario{
            int id PK "unique autoincrement"
            string nome "not null"
            string funcao "not nul"
        }
        projetos{
            int id PK "unique autoincrement"
            string nome "not null"
            string descricao "not null"
        }
        alocacao{
            int id PK "unique autoincrement"
            int id_funcionarios FK "not null"
            int id_projetos FK "not null"
        }

funcionario ||--|{ alocacao:Trabalham
projetos ||--|{alocacao:"Esta Alocado"
```



## aqui foi o que eu fiz
``` mermaid
    erDiagram
    projeto{
        int id_projeto PK 
        string nome_projeto 
    }

    funcionario{
        int id_funcinario PK
        string nome_funcionario
    }

    alocacao{
        int id_projeto FK 
        int id_funcionario FK 
        string funcao 
        

    }
    projeto ||--o{ alocacao : "possui"
    funcionario ||--o{ alocacao : "participa"
```