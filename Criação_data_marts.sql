CREATE OR REPLACE TABLE avaliacao-assets.data_marts.Bitcoin_analise_tempo AS
SELECT 
    c.Data_id,
    c.Sticker_cripto,
    c.Value,
    t.Mes,
    t.Ano,
    t.Dia
FROM 
    avaliacao-assets.avaliacao_assets_dados.Dim_cripto c
JOIN
    avaliacao-assets.avaliacao_assets_dados.Dim_tempo t
ON
    c.Data_id = t.Data_id
WHERE 
c.Sticker_cripto = 'BTC-USD'



CREATE OR REPLACE TABLE avaliacao-assets.data_marts.comparacao_entre_usuarios_stocks AS
SELECT 
us.User_id,
us.Data_id,
us.Quantidade,
us.Ticker,
s.Value,
t.Mes,
t.Dia,
t.Ano


FROM 
    avaliacao-assets.avaliacao_assets_dados.Fact_user_stocks us
JOIN
    avaliacao-assets.avaliacao_assets_dados.Dim_tempo t
ON
    us.Data_id = t.Data_id
JOIN
    avaliacao-assets.avaliacao_assets_dados.Dim_stocks s
ON
    us.Ticker = s.Ticker_stocks
WHERE 
us.User_id = 0 or us.User_id = 500

CREATE OR REPLACE TABLE avaliacao-assets.data_marts.usuario_0_currency AS
SELECT 
uc.User_id,
uc.Data_id,
uc.Quantidade,
uc.Sticker,
c.Value,
t.Mes,
t.Dia,
t.Ano


FROM 
    avaliacao-assets.avaliacao_assets_dados.Fact_user_currency uc
JOIN
    avaliacao-assets.avaliacao_assets_dados.Dim_tempo t
ON
    uc.Data_id = t.Data_id
JOIN
    avaliacao-assets.avaliacao_assets_dados.Dim_currencies c
ON
    uc.Sticker = C.Ticker_currencies
WHERE 
uc.User_id = '0'