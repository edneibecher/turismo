# teste de uso do GitHub

# para carregar arquivos
library(readr)
Organizadores <- read_delim("OrganizadoraDeEventos201904TrimestreCadasturPJ.csv",";", 
                            escape_double = FALSE, locale = locale(encoding = "WINDOWS-1252"),
                            trim_ws = TRUE)

# filtrando por estado e por localicade e gerando um grafico de colunas
teste %>% 
  filter(UF=="RS") %>% 
  group_by(Localidade) %>% 
  ggplot(aes(Localidade))+geom_bar()+
  theme(axis.text.x=element_text(size=rel(1.1), angle=90))

# contando o numero de empresas por localidade
teste %>% 
  filter(UF=="RS") %>% 
  count(Localidade) 

# calcular o tempo de funcionamento em anos
library(lubridate)

teste$`Data de Inicio da Operação`<- dmy(teste$`Data de Inicio da Operação`)

as.duration(today()-teste$`Data de Inicio da Operação`) # ou também

year(today())-year(teste$`Data de Inicio da Operação`)

# para obter a data atual

Sys.Date() # ou
today()

# verificar quantas empresas realizam cada tipo de evento 
library(stringr)

teste$ec<- str_detect(teste$`Tipo de Evento`, pattern = "Comercial")
teste$ecul<- str_detect(teste$`Tipo de Evento`, pattern = "Cultural") # e assim por diante

# contando o numero de empresas por localidade que realizam certo tipo de evento
teste %>% 
  filter(UF=="RS" & es==TRUE) %>% 
  count(Localidade) 

