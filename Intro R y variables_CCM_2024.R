
# Introducción a RStudio
# Escuela de verano de Biomatematicas
# Mayra Fragoso-Medina
# Integrante de R-ladies Morelia
# 29 de julio de 2024

# Hay dos formas principales en que uno puede trabajar dentro de RStudio.

# 1. Probar y jugar dentro de la consola interactiva de R y luego copiar el código en un archivo .R para ejecutarlo más tarde.
# 2. Comienza a escribir un archivo en .R 

# USAR R COMO CALCULADORA 

# Cuando usas R como calculadora, el orden de las operaciones es el mismo que has aprendido en la escuela.

3 + 5 * 2
  
#Usa paréntesis para agrupar las operaciones a fin de forzar el orden de la evaluación.

(3 + 5) * 2

# Esto puede ser difícil de manejar cuando no es necesario, pero aclara tus intenciones. 
# Recuerda que otros pueden leer tu código.

(3 + (5 * (2 ^ 2))) # difícil de leer
3 + 5 * 2 ^ 2       # claro, si recuerdas las reglas
3 + 5 * (2 ^ 2)     # si olvidas algunas reglas, esto podría ayudar

# Los números pequeños o grandes tienen una notación científica:

4/10000

5e3

# FUNCIONES MATEMÁTICAS

# R tiene muchas funciones matemáticas integradas. 
# Para llamar a una función, simplemente escribimos su nombre seguido de paréntesis ( ). 
# Todo lo que escribas dentro de los paréntesis se llaman argumentos de la función:

sin(1)  # función trigonométrica

log(1)  # logaritmo natural

log10(10) # logaritmo en base-10

exp(0.5) # e^(1/2)

# ¿Olvidaste el nombre de la función?
# Puedes buscarlas en Google, o si puedes recordar el comienzo del nombre de la función, 
# usa el tabulador para completar su nombre en RStudio.

?exp

# COMPARANDO

1 == 1  # igualdad (observa dos signos iguales, se lee como "es igual a")

1 != 2  # desigualdad (leída como "no es igual a")

1 < 2  # menor que

1 > 0  # mayor que

1 >= -9 # mayor o igual que

# VARIABLES Y ASIGNACIONES

# Podemos almacenar valores en variables usando el operador de asignación <-

x <- 1/40

x

# Esta variable ya aparece en nuestro ambiente y podemos hacer cálculos con ella

log(x)

# Las variables pueden reasignarse

x <- 100

# Los valores de asignación pueden contener la variable asignada

x <- x + 1 
y <- x * 2

# Los nombres de las variables pueden contener letras, números, guiones bajos y puntos. 
# No pueden comenzar con un número ni contener espacios en absoluto

# DESAFÍO 1

# VECTORIZACIÓN

#R es vectorizado, es decir, variables y funciones pueden tener vectores como valores y 
#R puede operar en vectores completos a la vez

1:5

2^(1:5)

x <- 1:5
2^x

# ADMINISTRANDO TU ENTORNO 

# listará todas las variables y funciones almacenadas en el entorno global

ls()

# rm para eliminar objetos que ya no necesitamos

rm (x)

# Si tienes muchas cosas en tu entorno y deseas borrarlas todas, 
# puedes pasar los resultados de ls y mandarlos a la función rm

rm(list = ls())

# En este caso, hemos combinado los dos. 
# Al igual que el orden de las operaciones, todo lo que se encuentre dentro de los paréntesis más internos se evalúa primero, y así sucesivamente.

# Si, en cambio, usamos <-, habrá efectos secundarios no deseados, o puedes recibir un mensaje de error

rm(list <- ls())

# ¡R te dará pistas de cómo solucionar el error!


# PAQUETES EN R

# Es posible agregar funciones a R escribiendo un paquete u obteniendo un paquete escrito por otra persona. 
# Hay más de 10.000 paquetes disponibles en CRAN (la red completa de archivos R)

installed.packages() # ver qué paquetes están instalados

install.packages("nombre_de_paquete") 

update.packages() # Actualizar paquetes ya instalados

remove.packages("nombre_de_paquete")


