#Descargar paquete de mtcard
#install.packages("mtcards")
#Método para leer datasets df <- read.csv("file.csv") o read.table("file.txt")

#Para ver la estructura del dataset
str(mtcars)

#factor -> Valor categórico -> Cadenas o strings
#Tipos de datos 
# int -> Enteros y num -> flotantes -> reales

#Poner ?mtcars para ver información del dataset

#Cómo podemos ver "vs" y "am" no es exactamente númerica sino booleana 0 y 1

#Transformar datos
class(mtcars$vs)#Acceder a columna  con $
mtcars$vs = as.logical(mtcars$vs)
mtcars$am = as.logical(mtcars$am)

#visualización del tipo de datos
str(mtcars)

summary(mtcars)
#Visualizar que el peso de los carros está en libras 

#LO manejaremos como variable
wtAux <- (mtcars$wt*1000)/2.2 #Para kilos 
wtAux  #No lo hemos cambiado en el dataset

mtcars.new <- transform(mtcars,wt=wtAux)
mtcars.new

#Mostar ahora la información de orange
#Paso mortal -> Mencionar que tiene header
str(orangeec)

#Checa que tiene mediana, mediana, cuartiles, valor max y min
summary(orangeec)








