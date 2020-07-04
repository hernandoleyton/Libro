library(haven) #Debemos asegurarnos de que el paquete a ejecutar,
#está cargado en la sesión de Rtudio.
CEP <- read_spss("CEP_sep-oct_2017.sav") # Nombre del archivo entre comillas.
library(readxl) #Cargar paquete en sesión de trabajo de R
CEP_excel <- read_excel("Estadistica_Proyecto.xlsx") #Leer libro excel
CEP_excel2 <- read_excel("CEP_sep-oct_2017.xlsx", sheet = 2)
#indica posición de hoja en el libro de trabajo.
CEP_excelD <- read_excel("CEP_sep-oct_2017.xlsx", sheet = "DATOS")
#indica nombre de hoja en libro de trabajo.
CEP_excelST<-read_excel("CEP_sep-oct_2017.xlsx",sheet=2,skip = 1)
#indica posición de la hoja en el libro de trabajo.No toma la fila de los encabezados.
library(dplyr) #Cargar paquete, si no está cargado desde antes.
CEP_csv2 <- read.csv2("CEP_sep-oct_2017.csv")
library(dplyr) #Cargar paquete, si no está cargado desde antes.
CEP81 <- select(CEP_csv2, pond = POND, sexo = SEXO, region = REGION, edad = DS_P2_EXACTA,satisfaccion_vida = SV_1, satisfaccion_chilenos = SV_2, eval_econ = MB_P2)
#Se indica base de datos, el nombre de variable a crear y los datos que la compondrán.
save(CEP81, file = "seleccion_CEP.RData")
