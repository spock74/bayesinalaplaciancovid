##
## main scrit scratchpad before to transfer to Rmarkdow
##

#Carrega CSV na variavel dados
source('read_data_2.R')

colunas <- c( 
  'FEBRE', 
  'TOSSE', 
  'GARGANTA',
  'DISPNEIA', 
  'DESC_RESP',
  'SATURACAO', 
  'DIARREIA',
  'VOMITO', 
  'OUTRO_SIN',
  #'HOSPITAL', 
  'EVOLUCAO',
  'RENAL', 
  'DIABETES',
  'OBESIDADE', 
  'PERD_OLFT',
  'PERD_PALA', 
  'VACINA',
  'CLASSI_FIN',
  'CS_SEXO',
  'CS_GESTANT',
  'PUERPERA' ,
  'CARDIOPATI', 
  #'HEMATOLOGI' ,
  #'SIND_DOWN' ,
  #'HEPATICA' ,
  'ASMA',
  'ANTIVIRAL'
  #'TP_ANTIVIR'
  #'RAIOX_RES'
)

# separar grupo de variaveis para analise
colunas_clinicas <- dados[, colunas]
# POR FIM, FUNCOES DE BNLEARN NAO ACEITAM O TIPO TIBBLE (DE DPLYR):
dados_clinicos <- as.data.frame(colunas_clinicas)
nrow(dados_clinicos)
dados_clinicos_no_na <- na.omit(dados_clinicos)
nrow(dados_clinicos_no_na)
dados_clinicos_no_na <- dados_clinicos_no_na %>% filter(CLASSI_FIN == 5)
n_amostras = 70000
bn1 <- mmhc(sample_n(tbl = dados_clinicos_no_na, size = n_amostras, replace = FALSE))
bn2 <- mmhc(sample_n(tbl = dados_clinicos_no_na, size = n_amostras, replace = FALSE))
bn3 <- mmhc(sample_n(tbl = dados_clinicos_no_na, size = n_amostras, replace = FALSE))
bn4 <- mmhc(sample_n(tbl = dados_clinicos_no_na, size = n_amostras, replace = FALSE))
par(mfrow=c(2,2))
graphviz.plot(bn1, main="n_amostras = 10000", shape = "rectangle")
graphviz.plot(bn2, main="n_amostras = 10000", shape = "rectangle")
graphviz.plot(bn3, main="n_amostras = 10000", shape = "rectangle")
graphviz.plot(bn4, main="n_amostras = 10000", shape = "rectangle")
