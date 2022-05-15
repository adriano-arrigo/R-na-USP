library(readr)
library(ggplot2)

guerras <- read_csv("guerras.csv")
guerras <- as.data.frame(guerras)


guerras$mortes = log(guerras$mortes)
plot(x = guerras$anos, y = guerras$mortes,
     xlab = "Anos",
     ylab = "Mortes",
     xlim = c(0,8),
     ylim = c(0,15),		
     main = "Duração das guerras (em anos) x mortes",
     panel.first = grid(), col = factor(guerras$pais))

