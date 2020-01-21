#Manejo del dataset mediante operadores de comparación
#  igual  =
# != diferente
# %in% que esté en el dataset

#Los corchetes es para hacer referencia a un subconjunto de un dataset
#Poner coma
mtcars[mtcars$cyl<6,]
mtcars[mtcars$hp>=100,]

mtcars[mtcars$cyl<6 & mtcars$hp<100,]

#Crear un subset -> Donde abir una Startup de Software
#Mostrar espués para que sirve el select -> #Country
newOrangeData <- subset(orangeec, Internet.penetration...population > 80
                        & Education.invest...GDP >= 4.5,
                        select = Creat.Ind...GDP
                        )
newOrangeData

#Instalar plyr para cambiar datasets
# install.packages("plyr")
#Mostrar apartado de Packages :D

#Cambia sólo en el dataset virtual no en el original
rename(orangeec,c("Creat.Ind...GDP"="VarEcNar"))








