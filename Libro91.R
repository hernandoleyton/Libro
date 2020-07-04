load("seleccion_CEP.RData")
names(CEP81)#Define las variables que estan en la base de datos
dim(CEP81)#Tamaño de la base de Datos (Filas Columnas)
summary(CEP81)#Descriptivos de los Datos
table(CEP81$sexo)#Descripción de una variable en especifica
class(CEP81$sexo)#Tipo de Variable
summary(CEP81$satisfaccion_vida)#Estadisticos Descriptivos
install.packages("modeest")#Paquete para Estadistica Univariada
library(modeest)
quantile(CEP81$satisfaccion_chilenos, prob = c(0.25, 0.5, 0.75), na.rm = TRUE)#Cuartiles
mfv(CEP81$edad) #Indica el o los valores con más frecuencia
range(CEP81$edad, na.rm = TRUE)#Valores Maximo y Minimo de la variable edad
var(CEP81$satisfaccion_chilenos, na.rm = TRUE)#Varianza
sd(CEP81$satisfaccion_chilenos, na.rm = TRUE)#Desviacion estandar
sd(CEP81$edad)/mean(CEP81$edad)#Operacion
install.packages("FinCal")#Paquete para Estadistica Univariada
library(FinCal)
coefficient.variation(sd=sd(CEP81$edad), avg = mean(CEP81$edad))#Coeficiente de Variacion
summary(CEP81$satisfaccion_vida)#Estadisticos Variable satisfaccion
#Guardar summary como objeto
descriptivos <- summary(CEP81$satisfaccion_vida)
#Ver nombres y valores del objeto
names(descriptivos)
as.numeric(descriptivos)
#Configurar como matriz de datos
descr_sat_vida <- as.data.frame(rbind(names(descriptivos), as.numeric(descriptivos)))
View(descr_sat_vida)
#Exportar matriz a archivo CSV
write.csv2(descr_sat_vida, file = "Tabla 4.csv")
