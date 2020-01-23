#Números complejos

#forma -> a +bi
3 + 2.3i

#Si es más especial el número 
3 + sqrt(3)i

#Función compleja
complex(real=3, imaginary = sqrt(2))

#Aplicación real 
sqrt(2+3i)
sqrt(-2)

z = as.complex(-2)
sqrt(z)

#Operaciones

(2+3i)/(1i)

(13)*(2+12i)

#Obtener elemento de los números complejos

#Parte real e imaginaria  a y b
#Conjugado ->  a - bi
#Módulo    -> |z| = sqrt(a*a + b*b)
#Argumento -> ángulo entre a y la recta 
z <- 2 + 3i
Conj(z)
Mod(z)
Arg(z)# En radianes -> Grados * 180/3.141592


#Un pequeño espacio para aprender cosas convenientes :D


#Declaración de funciones 
area.rectangulo<-function(base,altura){
  return(base*altura)
}
area.rectangulo(3,4)








