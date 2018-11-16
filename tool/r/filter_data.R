'
Funções para a filtragem dos dados
'

suppressMessages(library(tidyverse));

#' Filtro dos dados por município
#' @param data Dados a serem filtrados
#' @param city Nome do município a ser filtrado
filter.city <- function(data, city) {
  return(data %>% filter(municipio == city));
}

#' Filtro dos dados por UF
#' @param data Dados a serem filtrados
#' @param uf UF desejado
filter.uf <- function(data, uf) {
  return(data %>% filter(uf == uf));
}

#' Filtro dos dados por tipo de crime
#' @param data Dados a serem filtrados
filter.crime <- function(data, crime) {
  return(data %>% filter(tipo_crime == crime));
}

#' Filtro dos dados por quantidade de ocorrências
#' @param data Dados a serem filtrados
#' @param amount
filter.amount <- function(data, amount) {
  return(data %>% filter(ocorrencias == amount));
}
