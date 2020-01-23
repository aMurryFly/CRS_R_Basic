#Modificar un dataset

economy <- mean(orangeec$GDP.PC)
economy

#Es la forma de validar datos dentro de un dataset

orangeec <- orangeec %>% mutate(StrongEcon = ifelse(GDP.PC < economy, 
                             "Debajo de la media del PIB-PC", #If
                             "Arriba de la media del PIB-PC"   #Else
                             ))

ggplot(orangeec,aes(x=Strong_economy,
                    y=Creat.Ind...GDP, 
                    fill=Strong_economy))+ 
  geom_boxplot(alpha=0.4)+
  labs(x="Tipo de país",
       y="Aporte economía naranja al PIB",
       title = "Aporte economía naranja en pib países latam con alto y bajo PIb per cápita")+
  theme(legend.position="none")+
  theme(panel.background=element_rect(fill="white",colour="brown",size = 2,linetype = "solid"),
        panel.grid.major=element_line(size = 0.25, linetype = 'solid',colour = "red"), 
        panel.grid.minor = element_line(size = 0.25, linetype = 'solid',colour = "red"))

#ScatterPlot o diagrama de dispersión con ggplot

ggplot(mtcars,aes(hp,mpg))+
  geom_point()+
  labs(x="HP", y="MPG", title="Relación HP vs MPG")+
  theme(legend.position="none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank())

#Visualizar la relación entre peso y potencia 
ggplot(mtcars,aes(wt,hp))+
  geom_point()+
  labs(x="wt", y="hp", title="Relación HP vs wt")+
  theme(legend.position="none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank())

#Otra gráfica -> Con 4 variables

#Nota el am <- no guardé el cambiar de variable numérica a categórica
ggplot(mtcars,aes(hp,qsec))+
  geom_point(aes(color=am, size=cyl))+
  labs(x="Caballos de fuerza ", y="Tiempo en 1/4 millas", title="Caballo velocidad segun cilindraje y tipo de caja")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank())

class(mtcars$vs)#Acceder a columna  con $
#mtcars$vs = as.logical(mtcars$vs)
#mtcars$am = as.logical(mtcars$am)

#visualización del tipo de datos
#str(mtcars)
#Agregar la gráfica


#CHECAR SITIO WEB PARA GRÁFICAS


#####################EJERCICIO FINAL DE EDA CON R

#4 varialbes  
#x= Inversión de pib
#y = desempleo 
#color = strong economy , 
#tamaño = porcentaje por debajo de la pobreza

ggplot(orangeec, aes(orangeec$Education.invest...GDP,orangeec$Unemployment))+
  geom_point(aes(color=factor(orangeec$Strong_economy), size=orangeec$X..pop.below.poverty.line))+
  labs(x="Inversión en educación respecto pib%",y="Tasa de desempleo(%)",
       title="Relación inversión en educación y desempleo
       según economía y población por debajo de línea de pobreza")


##############FUNCIONES CONVENIENTES 

mean(mtcars$hp)
median(mtcars$hp)
sd(mtcars$hp)
var(mtcars$hp)
max(mtcars$hp)
min(mtcars$hp)

length(mtcars$hp) 
class(mtcars$hp)

#Selección y manejo de datos again

conAux1 <- mtcars$hp >= 123
conAux1

vectAux <- mtcars$hp[conAux1]

sortDatHP <- sort(vectAux)
sortDatHP

#Funciones trigonométricas

x <- seq(0,2*pi,length=100)
plot(cos(x))
plot(x,cos(x))






















