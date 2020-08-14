# teste de uso do GitHub

# para carregar arquivos
library(readr)
OrganizadoraDeEventos201904TrimestreCadasturPJ <- read_delim("OrganizadoraDeEventos201904TrimestreCadasturPJ.csv", 
                                                               +     ";", escape_double = FALSE, locale = locale(encoding = "WINDOWS-1252"), 
                                                               +     trim_ws = TRUE)

