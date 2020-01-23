######################################TIPOS DE RECTAS ########################################

#Función exponencial -> y = a * 10 ^ (b * x)
#Para ver la relación lineal
#-> log y = log(a*10 ^ (b * x)) = log(a)+bxlog(10) = log(a)+bx


#Función potencial -> y = a * x ^ b 
# log y = log(a * x ^ b) = log(a) + b log(x) 

inhibicion <- c(19,36,60,84)
serotonina <- c(1.2,3.6,12,33)
df_IS <- data.frame(inhibicion,serotonina)
plot(df_IS)
plot(log10(serotonina)) #Podemos observar un comportamiento prácticamente lineal
#plt(df_IS,log="y")
regresionLineal = lm(log10(serotonina)~inhibicion, data = df_IS)
summary(regresionLineal)
#Multiple R Squared -> Coeficiente de correlación o determinación


#GRAFICACIÓN DE UNA DISTRIBUCIÓN NORMAL
x = seq(from=-4, to=4, by=0.01) # recorremos eje x
y = dnorm(x=x) # calculamos las f(x)


plot(x, y, type="l", main="Distribución Normal", 
     xlab="x", ylab="Densidad de la normal", 
     col="red", lwd=3)

#Recursos extras
points(x=c(-4,4), y=c(0,0), type="l") # dibujamos eje X con 2 puntos
# vamos a lanzar 1000 puntos al azar en el recuadro

xx = runif(n=1000, min=-4, max=4) # sus coordenadas X
yy = runif(n=1000, min=0, max=1) # sus coordenadas Y

points(xx, yy) # los pintamos como puntos

dentro = yy < dnorm(xx) # condición "estar dentro de la gráfica"

color= rep("green", 1000) # vector de colores constante
color[dentro] = "red" # cambio a rojo si están dentro

points(xx, yy, col=color) # pinto de nuevo con color





