'
Funções para o agrupamento e agregação dos dados
'

suppressMessages(library(tidyverse));

#' Função para o agrupamento de dados levando em consideração a
#' coluna `mes`
#' @param data Dados a serem processados
group_by.month <- function(data) {
  return(data %>% group_by(mes));
}
