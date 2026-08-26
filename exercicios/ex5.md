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