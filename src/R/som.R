'
Script para a clusterização dos dados utilizando Self-Organized Maps
'

library(tidyverse)
library(kohonen)
library(ggsom)
library(ggthemes)


#' Função para o agrupamento dos dados utilizando SOM
#' @param allData Dados de todos os anos disponíveis 
group_by.som <- function(allData) {

  # Separando as colunas a serem utilizadas no SOM  
  scl <- scale(c(tty$tipo_crime, tty$ocorrencias, tty$municipio))
  somm <- som(scale(data), grid = somgrid(6, 3, "rectangular"));

  return(somm);
}