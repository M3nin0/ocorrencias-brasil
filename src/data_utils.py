import pandas as pd

def readYearData(year):
    fileRead = pd.read_csv('dados/ocorrenciasmun-brasil{}.csv'.format(year), encoding='latin-1',sep=';')
    #fileRead.rename(index=str, columns={'regiao','uf','estado','codigo_IBGE','municipio','crime','ano','mes','ocorrencias'})
    #fileRead.columns=[ 'regiao','uf','estado','codigo_IBGE','municipio','crime','ano','mes','ocorrencias' ]
    return fileRead