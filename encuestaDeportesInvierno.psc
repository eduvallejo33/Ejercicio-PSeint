Algoritmo encuestaDeportesInvierno
	Dimension encuestados[5,4]
	Definir encuestados Como Entero
	Definir i Como Entero
	Para i<-1 Hasta 5 Hacer
		Escribir 'Encuestado Nº ',i,': '
		Escribir '---------------------------------------'
		Escribir '¿Qué edad tienes?: ' Sin Saltar
		Leer encuestados[i,1]
		Escribir '(1) Esqui'
		Escribir '(2) Snowboard'
		Escribir '(3) Esquí de fondo'
		Escribir '(4) Patinaje'
		Escribir 'Selecciona tú deporte favorito (1 al 4)...' Sin Saltar
		Leer encuestados[i,2]
		Escribir '¿Cuántas horas lo practicas?: ' Sin Saltar
		Leer encuestados[i,3]
		Escribir '¿Eres: (1) Hombre o (2) Mujer?....(1 al 2)' Sin Saltar
		Leer encuestados[i,4]
	FinPara
	
	horasEjercicio(encuestados)
	tipoyPromEdades(encuestados)
	hombreOMujer(encuestados)
FinAlgoritmo

Funcion horasEjercicio(matriz)
	Definir i Como Entero
	Definir horasM,horasA Como Entero
	horasM <- 0
	horasA <- 0
	Para i<-1 Hasta 5 Hacer
		Si matriz[i,1]<18 Entonces
			horasM <- horasM+matriz[i,3]
		SiNo
			horasA <- horasA+matriz[i,3]
		FinSi
	FinPara
	Escribir ''
	Escribir 'Horas de práctica de deporte = ',(horasM+horasA)
	Escribir ' 	De Menores de edad = ',horasM
	Escribir ' 	De Adultos = ',horasA
FinFuncion

Funcion tipoyPromEdades(matriz)
	Definir i Como Entero
	Definir ejerE,ejerSn,ejerEf,ejerPa,ejerT Como Entero
	Definir edadE,edadSn,edadEf,edadPa,edadT Como Entero
	edadE <- 0
	edadSn <- 0
	edadEf <- 0
	edadPa <- 0
	edadT <- 0
	ejerE <- 0
	ejerSn <- 0
	ejerEf <- 0
	ejerPa <- 0
	ejerT <- 0
	Para i<-1 Hasta 5 Hacer
		Si matriz[i,2]==1 Entonces
			ejerE <- ejerE+1
			edadE <- edadE+matriz[i,1]
		FinSi
		Si matriz[i,2]==2 Entonces
			ejerSn <- ejerSn+1
			edadSn <- edadSn+matriz[i,1]
		FinSi
		Si matriz[i,2]==3 Entonces
			ejerEf <- ejerEf+1
			edadEf <- edadEf+matriz[i,1]
		FinSi
		Si matriz[i,2]==4 Entonces
			ejerPa <- ejerPa+1
			edadPa <- edadPa+matriz[i,1]
		FinSi
			edadT <- edadT+matriz[i,1]
	FinPara
	Escribir ''
	Escribir 'Personas por deporte:'
	Escribir '		Esqui = ',ejerE
	Escribir '		Snowboard = ',ejerSn
	Escribir '		Esqui de fondo = ',ejerEf
	Escribir '		Patinaje = ',ejerPa
	Escribir ''
	Escribir 'Promedio de edad de encuestados es: ',edadT/5,' años'
	Escribir 'La edad media por deporte es:'
	Escribir '		Esqui = ',edadE/ejerE,' años'
	Escribir '		Snowboard = ',edadSn/ejerSn,' años'
	Escribir '		Esqui de fondo = ',edadEf/ejerEf,' años'
	Escribir '		Patinaje = ',edadPa/ejerPa,' años'
FinFuncion

Funcion hombreOMujer(matriz)
	Definir i Como Entero
	Definir hombre,mujer Como Entero
	hombre <- 0
	mujer <- 0
	Para i<-1 Hasta 5 Hacer
		Si matriz[i,4]==1 Entonces
			hombre <- hombre+1
		FinSi
		Si matriz[i,4]==2 Entonces
			mujer <- mujer+1
		FinSi
	FinPara
	Escribir ''
	Escribir 'Deportistas'
	Escribir 'Hombres = ',hombre
	Escribir 'Mujeres = ',mujer
FinFuncion
