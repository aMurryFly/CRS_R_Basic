################# BOX PLOT

# Primer cuartil: es la línea inferior.
# Segundo cuartil o Mediana: es la línea que se encuentra dentro de la caja.
# Tercer cuartil: es la línea superior.

#Mínimo: la extensión inferior de la caja.
#Máximo: la extensión superior de la caja.

##Boxplots integrados en R

boxplot(mtcars$hp, ylab="HP", main = "HP vs Carros")

##Usando ggplot 
#Error debido a que esto es para visualizar variable categórica vs datos
ggplot(mtcars, aes(x=cyl,y=hp,fill=cyl))+
  geom_boxplot()+
  labs(x="cilindros",y="HP", title = "HP vs Cilindros")
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),panel.grid.minor = element_blank())

#Tenemos que visualizarlo como etiquetas los cilindros 
ggplot(mtcars, aes(x=as.factor(cyl),y=hp,fill=cyl))+
    geom_boxplot(alpha=0.6)+ #Después escribir el alfa
    labs(x="cilindros",y="HP", title = "HP vs Cilindros")
    theme(legend.position = "none") +
    theme(panel.background = element_blank(),panel.grid.major = element_blank(),panel.grid.minor = element_blank())
  
#Recordemos que mientras más desviados los datos -> las cajas son más grandes
ggplot(mtcars, aes(x=as.factor(cyl),y=hp,fill=cyl))+
    geom_boxplot(alpha=0.6)+ #Después escribir el alfa
    labs(x="cilindros",y="HP", title = "HP vs Cilindros")
    theme(legend.position = "none") +
    theme(panel.background = element_blank(),panel.grid.major = element_blank(),panel.grid.minor = element_blank())

#  Tener cuidado respecto a que tipo de dato tenemos
ggplot(mtcars, aes(x=as.factor(am),y=mpg,fill=am))+
    geom_boxplot()+ 
    labs(x="Tipo de Caja",y="Millas por galon", title = "Millas-galon vs caja")
    theme(legend.position = "none") +
    theme(panel.background = element_blank(),panel.grid.major = element_blank(),panel.grid.minor = element_blank())

#Al final checar barplot 
barplot(mtcars$mpg,ylab="Frecuencia en los carros", main="Diagrama de barras")    

#Póligono de frecuencia -> Gráficas de puntos
dotchart(mtcars$mpg, labels = mtcars$model, main="Poligono de frecuencia")

#Gráfica de pastel 
pie(mtcars$mpg,  col= rainbow(40),main = "Gráfica de pastel")
  




    
    
    
    
    
    
    
    
    
    
    





