# Intro to R
# Special thanks to Teacher Ariana Ribeiro Costa

# -------------------------------------------------------------------------------------------------------------------------------

# ReferÃªncia:
# IMAI, K. Quantitative social science: An introduction. Princeton University Press, 2018.
# Capítulo 1 - Item 1.3

# -------------------------------------------------------------------------------------------------------------------------------

# Saudações, Pessu! Espero que este arquivo ajude vocês e os introduza ao mundo do R

# FunÃ§Ãµes aritmÃ©ticas

# Com o software R Ã© possÃ­vel realizar funÃ§Ãµes aritmÃ©ticas diretamente no Console
# Assim, vocÃª pode digitar suas operaÃ§Ãµes diretamente como se estivesse utilizando uma calculadora

5 + 3

5 - 3

5 / 3

5 ^ 3

5 * (10 - 3)

sqrt(4)

# -------------------------------------------------------------------------------------------------------------------------------
# Objetos

# O software R guarda informaÃ§Ãµes como objetos com o nome de sua escolha
# Utilize nomes intuitivos e informativos para que vocÃª lembre do que se trata seu objeto

# Regras bÃ¡sicas: nome de objetos nÃ£o devem comeÃ§ar com nÃºmeros e nem conter espaÃ§os
# O quadro no canto superior direito (Environment) apresenta os objetivos criados no seu projeto

# Esta Ã© a forma mais simples de colocar dados no R
# utilize o caracter <- para atribuir valores ao seu objeto

result <- 5 + 3

# Visualizando o valor atribuÃ­do ao objeto: escrevendo o nome do objeto ou com a funÃ§Ã£o print

result
print(result)

# Se atribuirmos diferentes valores para o mesmo objeto, o valor do objeto serÃ¡ o Ãºltimo a ser inserido
# Ou seja, os obejtos sÃ£o sobrescritos

result <- 5 - 3

result

print(result)

# Sintaxe do objeto
# O nome do objeto deve ser digitado de forma idÃªntica - existe a diferenciaÃ§Ã£o entre letras maiÃºsculas e minÃºsculas

Result

# Comece a interpretar os erros: object 'Result' not found -> confira no Environment os nomes dos objetos criados


# AtÃ© o momento, os valores atrÃ­buidos aos objetos foram variÃ¡veis numÃ©ricas

# Os valores inseridos tambÃ©m podem ser texto (string) 
# Utiliza-se " " (aspas duplas) para sinalizar que o valor a ser atribuÃ­do Ã© um texto

eu <- "bruno"
otto <- "bobao"

eu

otto

bruno <- "aluno da FGV-RI"

bruno

# Ã‰ possÃ­vel atribuir valores numÃ©ricos como uma string

Result <- "5"

Result

# NÃ£o Ã© possÃ­vel realizar funÃ§Ãµes aritmÃ©ticas com strings

Result/3

sqrt(Result)

# Os objetos podem ser de classes diferentes
# Especifica o tipo de dado 

result
class (result)

Result
class (Result)

class(sqrt)

# -------------------------------------------------------------------------------------------------------------------------------
# Vetores

# Dados podem ser atribuÃ­dos a um vetor
# Um vetor ou uma matriz unidimensional simplesmente representa uma coleÃ§Ã£o 
# de informaÃ§Ãµes armazenadas em uma ordem especÃ­fica.

# Para isto utilizados uma funÃ§Ã£o concatenar
# Para atribuir um vetor de dados que contÃ©m mÃºltiplos valores utilizamos vÃ­rgulas para separar diferentes elementos

# Utiliza-se a funÃ§Ã£o c() 
# c Ã© a abrevisÃ§Ã£o da funÃ§Ã£o concatenar

# Insere os valores da PopulaÃ§Ã£o Mundial em mil habitantes
world.pop <- c(2525779, 3026003, 3691173, 4449049, 5320817, 6127700, 6916183)
world.pop

# Podemos utilizar a funÃ§Ã£o c() vÃ¡rias formas, lembre-se que a ordem Ã© importante
# concatenar

pop.first <- c(2525779, 3026003, 3691173)

pop.second <- c(4449049, 5320817, 6127700, 6916183)

pop.all <- c(pop.first, pop.second)

pop.all

# Podemos apresentar elementos especÃ­ficos do vetor utilizando colchetes [] ,chamados de indexes

# Exibe os Ã­ndices escolhidos entre colchetes

world.pop[2]

world.pop[c(2, 4)]

world.pop[c(4, 2)]

# TambÃ©m Ã© possÃ­vel remover elementos na hora da visualizaÃ§Ã£o do vetor

# Neste caso, nÃ£o exibe o elemento 3
world.pop[c(-3)]

# Podemos realizar operaÃ§Ãµes aritmÃ©ticas com os vetores

# Exemplo: mudanÃ§as em todas as variÃ¡veis de um vetor
# Os dados de populaÃ§Ã£o foram inseridos no vetor world.pop em mil habitantes
# Para transformar os dados em milhÃµes de habitantes iremos dividir todo o vetor por 1000

pop.million <- world.pop / 1000

pop.million

# Exemplo: cÃ¡lculo da taxa de crescimento da populaÃ§Ã£o com ano-base de 1950
# A taxa de crescimento Ã© calculada dividindo o valor atribuÃ­do a populaÃ§Ã£o mundial pelo valor do ano base
# Ano base: 1950 -> Ã© o primeiro elemento do vetor world.pop

pop.rate <- world.pop / world.pop[1]

pop.rate

# FunÃ§Ãµes
# As funÃ§Ãµes geram resultados (outputs) especÃ­ficos a partir de determinadas entradas (inputs)
# Algumas funÃ§Ãµes jÃ¡ foram apresentadas: sqrt(), print(), class(), c()

# Sintaxe padrÃ£o -> funcname(input)

# ExtensÃ£o do vetor
length(world.pop)

# Valor mÃ­nimo
min(world.pop)

# Valor mÃ¡ximo
max(world.pop)

# Faixa 
range(world.pop)

#MÃ©dia
mean(world.pop)

# MÃ©dia : soma dos elementos do vetor/extensÃ£o do vetor
sum(world.pop) / length(world.pop)

# FunÃ§Ãµes podem possuir mais um argumento

# Na sixtaxe da funÃ§Ã£o Ã© importante definir a ordem
# funcname(input1,input2)
# funcname(input2,input1)

# TambÃ©m Ã© possivel especificar um nome para os argumentos
# funcname(arg1 = input1, arg2 = input2).

# Na prÃ¡tica - atÃ© entÃ£o apenas inserimos os valores da populaÃ§Ã£o mundial em mil habitantes no vetor world.pop
# Vamos inserir os anos como label deste vetor

# 1 passo
# Gerar um sequÃªncia de anos

# Exemplo bÃ¡sico de sequÃªncia
# FunÃ§Ã£o seq()

year <- seq(from = 1950, to = 2010, by = 10)
year

# exemplo 2 para a criaÃ§Ã£o de sequÃªncia
year2 <- seq(from = 1960, to = 2010, by = 10)
year2

# PossÃ­vel alterar valores pelos Ã­ndices
year2 [c(1, 2)] <- c(1959, 1969)
year2

# SequÃªncia sem vetores, com intervalos especÃ­ficos
seq(to = 2010, by = 10, from = 1950)
seq(from = 2010, to = 1950, by = -10)

# SequÃªncia simples de 1 em 1
2008:2012

2012:2008

# Voltando ao exemplo:
# Vamos nomear os dados atribuÃ­dos ao vetor world.pop

# o vetor ainda nÃ£o foi nomeado - resposta NULL
names(world.pop)

names(world.pop) <- year

world.pop
# -------------------------------------------------------------------------------------------------------------------------------
# AtÃ© entÃ£o inserimos dados de forma manual
# Na prÃ¡tica utilizamos arquivos de dados quantitativos para fazer nossas anÃ¡lises: chamados de data frame
# Software R -> arquivos .csv ou dataR
# sÃ£o dados que devem estar apresentados na diposiÃ§Ã£o de uma planilha

# OpÃ§Ã£o 1
# Inserir data frame pelo console do R
# NecessÃ¡rio verificar em qual dirtetÃ³rio o R estÃ¡ acessando os seus arquivos
# Utiliza e funÃ§Ã£o getwd() para visualiza qual o diretÃ³rio atual
# o padrÃ£o do diretÃ³rio do R Ã© a pasta Documentos do Windows:  "C:/Users/Ariana/Documents"

getwd()

# Seu arquivo .csv ou .dataR deve ser neste diretÃ³rio, caso contÃ¡rio o R nÃ£o irÃ¡ acessar
# Caso seja necessÃ¡rio mudar o diretÃ³rio utilize a funÃ§Ã£o setwd() especificando o endereÃ§o do seu computador
# que o R deverÃ¡ acessar
# Para copiar o endereÃ§o do diretÃ³rio no seu computador utilize o Explorer/Finder e clique na aba superior em qua especÃ­fica, 
# uma segunda opÃ§Ã£o Ã© clicar com o botÃ£o esquerdo no arquivo, ir em propriedades e em seguida copiar o endereÃ§o
# disponÃ­vel em localizaÃ§Ã£o

setwd("C:/Users/bruno/Desktop/R Data (all data)")

# Leitura do arquivo.csv
# Utilize a funÃ§Ã£o abaixo para carregar o arquivo de dados no RStudio
# O arquivo deve estar disponibilizado na pasta especificada em setwd() e ter o nome igual ao input da funÃ§Ã£o read.csv

UNpop <- read.csv("UNpop.csv")

class(UNpop)

# Visualiza e abre uma nova aba
View(UNpop)

# OpÃ§Ã£o 2
# A opÃ§Ã£o Import Dataset no Environment tambÃ©m pode ser utilizada.
# No enviroment (canto direito e superior da tela), clique em "Import Dataset" 
# Busque a base no seu computador, selecione o arquivo .csv e em seguida clique em "Open"
# AbrirÃ¡ uma tela de importaÃ§Ã£o: caso os dados estejam devidamente carregados, clique em Import.
# O data frama deve aparecer no seu Enviroment

# -------------------------------------------------------------------------------------------------------------------------------
# A partir de data frames podemos realizar anÃ¡lises descritivas e exploratÃ³rias de dados
# Este Ã© o primeiro passo para entendermos os dados que estÃ£o na nossa disposiÃ§Ã£o no data.frama atualizado

# Com o uso de vÃ¡rias funÃ§Ãµes podemos realizar a construÃ§Ã£o de um sumÃ¡rio

# AnÃ¡lise do seu data frame
names(UNpop)
nrow(UNpop)
ncol(UNpop)
##dim() combina os resultados colunas e linhas
dim(UNpop)

# VisualizaÃ§Ã£o de valores de vetores especÃ­ficos no Data Frame
UNpop$Variant
UNpop$Time

# Existe uma funÃ§Ã£o de sumÃ¡rio jÃ¡ disponÃ­vel
# Esta funÃ§Ã£o apresenta as principais anÃ¡lises de medidas resumo (posiÃ§Ã£o e dispersÃ£o) que iremos utilizar no primeiro bloco
# do nosso curso
summary(UNpop)

# -------------------------------------------------------------------------------------------------------------------------------
# GrÃ¡fico

# Para apresentar representaÃ§Ãµes grÃ¡ficas no R Ã© necessÃ¡rio instalar pacotes especÃ­ficos 
# Estes pacotes possuem uma sÃ©rie de funÃ§Ãµes, data frame que nÃ³s auxiliarÃ£o nesta atividade

# tidyverse Ã© um pacote de dados que inclui uma sÃ©rie de bibliotecas utilizadas na anÃ¡lise de dados
# ggplot2, dplyr, tidyr, readr, purr, tibble, string, forcats
# Para maiores informaÃ§Ãµes sobre tidy verse, consulte: R for data science -> Chapter 1 (Wickham & Grolemund, 2018)
# Ou consulte: https://www.tidyverse.org/packages/

# Pacotes sÃ£o instalados uma Ãºnica vez no R
# funÃ§Ã£o para instalar pacotes install.packages(input)
# Existem algumas formas de instalar alguns pacotes

install.packages("tidyverse")
# ou
install.packages("ggplot2")

# PorÃ©m, mesmo com o pacote instalado, vocÃª deve avisar ao R qual pacote irÃ¡ utilizar durante o seu trabalho atual
# Assim, sempre Ã© necessÃ¡rio especificar a biblioteca a ser utilizada na presente anÃ¡lise
# A funÃ§Ã£o para selecionar a biblioteca Ã© library(nome da biblioteca)
library(tidyverse)

# Do ponto de vista didÃ¡tico, estamos selecionando a bliblioteca agora
# Na prÃ¡tica, o script comeÃ§a com a  listagem de todas as bibliotecas

# GrÃ¡fico utilizando ggplot
# sintaxe 1

ggplot(data = UNpop)+
  geom_point(mapping = aes(x = Time,y = PopTotal))

# A sintaxe acima plota no canto inferior direito da tela um GrÃ¡fico de 
# pontos sendo o eixo y a populaÃ§Ã£o e o eixo x os anos.

# As sintaxes podem variar, porÃ©m a essencia Ã© sempre a mesma

# grÃ¡fico - sintaxe 2
ggplot(data = UNpop, mapping = aes(x = Time,y = PopTotal))+
  geom_point ()

# GrÃ¡ficos sobrespostos - Ã© possÃ­vel sobrepor todos grÃ¡ficos, neste caso
# estamos apresentando um grÃ¡fico de linha e um de ponto
ggplot(data = UNpop, mapping = aes(x = Time,y = PopTotal))+
  geom_point ()+
  geom_line()

# Algumas opÃ§Ãµes para melhorar os aspectos de apresentaÃ§Ã£o dos grÃ¡ficos
# Para mais ideias consulte: Wickham & Grolemund, 2018 R for data science -> Chapter 1
ggplot(data = UNpop)+
  geom_line (mapping = aes(x = Time,y = PopTotal), color = "blue")+
    xlab("População Mundial") +
    ylab("Anos")

# -------------------------------------------------------------------------------------------------------------------------------
# Finalizando a aula
# No final Ã© possÃ­vel salvar o trabalho que foi realizado em um arquivo RData utilizando a funÃ§Ã£o apresentada

save.image(save.image("C:/Users/bruno/Desktop/R Data (all data)"))

# -------------------------------------------------------------------------------------------------------------------------------
# Calcule a taxa de crescimento da populaÃ§Ã£o entre os anos apresentados no
# data frame e utilizando os conhecimetnos atÃ© 
# entÃ£o aprendidos em R.

# FÃ³rmula da taxa de crescimento:
# Taxa de crescimento (%) = [(PopulaÃ§Ã£o no perÃ­odo t1 - PopulaÃ§Ã£o no 
# perÃ­odo t0)/PopulaÃ§Ã£o no perÃ­odo t0] * 100 

# O livro do Imai apresenta o cÃ¡lculo da taxa de crescimento (em relaÃ§Ã£o ao
# perÃ­odo anterior) utilizando vetores
# A soluÃ§Ã£o Ã© apresentada abaixo:

# SoluÃ§Ã£o Imai
pop.increase <- world.pop[-1] - world.pop[-7]
pop.increase
percent.increase <- (pop.increase / world.pop[-7]) * 100
percent.increase

# VocÃª foi capaz de entender? 
# Pense antes de continuar =)

# O raciocÃ­nio envolve alguns passos:

# 1. O que siginfica os vetores?
world.pop[-1] - world.pop[-7]

# O primeiro termo utilizado refere-se ao vetor world.pop sem o primeiro 
# elemento, utilizando Ã­ndices para fazer isto

# O segundo termo refere-se ao vetor world.pop sem o Ãºltimo elemento: world.pop[-7]
# VocÃª Ã© capaz de responder o que ele calcula neste ponto?


# PopulaÃ§Ã£o de um ano - PopulaÃ§Ã£o do outro ano = Aumento da populaÃ§Ã£o de um ano para outro

# Para chegar na porcentagem: necessÃ¡rio dividir o crescimento absoluto de um ano para outro
percent.increase <- (pop.increase / world.pop[-7]) * 100
percent.increase

#Se ainda nÃ£o estÃ¡ claro, veja a taxa de crescimento calculada de uma forma mais manual
# Ao final volte a soluÃ§Ã£o apresentada pelo Imai

# SoluÃ§Ã£o 2:

# Taxa de crescimento de 1960 -> [(PopulaÃ§Ã£o 1960 - PopulaÃ§Ã£o 1950)/PopulaÃ§Ã£o 1950]*100
# Taxa de crescimento de 1970 -> [(PopulaÃ§Ã£o 1970 - PopulaÃ§Ã£o 1960)/PopulaÃ§Ã£o 1960]*100
# Taxa de crescimento de 1980 -> [(PopulaÃ§Ã£o 1980 - PopulaÃ§Ã£o 1970)/PopulaÃ§Ã£o 1970]*100
# Taxa de crescimento de 1990 -> [(PopulaÃ§Ã£o 1990 - PopulaÃ§Ã£o 1980)/PopulaÃ§Ã£o 1980]*100
# Taxa de crescimento de 2000 -> [(PopulaÃ§Ã£o 2000 - PopulaÃ§Ã£o 1990)/PopulaÃ§Ã£o 1990]*100
# Taxa de crescimento de 2010 -> [(PopulaÃ§Ã£o 2010 - PopulaÃ§Ã£o 2000)/PopulaÃ§Ã£o 2000]*100

# SoluÃ§Ã£o:
tx_cresc_60 <- ((world.pop[2] - world.pop[1]) / world.pop[1])*100
tx_cresc_70 <- ((world.pop[3] - world.pop[2]) / world.pop[2])*100
tx_cresc_80 <- ((world.pop[4] - world.pop[3]) / world.pop[3])*100
tx_cresc_90 <- ((world.pop[5] - world.pop[4]) / world.pop[4])*100
tx_cresc_00 <- ((world.pop[6] - world.pop[5]) / world.pop[5])*100
tx_cresc_10 <- ((world.pop[7] - world.pop[6]) / world.pop[6])*100

percent.increase1 <- c(tx_cresc_60, tx_cresc_70, tx_cresc_80, tx_cresc_90, tx_cresc_00, tx_cresc_10)
percent.increase1

percent.increase

# -----------------------------------------------------------------------------------------------
