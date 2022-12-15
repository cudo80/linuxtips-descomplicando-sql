-- Databricks notebook source
SELECT
  COUNT(*) AS nrLinhasNaoNulas -- linhas não-nulas
FROM
  silver_olist.cliente

-- COMMAND ----------

SELECT
  COUNT(*) AS nrLinhasNaoNulas, -- linhas não-nulas
  COUNT(idCliente) AS nrIdClienteNaoNulo -- id clientes não nulos
FROM
  silver_olist.cliente

-- COMMAND ----------

SELECT
  COUNT(*) AS nrLinhasNaoNulas, -- linhas não-nulas
  COUNT(idCliente) AS nrIdClienteNaoNulo, -- id clientes não nulos
  COUNT(DISTINCT idCliente) AS nrIdClienteDistintos -- id de clientes distintos
FROM
  silver_olist.cliente

-- COMMAND ----------

SELECT
  COUNT(*) AS nrLinhasNaoNulas, -- linhas não-nulas
  COUNT(idCliente) AS nrIdClienteNaoNulo, -- id clientes não nulos
  COUNT(DISTINCT idCliente) AS nrIdClienteDistintos, -- id de clientes distintos
  COUNT(DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos -- id de clientes únicos distintos
FROM
  silver_olist.cliente

-- COMMAND ----------

SELECT
  COUNT(*),
  COUNT(DISTINCT idCliente) AS qtClientes,
  COUNT(DISTINCT idClienteUnico) AS qtClientesUnicos
FROM
  silver_olist.cliente
WHERE
  descCidade = 'presidente prudente'
