
DROP TABLE IF EXISTS servico CASCADE;
DROP TABLE IF EXISTS administrador CASCADE;


CREATE TABLE administrador (
    id_admin SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE servico (
    id_servico SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    valor NUMERIC(10,2) NOT NULL,
    id_admin INT REFERENCES administrador(id_admin) ON DELETE SET NULL
);

