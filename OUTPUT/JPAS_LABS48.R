

###########################
# LABORATORIO HISTOGRAMAS #
###########################


# Hecho con gusto por la alumna JESSICA PAOLA AGUILAR SERVIN
# V4
# LABORATORIO - Graficos en R con ggplot2 para Ciencia de Datos
# Histogramas en R

#instalando paquete con los datos
install.packages("gapminder")
install.packages("ggplot2")
# Grafica de lineas en R


# cargar libreria ggplot2 y gapminder
library(ggplot2)
library(gapminder)


# cargando datos a entorno
data("gapminder")

# filtrando por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007', ]


# hacer un histograma en ggplot2
ggplot(data=gapminder2007,
       mapping = aes(x=lifeExp))+
  geom_histogram()

# hacer un histograma en ggplot2 con 9 intervalos (bins)
ggplot(data=gapminder2007,
       mapping = aes(x=lifeExp))+
  geom_histogram(bins=9)

# haciendo m?s cosas interesantes
ggplot(data=gapminder2007,
       mapping = aes(x=lifeExp,
                     fill= factor(continent)))+
  geom_histogram(bins=9)

