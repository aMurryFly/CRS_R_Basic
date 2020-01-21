#Manejo de variables
getwd()#Para saber donde está nuestro archivo

#Selecionar todo el code o coontrol + alt +r
x <- 86
x

#MEncionar cómo escribir varialbes y cómo no escribirlas

numero_dos = 2
numero-tres = 3
#numero cuatro = 4 #Mandará error
numero.5 = 5
numeroSeis = 6
#7.numero = 7 #No puede empezar con número
#_8 = 9 #No puede empezar con guión bajo
.9 = 9
num_10 = 10
once = "once"

#Formas de utilizar variables
examen0 <- .4
examen1 <- .4
tareas <- .1
asiste <- .1

#calificaciones obtenidas

alfexamen1 = 8
alfexamen2 = 10
alftareas = 0
alfasisten = 10

#Modelo para calificación total
#parametro = valorApartado * resultaObte
#suma(parametros)

parExam1= examen0 * alfexamen1
parExam2= examen1 * alfexamen2
parTareas= tareas * alftareas
parAsis= asiste * alfasisten
total = sum(parExam1, parExam2, parTareas, parAsis) 
total









