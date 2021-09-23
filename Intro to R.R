# Intro to R
# Special thanks to Teacher Ariana Ribeiro Costa

# -------------------------------------------------------------------------------------------------------------------------------

# Referência:
# IMAI, K. Quantitative social science: An introduction. Princeton University Press, 2018.
# Capítulo 1 - Item 1.3

# -------------------------------------------------------------------------------------------------------------------------------

# Apresentação do R Studio
# Editor -> canto superior esquerdo
# Console -> canto inferior esquerdo
# Environment -> canto superior direito
# Saída -> canto inferior direito 

# -------------------------------------------------------------------------------------------------------------------------------
# Funções aritméticas

# Com o software R é possível realizar funções aritméticas diretamente no Console
# Assim, você pode digitar suas operações diretamente como se estivesse utilizando uma calculadora

5 + 3

5 - 3

5 / 3

5 ^ 3

5 * (10 - 3)

sqrt(4)

# -------------------------------------------------------------------------------------------------------------------------------
# Objetos

# O software R guarda informações como objetos com o nome de sua escolha
# Utilize nomes intuitivos e informativos para que você lembre do que se trata seu objeto

# Regras básicas: nome de objetos não devem começar com números e nem conter espaços
# O quadro no canto superior direito (Environment) apresenta os objetivos criados no seu projeto

# Esta é a forma mais simples de colocar dados no R
# utilize o caracter <- para atribuir valores ao seu objeto

result <- 5 + 3

# Visualizando o valor atribuído ao objeto: escrevendo o nome do objeto ou com a função print

result
print(result)

# Se atribuirmos diferentes valores para o mesmo objeto, o valor do objeto será o último a ser inserido
# Ou seja, os obejtos são sobrescritos

result <- 5 - 3

result

print(result)

# Sintaxe do objeto
# O nome do objeto deve ser digitado de forma idêntica - existe a diferenciação entre letras maiúsculas e minúsculas

Result

# Comece a interpretar os erros: object 'Result' not found -> confira no Environment os nomes dos objetos criados


# Até o momento, os valores atríbuidos aos objetos foram variáveis numéricas

# Os valores inseridos também podem ser texto (string) 
# Utiliza-se " " (aspas duplas) para sinalizar que o valor a ser atribuído é um texto

eu <- "bruno"
otto <- "bobao"

eu

otto

bruno <- "aluno da FGV-RI"

bruno

# É possível atribuir valores numéricos como uma string

Result <- "5"

Result

# Não é possível realizar funções aritméticas com strings

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

# Dados podem ser atribuídos a um vetor
# Um vetor ou uma matriz unidimensional simplesmente representa uma coleção 
# de informações armazenadas em uma ordem específica.

# Para isto utilizados uma função concatenar
# Para atribuir um vetor de dados que contém múltiplos valores utilizamos vírgulas para separar diferentes elementos

# Utiliza-se a função c() 
# c é a abrevisção da função concatenar

# Insere os valores da População Mundial em mil habitantes
world.pop <- c(2525779, 3026003, 3691173, 4449049, 5320817, 6127700, 6916183)
world.pop

# Podemos utilizar a função c() várias formas, lembre-se que a ordem é importante
# concatenar

pop.first <- c(2525779, 3026003, 3691173)

pop.second <- c(4449049, 5320817, 6127700, 6916183)

pop.all <- c(pop.first, pop.second)

pop.all

# Podemos apresentar elementos específicos do vetor utilizando colchetes [] ,chamados de indexes

# Exibe os índices escolhidos entre colchetes

world.pop[2]

world.pop[c(2, 4)]

world.pop[c(4, 2)]

# Também é possível remover elementos na hora da visualização do vetor

# Neste caso, não exibe o elemento 3
world.pop[c(-3)]

# Podemos realizar operações aritméticas com os vetores

# Exemplo: mudanças em todas as variáveis de um vetor
# Os dados de população foram inseridos no vetor world.pop em mil habitantes
# Para transformar os dados em milhões de habitantes iremos dividir todo o vetor por 1000

pop.million <- world.pop / 1000

pop.million

# Exemplo: cálculo da taxa de crescimento da população com ano-base de 1950
# A taxa de crescimento é calculada dividindo o valor atribuído a população mundial pelo valor do ano base
# Ano base: 1950 -> é o primeiro elemento do vetor world.pop

pop.rate <- world.pop / world.pop[1]

pop.rate

# Funções
# As funções geram resultados (outputs) específicos a partir de determinadas entradas (inputs)
# Algumas funções já foram apresentadas: sqrt(), print(), class(), c()

# Sintaxe padrão -> funcname(input)

# Extensão do vetor
length(world.pop)

# Valor mínimo
min(world.pop)

# Valor máximo
max(world.pop)

# Faixa 
range(world.pop)

#Média
mean(world.pop)

# Média : soma dos elementos do vetor/extensão do vetor
sum(world.pop) / length(world.pop)

# Funções podem possuir mais um argumento

# Na sixtaxe da função é importante definir a ordem
# funcname(input1,input2)
# funcname(input2,input1)

# Também é possivel especificar um nome para os argumentos
# funcname(arg1 = input1, arg2 = input2).

# Na prática - até então apenas inserimos os valores da população mundial em mil habitantes no vetor world.pop
# Vamos inserir os anos como label deste vetor

# 1 passo
# Gerar um sequência de anos

# Exemplo básico de sequência
# Função seq()

year <- seq(from = 1950, to = 2010, by = 10)
year

# exemplo 2 para a criação de sequência
year2 <- seq(from = 1960, to = 2010, by = 10)
year2

# Possível alterar valores pelos índices
year2 [c(1, 2)] <- c(1959, 1969)
year2

# Sequência sem vetores, com intervalos específicos
seq(to = 2010, by = 10, from = 1950)
seq(from = 2010, to = 1950, by = -10)

# Sequência simples de 1 em 1
2008:2012

2012:2008

# Voltando ao exemplo:
# Vamos nomear os dados atribuídos ao vetor world.pop

# o vetor ainda não foi nomeado - resposta NULL
names(world.pop)

names(world.pop) <- year

world.pop
# -------------------------------------------------------------------------------------------------------------------------------
# Até então inserimos dados de forma manual
# Na prática utilizamos arquivos de dados quantitativos para fazer nossas análises: chamados de data frame
# Software R -> arquivos .csv ou dataR
# são dados que devem estar apresentados na diposição de uma planilha

# Opção 1
# Inserir data frame pelo console do R
# Necessário verificar em qual dirtetório o R está acessando os seus arquivos
# Utiliza e função getwd() para visualiza qual o diretório atual
# o padrão do diretório do R é a pasta Documentos do Windows:  "C:/Users/Ariana/Documents"

getwd()

# Seu arquivo .csv ou .dataR deve ser neste diretório, caso contário o R não irá acessar
# Caso seja necessário mudar o diretório utilize a função setwd() especificando o endereço do seu computador
# que o R deverá acessar
# Para copiar o endereço do diretório no seu computador utilize o Explorer/Finder e clique na aba superior em qua específica, 
# uma segunda opção é clicar com o botão esquerdo no arquivo, ir em propriedades e em seguida copiar o endereço
# disponível em localização

setwd("C:/Users/bruno/Desktop/R Data (all data)")

# Leitura do arquivo.csv
# Utilize a função abaixo para carregar o arquivo de dados no RStudio
# O arquivo deve estar disponibilizado na pasta especificada em setwd() e ter o nome igual ao input da função read.csv

UNpop <- read.csv("UNpop.csv")

class(UNpop)

# Visualiza e abre uma nova aba
View(UNpop)

# Opção 2
# A opção Import Dataset no Environment também pode ser utilizada.
# No enviroment (canto direito e superior da tela), clique em "Import Dataset" 
# Busque a base no seu computador, selecione o arquivo .csv e em seguida clique em "Open"
# Abrirá uma tela de importação: caso os dados estejam devidamente carregados, clique em Import.
# O data frama deve aparecer no seu Enviroment

# -------------------------------------------------------------------------------------------------------------------------------
# A partir de data frames podemos realizar análises descritivas e exploratórias de dados
# Este é o primeiro passo para entendermos os dados que estão na nossa disposição no data.frama atualizado

# Com o uso de várias funções podemos realizar a construção de um sumário

# Análise do seu data frame
names(UNpop)
nrow(UNpop)
ncol(UNpop)
##dim() combina os resultados colunas e linhas
dim(UNpop)

# Visualização de valores de vetores específicos no Data Frame
UNpop$Variant
UNpop$Time

# Existe uma função de sumário já disponível
# Esta função apresenta as principais análises de medidas resumo (posição e dispersão) que iremos utilizar no primeiro bloco
# do nosso curso
summary(UNpop)

# -------------------------------------------------------------------------------------------------------------------------------
# Gráfico

# Para apresentar representações gráficas no R é necessário instalar pacotes específicos 
# Estes pacotes possuem uma série de funções, data frame que nós auxiliarão nesta atividade

# tidyverse é um pacote de dados que inclui uma série de bibliotecas utilizadas na análise de dados
# ggplot2, dplyr, tidyr, readr, purr, tibble, string, forcats
# Para maiores informações sobre tidy verse, consulte: R for data science -> Chapter 1 (Wickham & Grolemund, 2018)
# Ou consulte: https://www.tidyverse.org/packages/

# Pacotes são instalados uma única vez no R
# função para instalar pacotes install.packages(input)
# Existem algumas formas de instalar alguns pacotes

install.packages("tidyverse")
install.packages("ggplot2")

# Porém, mesmo com o pacote instalado, você deve avisar ao R qual pacote irá utilizar durante o seu trabalho atual
# Assim, sempre é necessário especificar a biblioteca a ser utilizada na presente análise
# A função para selecionar a biblioteca é library(nome da biblioteca)
library(tidyverse)

# Do ponto de vista didático, estamos selecionando a bliblioteca agora
# Na prática, o script começa com a  listagem de todas as bibliotecas

# Gráfico utilizando ggplot
# sintaxe 1

ggplot(data = UNpop)+
  geom_point(mapping = aes(x = Time,y = PopTotal))

# A sintaxe acima plota no canto inferior direito da tela um Gráfico de pontos sendo o eixo x a população e o eixo y os anos.

# As sintaxes podem variar, porém a essencia é sempre a mesma

# gráfico - sintaxe 2
ggplot(data = UNpop, mapping = aes(x = Time,y = PopTotal))+
  geom_point ()

# Gráficos sobrespostos - é possível sobrepor todos gráficos, neste caso estamos apresentando um gráfico de linha e um de ponto
ggplot(data = UNpop, mapping = aes(x = Time,y = PopTotal))+
  geom_point ()+
  geom_line()

# Algumas opções para melhorar os aspectos de apresentação dos gráficos
# Para mais ideias consulte: Wickham & Grolemund, 2018 R for data science -> Chapter 1
ggplot(data = UNpop)+
  geom_line (mapping = aes(x = Time,y = PopTotal), color = "blue")+
    xlab("Popula��o Mundial") +
    ylab("Anos")

# -------------------------------------------------------------------------------------------------------------------------------
# Finalizando a aula
# No final é possível salvar o trabalho que foi realizado em um arquivo RData utilizando a função apresentada

save.image(save.image("C:/Users/bruno/Desktop/R Data (all data)"))

# -------------------------------------------------------------------------------------------------------------------------------
# Calcule a taxa de crescimento da população entre os anos apresentados no data frame e utilizando os conhecimetnos até 
# então aprendidos em R.

# Fórmula da taxa de crescimento:
# Taxa de crescimento (%) = [(População no período t1 - População no período t0)/População no período t0] * 100 

# O livro do Imai apresenta o cálculo da taxa de crescimento (em relação ao período anterior) utilizando vetores
# A solução é apresentada abaixo:

# Solução Imai
pop.increase <- world.pop[-1] - world.pop[-7]
pop.increase
percent.increase <- (pop.increase / world.pop[-7]) * 100
percent.increase

# Você foi capaz de entender? 
# Pense antes de continuar =)

# O raciocínio envolve alguns passos:

# 1. O que siginfica os vetores?
world.pop[-1] - world.pop[-7]

# O primeiro termo utilizado refere-se ao vetor world.pop sem o primeiro elemento, utilizando índices para fazer isto
# O segundo termo refere-se ao vetor world.pop sem o último elemento: world.pop[-7]
# Você é capaz de responder o que ele calcula neste ponto?


# População de um ano - População do outro ano = Aumento da população de um ano para outro

# Para chegar na porcentagem: necessário dividir o crescimento absoluto de um ano para outro
percent.increase <- (pop.increase / world.pop[-7]) * 100
percent.increase

#Se ainda não está claro, veja a taxa de crescimento calculada de uma forma mais manual
# Ao final volte a solução apresentada pelo Imai

# Solução 2:

# Taxa de crescimento de 1960 -> [(População 1960 - População 1950)/População 1950]*100
# Taxa de crescimento de 1970 -> [(População 1970 - População 1960)/População 1960]*100
# Taxa de crescimento de 1980 -> [(População 1980 - População 1970)/População 1970]*100
# Taxa de crescimento de 1990 -> [(População 1990 - População 1980)/População 1980]*100
# Taxa de crescimento de 2000 -> [(População 2000 - População 1990)/População 1990]*100
# Taxa de crescimento de 2010 -> [(População 2010 - População 2000)/População 2000]*100

# Solução:
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
