CREATE DATABASE gerenciamento_recuperacao_desastres;
USE gerenciamento_recuperacao_desastres;

-- Tabela: eventos_desastres
CREATE TABLE eventos_desastres (
    id_evento INT PRIMARY KEY AUTO_INCREMENT,
    tipo_evento VARCHAR(100) NOT NULL,
    descricao TEXT,
    nivel_impacto ENUM('Baixo', 'Médio', 'Alto', 'Crítico') NOT NULL,
    data_evento DATETIME NOT NULL,
    detectado_por VARCHAR(100),
    status ENUM('Ativo', 'Resolvido', 'Em andamento') DEFAULT 'Ativo'
);

-- Tabela: planos_recuperacao
CREATE TABLE planos_recuperacao (
    id_plano INT PRIMARY KEY AUTO_INCREMENT,
    tipo_evento VARCHAR(100) NOT NULL,
    detalhes_plano TEXT NOT NULL,
    tempo_estimado_recuperacao INT COMMENT 'Tempo em horas',
    equipe_responsavel VARCHAR(100) NOT NULL
);

-- Tabela: registros_backup
CREATE TABLE registros_backup (
    id_backup INT PRIMARY KEY AUTO_INCREMENT,
    nome_sistema VARCHAR(100) NOT NULL,
    data_backup DATETIME NOT NULL,
    status_backup ENUM('Sucesso', 'Falha', 'Em andamento') NOT NULL,
    local_armazenamento VARCHAR(255) NOT NULL
);

-- Tabela: redundancia_sistema
CREATE TABLE redundancia_sistema (
    id_sistema INT PRIMARY KEY AUTO_INCREMENT,
    nome_sistema VARCHAR(100) NOT NULL,
    nivel_redundancia ENUM('Nenhum', 'Parcial', 'Total') NOT NULL,
    ultimo_teste_failover DATETIME
);

-- Tabela: equipes_recuperacao
CREATE TABLE equipes_recuperacao (
    id_equipe INT PRIMARY KEY AUTO_INCREMENT,
    nome_equipe VARCHAR(100) NOT NULL,
    contato_lider VARCHAR(100) NOT NULL,
    area_especialidade VARCHAR(255)
);

-- Tabela: testes_exercicios
CREATE TABLE testes_exercicios (
    id_teste INT PRIMARY KEY AUTO_INCREMENT,
    nome_teste VARCHAR(100) NOT NULL,
    data_teste DATETIME NOT NULL,
    resultado ENUM('Aprovado', 'Reprovado', 'Precisa Melhorar') NOT NULL,
    notas TEXT
);
