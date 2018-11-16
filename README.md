## Ocorrências criminais no Brasil (2004-2017) :bar_chart:

Análise dos dados disponibilizados pelo Sistema Nacional de Estatísticas de Segurança Pública e Justiça Criminal (**SINESPJC**).

A mesma análise foi feito em duas linguagens, R e Python, para aprendermos a trabalhar com um pouco de cada uma delas.

Os resultados podem ser acessados através dos links abaixo:

- Versão de Python: [Link](https://ocorrencias-brasil.netlify.com/ocorrencias-py.html)
- Versão de R: [Link](https://ocorrencias-brasil.netlify.com/ocorrencias-r.html)

Para executar os kernels Jupyter, será necessário ter o Jupyter Notebook instalado, e no caso do R, será necessário instalar também o [IRkernel](https://github.com/IRkernel/IRkernel). Na versão de Python, não esqueça de instalar o Pandas :panda_face:

## Aquisição dos dados :octopus:

Para a aquisição facilitada dos dados, um pequeno script em node.js foi criado para a aquisição dos dados. Para sua execução será necessário ter instalado o node.js, junto ao NPM. Com estes requisitos básicos, acesse o diretório `recuperacao_dados`, e utilize os seguintes comandos. 

```shell
npm install # Instala as dependências
```

```shell
node index.js # Executa o scrap dos dados
```

OBS: Os dados estão armazenados no diretório `dados`, na raiz do projeto.

## Sobre :grey_question:

Esta análise foi criada como parte da matéria de Laboratório de banco de dados na Fatec-SJC. Trabalho desenvolvido por Felipe Menino e Weslei Luiz de Paula Pinto.

## Ajuda :battery:

Caso encontre problemas, ficaremos felizes com sua ajuda, caso precise, abra uma `issue`.