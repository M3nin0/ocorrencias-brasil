'
Funções para a leitura, limpeza e organização dos dados utilizados
'

#' Função para tratar as colunas dos dados (Remove a coluna de código do município) e
#' renomeia as colunas para ficar mais simples a manipulação 
#'
transform.column <- function(data) {
  # data$`Código.IBGE.Município` <- NULL;
  colnames(data) <- c('regiao', 'sigla_uf', 'uf', 'cod_uf', 'municipio', 
                         'tipo_crime', 'mes', 'mes_ano', 'ocorrencias');  
  return(data);
}

#' Função para a leitura de todos os dados do diretório `data`
#' @return data.frame
readAllData <- function(){
  path <- './dados/';
  files <- dir(path);
  allData <- data.frame();
  
  for(f in files) {
    if (!grepl('.pdf', f)) {
      print(f);
      data <- read.csv(paste(path, f, sep = ''), skip = 4, sep = ';', fileEncoding = 'latin1');
      allData <- rbind(allData, data);
    }
  }
  return(transform.column(allData));
}

#' Função para a leitura de um ano específico de ocorrências
#' @return data.frame
readSpecificYear <- function(year) {
  path <- './dados/';
  files <- dir(path);
  
  for (f in files) {
    if (grepl(toString(year), f)) {
      data <- read.csv(paste(path, f, sep = ''), skip = 4, sep = ';', fileEncoding = 'latin1');
      return(transform.column(data));
    } 
  }
}
