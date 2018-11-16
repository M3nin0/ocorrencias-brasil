import glob
import pandas as pd


def read_year_data(year):
    file = pd.read_csv('./dados/ocorrenciasmun-brasil{}.csv'.format(year), encoding='latin-1',sep=';',skiprows=4)
    return format_columns(file)

def format_columns(data):
    data.columns=[
    "regiao",
    "uf",
    "estado",
    "codigo_IBGE",
    "municipio",
    "crime",
    "ano",
    "mes",
    "ocorrencias"
    ]
    return data


def read_all_data():
    '''Esta função carrega todos os dados dos csvs de ocorrencias do Brasil
    '''
    files = glob.glob('dados/*.csv')
    years = []
    for file in files:
        data = pd.read_csv(file, encoding='latin-1',sep=';',skiprows=4)
        years.append(data)
    return format_columns(pd.concat(years))