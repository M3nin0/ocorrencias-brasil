'
Script para a leitura, limpeza e organização dos dados utilizados
'

#' Função para a leitura de todos os dados do diretório `data`
#' @return data.frame
readAllData <- function(){
  path <- '../dados/';
  files <- dir(path);
  allData <- data.frame();
  
  for(f in files) {
    if (!grepl('.pdf', f)) {
      print(f);
      data <- read.csv(paste(path, f, sep = ''), skip = 4, sep = ';');
      allData <- rbind(allData, data);
    }
  }
  return(allData);
}

#' Função para a leitura de um ano específico de ocorrências
#' @return data.frame
readSpecificYear <- function(year) {
  path <- '../dados/';
  files <- dir(path);
  
  for (f in files) {
    if (grepl(toString(year), f)) {
      return(read.csv(paste(path, f, sep = ''), skip = 4, sep = ';'));
    } 
  }
}
