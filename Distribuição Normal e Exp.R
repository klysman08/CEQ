
# Questão 3

# A.3

set.seed(5462) #Necessario para gerar numeros aleatorios para assim não viciar minhas amostras

x = integer(100) #Gera um array com 100 posições iguais a zero

for ( i in 1:100 ){
  
  x[i] = mean(rnorm( n = 30, mean = 200, sd = 5)) # Gera uma amostra de tamanho 30 de media 200 desvio 5 para assim no rnorm gerar amostras aleatorias da normal ( me fornece 30 valores). Para então retirar a media desses 30 valores e armazenar no meu vetor   
  
}

x2 = dnorm(x = x, mean = 200, sd = 5)
hist(x)

# A.1 De fato o histograma tem forma aproximadamente simetrica
# A.2 Sim, por ter formato de sino ( distribuição normal)

mean(x) #Media das médias
sd(x) #Desvio padrão

summary(x) #Resumo da distribuição dos meus dados

resumoX = summary(x)
resumoX["Sd"] = sd(x) #Adciona o parametro sd no summary

# A.3 Valores proximos da media. Tendo uma distribuição normal "achatada". A maioria dos valores estão centradas proximas do 200, com uma variacao de 0.8764



##########################################################################
##########################################################################

# B

y = integer(100) #Gera um array com 100 posições iguais a zero

for ( i in 1:100 ){
  
  y[i] = mean(rexp( n = 5, rate = 4)) # Gera uma amostra de tamanho 5 com lambda 4 
  
}

hist(y)

mean(y) #Media das médias
sd(y) #Desvio padrão

summary(y) #Resumo da distribuição dos meus dados

resumoY = summary(y)
resumoY["Sd"] = sd(y) #Adciona o parametro sd no summary

# B.2 Não é semelhante a uma normal

# B.3 
#A media da exponenciaal é 1/lambda. Logo a media da distribuição 0,25.
# Com base no summary(y) a media foi proxima da media verdadeira.

##########################################################################
##########################################################################

# C

# Para tamanhos maiores de amostras, melhor será a descrição da distribuição exponencial 

z = integer(100) #Gera um array com 100 posições iguais a zero

for ( i in 1:100 ){
  
  z[i] = mean(rexp( n = 200, rate = 4)) # Gera uma amostra de tamanho 200 com lambda 4 
  
}

hist(z)

mean(z) #Media das médias
sd(z) #Desvio padrão

summary(z) #Resumo da distribuição dos meus dados

resumoZ = summary(y)
resumoZ["Sd"] = sd(y) #Adciona o parametro sd no summary

# C.2 Ainda não é simetrica mas a medida que se aumenta o tamanho das amostras o histograma tende a se apreximar da normal.

# C.3 
#A media da exponenciaal é 1/lambda. Logo a media da distribuição 0,25.
# Com base no summary(y) a media foi proxima da media verdadeira.

##########################################################################
##########################################################################

# D


# Com base nas observações nota-se que a medida que se aumenta o tamanho das amostras o histograma tende a seguir uma normal baseado no teorema central do limite. 
# Mas mesmo aumentando n para 200, o histograma não ficou exatamente simetrico, ainda que tenhamos notado uma tentendia em se ajustar ao formato da normal.
# No summary, observamos que a media das medias se aproximou consideravelmente da média verdadeira da exponencial.