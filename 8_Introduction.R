#EDA -> Explaratory Data Analysis
#Es visualizar e interpretar datos antes de usar modelos estadísticos

#El cuarteto de Anscome -> Concepto relacionado con el hecho de visualizar antes de analizar

#Estadística Descriptiva  

#1) Histograma: Sirve para ver la distribución de las frecuencias de una variable, no es una gráfica de barras.

# Diferencias: El orden en x es ascendente, barras juntas no separadas

#2) Gráfica de dispersión - Scatter plot: Los ejes solamente pueden ser valores numéricos y los puntos no se pueden unir.

#3) Box plot: Nos muestra elementos como el mínimo, el máximo, el primer cuartil, la mediana o segundo cuartil y el tercer cuartil.

################# Scatter Plot -Gráficas de dispersión

#Sin usar bibliotecas externas
#plot(variable_ejeY ~ variable_ejeX , xlab=”etiqueta_ejeX” , ylab = “etiqueta_ejeY”, main=”Titulo”)

plot(mtcars$mpg ~ mtcars$cyl,
     xlab="cilindros", ylab="Millas/galon",
     main="Relación Cilindros vs Millas/galon"
     )

plot(mtcars$mpg ~ mtcars$hp,
     xlab="cilindros", ylab="HP",
     main="Relación Cilindros vs HP"
)

plot(orangeec$GDP.PC ~ orangeec$Education.invest...GDP,
     xlab="Desempleo", ylab="Educación",
     main="Desemplo vs Educacion")


################# Histogramas
#Sin usar bibliotecas externas

#Función principal o tradicional

hist(mtcars$hp, 
     main="Histogram de HP", 
     xlab="HP", 
     border="blue", 
     col="green",
     breaks = 20)#Breaks es para separaciones

#Tenemos que instalar -> install.packages(“ggplot2”)
qplot(mtcars$hp,
      geom="histogram",
      xlab="HP",
      main="Carros con base a los caballos de fuerza")
#modificar el ancho con bins

       
#Tercera opción

ggplot(mtcars,aes(x=hp))+
  geom_histogram(binwidth = 30)+
  labs(x="HP",y="Cantidad de Carros", title="HP vs Cnt Carros")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
#Escribir después el bin

#Forma distinta de usar ggplot

ggplot()+geom_histogram(data=mtcars,aes(x=hp),fill="blue",color="red",binwidth = 20)+
  labs(x="HP",y="Cantidad de Carros", title="HP vs Cnt Carros")+xlim(c(80,280))+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


####################Ejercicios

#GDP PC
ggplot()+geom_histogram(data=orangeec,aes(x=GDP.PC),fill="blue",color="red",binwidth = 2000)+
  labs(x="GDP:PC",y="Cantidad Paises", title="PIB vs Cnt Paises")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#Creat.Ind...GDP
ggplot()+geom_histogram(data=orangeec,aes(x=Creat.Ind...GDP),fill="blue",color="red",binwidth = 1)+
  labs(x="Creat.Ind...GDP",y="Cantidad Paises", title="PIB vs Cnt Paises")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot() +
  geom_histogram(data=orangeec,aes(x=Internet.penetration...population),fill="red",color="yellow",binwidth = 5)  + 
  labs(x="penetración de internet", y="cantidad de paises",title="PI vs LATAM Countries ") +
  xlim(30,100) + # numeramos del 30% al 100% 
  ylim(0,4) + # ponemos en el eje Y valores del 0 al 4
  scale_x_continuous(breaks = seq(40,100,by=5)) + # le colocamos valores a cada barras (que van del 30% al 100%) cada 5%
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),panel.grid.minor = element_blank())










