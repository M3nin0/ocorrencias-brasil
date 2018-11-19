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

def format_legend(legend_handless):
    legend = []
    for label in legend_handless[1]:
            legend.append(label.split(",")[1][:-1])
    return legend

def create_month_xlegend(months):
    xlegend = ['']
    for month in months:
        if(int(month[1].split('/')[0]) % 2 != 0):
            xlegend.append(month[1])
    return xlegend

def create_year_xlegend(years):
    xlegend = ['']
    for year in years:
        if(int(year) % 2 == 0):
            xlegend.append(year)
    return xlegend
