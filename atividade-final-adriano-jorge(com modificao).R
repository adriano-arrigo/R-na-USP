library(readr)
library(ggplot2)
library(dplyr)

guerras <- read_csv("guerras.csv")
guerras <- as.data.frame(guerras)
meu <- guerras %>% 
        group_by(pais) %>% 
        distinct(anos) %>% 
        count()


guerras$mortes = log(guerras$mortes)
plot(x = guerras$anos, y = guerras$mortes,
     xlab = "Anos",
     ylab = "Mortes",
     xlim = c(0,8),
     ylim = c(0,15),		
     main = "Duração das guerras (em anos) x mortes",
     panel.first = grid(), 
     col = factor(guerras$pais),
    
     
     )

meu <- guerras %>% 
        group_by(pais) %>% 
        distinct(anos) %>% 
        count()

legend(x = "topleft",
       legend = meu,
        pch = 1,
        bty = "o")







#Fatores (factor) são usados para representar variáveis
#categóricas. As variáveis categóricas podem ser nominais
#(não ordenadas) ou ordinais (ordenadas). "niveis" são as
#as categorias dos fatores
#ref: http://www.lampada.uerj.br/introducaoaor/estruturasbasicas.html

