#Matrices vs Dataframe 

#Matriz tiene el mismo tipo de datos 
#DataFrame tiene distintos tipos de datos 

#Recordar que es una Matriz transpuesta 
arr1 <- c(1:5)
arr2 <- seq(4,8, by=1)
#arre2
ejemMatriz <- matrix(c(arr1,arr2),nrow = 2,byrow=TRUE)
ejemMatriz

dias <- c("Lunes","Martes","Miércoles","Jueves","Viernes")#Header o nombres columnas
rowName <- c("Arre1","Arre2")

#Métodos parameter datos
colnames(ejemMatriz)<-dias
rownames(ejemMatriz)<-rowName
ejemMatriz

#Sumar valores de las columnas
colSums(ejemMatriz)

#Agregar una fila

finalMatrix <- rbind(ejemMatriz,c(10,15,20,25,30))
finalMatrix

#Ejercicio matriz -> Agregar otra columna y complementar la etiqueta de la fila extra

exe1 <- cbind(finalMatrix,c(1,2,3))
dias <- c("Lunes","Martes","Miércoles","Jueves","Viernes","Sábado")#Header o nombres columnas
rowName <- c("Arre1","Arre2","Extra1")
colnames(exe1)<-dias
rownames(exe1)<-rowName 
exe1

#Visualizar información
#Recordemos que empieza desde el cero el arreglo
exe1[1,5]



#Otro ejemplo


vec1 <- c(1:6)
vec2 <- seq(4,9, by=1)
vec3 <- c(6:11)

ejemMatriz <- matrix(c(vec1,vec2,vec3),nrow = 3,byrow=TRUE)
ejemMatriz
dias <- c("Lunes","Martes","Miércoles","Jueves","Viernes","Sábado")
rowName <- c("Alf","Edu","Mario")
colnames(ejemMatriz)<-dias
rownames(ejemMatriz)<-rowName 
ejemMatriz




