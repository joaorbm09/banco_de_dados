CREATE TABLE alunos(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(60),
    turma VARCHAR(12),
    nascimento DATE,
    ativo BOOLEAN

);

INSERT INTO alunos(
    id,
    nome,
    turma,
    nascimento,
    ativo)

    VALUES(
        '1',
        'João Wictor',
        'I1D46A',
        '12/07/2009',
        '1'
)

SELECT * FROM alunos;