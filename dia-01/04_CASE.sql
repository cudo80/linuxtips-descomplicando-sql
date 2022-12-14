-- Databricks notebook source
SELECT
  *,
  CASE
    WHEN descUF = 'SP' THEN 'paulista'
    WHEN descUF = 'RJ' THEN 'fluminense'
    WHEN descUF = 'PR' THEN 'paranaense'
    WHEN descUF = 'SC' THEN 'catarinense'
    ELSE 'outros'
  END AS descNacionalidade
FROM
  silver_olist.cliente
  
  -- leia-se: selecione 

-- COMMAND ----------



-- COMMAND ----------

SELECT
  *,
  CASE
    WHEN descUF = 'SP' THEN 'paulista'
    WHEN descUF = 'RJ' THEN 'fluminense'
    WHEN descUF = 'PR' THEN 'paranaense'
    WHEN descUF = 'SC' THEN 'catarinense'
    ELSE 'outros'
  END AS descNacionalidade,
  CASE WHEN descCidade LIKE '%sao%' THEN 'Tem São no nome'
  ELSE 'Não tem São no nome'
  END AS descCidade
FROM
  silver_olist.cliente

-- COMMAND ----------

SELECT
  *,
  CASE
    WHEN descUF IN ('SP', 'MG', 'RJ', 'ES') THEN 'sudeste'
    END AS descRegiao
    
    FROM
      silver_olist.vendedor
