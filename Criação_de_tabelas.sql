--Criação da Tabela Usuário
CREATE TABLE usuário (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(255),
    valor_investido DECIMAL(10, 2),
    perfil_usuário VARCHAR(255),
    localização VARCHAR(255),
    idade INT,
    renda_em_dolar DECIMAL(10, 2)
);
-- Criação da tabela ações
CREATE TABLE ações (
    Ticker VARCHAR(10) PRIMARY KEY,
    Nome VARCHAR(255),
    setor VARCHAR(255),
    Capitalização_de_Mercado BIGINT,
    Preço_atual DECIMAL(10, 2),
    Beta DECIMAL(5, 2),
    P_L DECIMAL(5, 2),
    Indústria VARCHAR(255)
);

-- Criação da tabela Moedas fiduciárias
CREATE TABLE Moedas_fiduciárias (
    Ticker VARCHAR(10) PRIMARY KEY,
    Nome VARCHAR(255),
    Preço_atual DECIMAL(10, 2)
);
-- Criação da tabela títulos de renda fixa
CREATE TABLE títulos_de_renda_fixa (
    Ticker VARCHAR(10) PRIMARY KEY,
    Nome VARCHAR(255),
    Preço_atual DECIMAL(10, 2)
);
-- Criação da tabela Cripto
CREATE TABLE Cripto (
    Ticker VARCHAR(10) PRIMARY KEY,
    Nome VARCHAR(255),
    market_cap DECIMAL(18, 2)
);
-- Criação da tabela commodities
CREATE TABLE commodities (
    Nome VARCHAR(255) PRIMARY KEY,
    Ticker VARCHAR(10),
    Preço_atual DECIMAL(18, 2),
    Volume VARCHAR(255)
);
-- Criação da tabela Assets_commodities
CREATE TABLE Assets_commodities (
    Nome VARCHAR(255),
    user_id INT,
    quantidade INT,
    PRIMARY KEY (Nome, user_id),
    FOREIGN KEY (Nome) REFERENCES commodities(Nome),
    FOREIGN KEY (user_id) REFERENCES usuário(user_id)
);
-- Criação da tabela Assets_ações
CREATE TABLE Assets_ações (
    Ticker VARCHAR(10),
    user_id INT,
    quantidade INT,
    PRIMARY KEY (Ticker, user_id),
    FOREIGN KEY (Ticker) REFERENCES ações(Ticker),
    FOREIGN KEY (user_id) REFERENCES usuário(user_id)
);
-- Criação da tabela Assets_fiduciárias
CREATE TABLE Assets_fiduciárias (
    Ticker VARCHAR(10),
    user_id INT,
    quantidade INT,
    PRIMARY KEY (Ticker, user_id),
    FOREIGN KEY (Ticker) REFERENCES Moedas_fiduciárias(Ticker),
    FOREIGN KEY (user_id) REFERENCES usuário(user_id)
);
-- Criação da tabela Assets_titulos
CREATE TABLE Assets_titulos (
    Ticker VARCHAR(10),
    user_id INT,
    quantidade INT,
    PRIMARY KEY (Ticker, user_id),
    FOREIGN KEY (Ticker) REFERENCES títulos_de_renda_fixa(Ticker),
    FOREIGN KEY (user_id) REFERENCES usuário(user_id)
);
-- Criação da tabela Assets_cripto
CREATE TABLE Assets_cripto (
    Ticker VARCHAR(10),
    user_id INT,
    quantidade INT,
    PRIMARY KEY (Ticker, user_id),
    FOREIGN KEY (Ticker) REFERENCES Cripto(Ticker),
    FOREIGN KEY (user_id) REFERENCES usuário(user_id)
);


