-- Databricks notebook source
SELECT
  *
FROM
  silver_olist.pedido
WHERE
  descSituacao = 'shipped'
  
-- leia-se: selecione todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja entregue 'delivered'

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
WHERE
  descSituacao = 'shipped'
  AND year(dtPedido) = '2018'
  
  -- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviados em 2018

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
WHERE
  (descSituacao = 'shipped'
  OR descSituacao = 'canceled')
  AND year(dtPedido) = '2018'
  
  -- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviados ou cancelados em 2018

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
WHERE
  descSituacao IN ('shipped', 'canceled')
  AND year(dtPedido) = '2018'
  
  -- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviados ou cancelados em 2018

-- COMMAND ----------

SELECT
  *,
  DATEDIFF(dtEstimativaEntrega, dtAprovado)
FROM
  silver_olist.pedido
WHERE
  descSituacao IN ('shipped', 'canceled')
  AND year(dtPedido) = '2018'
  AND DATEDIFF(dtEstimativaEntrega, dtAprovado) > 30
  
  -- leia-se: selecione todas as colunas da tabela silver_olist.pedidofiltrando pedidos enviados ou cancelados em 2018 e a diferença entre dtEstimativaEntrega e dtAprovado seja maior que 30 dias
