Algoritmo PI_1TUP10_2023_GRUPO3 
	
	// DECLARACIÓN DE VARIABLES
	Definir rutasAereas, datosPasajero, seleccion, nombre, apellido, telefono, rutaVuelo, dni, nroPasajero, equipajeBodega Como Cadena
	Definir capacidadPasajeros, dimCapPas, dimDatPas1, dimDatPas2, dimDatPas3, dimRutas, costoPasaje, asiento, cantidadPasajes, dimCanPas Como Entero
	Definir noDisponibilidad Como Logico
	
	dimRutas = 4
	Dimension rutasAereas[dimRutas]
	rutasAereas[0] = "Buenos Aires - Bariloche"
	rutasAereas[1] = "Bueno Aires - Salta"
	rutasAereas[2] = "Rosario - Buenos Aires"
	rutasAereas[3] = "Mar Del Plata - Mendoza"
	
	dimCapPas=4
	Dimension capacidadPasajeros[dimCapPas]
	capacidadPasajeros[0] = 120
	capacidadPasajeros[1] = 120
	capacidadPasajeros[2] = 80
	capacidadPasajeros[3] = 80
	
	dimDatPas1 = 4
	dimDatPas2 = 120
	dimDatPas3 = 9
	Dimension datosPasajero[dimDatPas1, dimDatPas2, dimDatPas3]
	
	dimCanPas = 4
	Dimension cantidadPasajes[dimCanPas]
	cantidadPasajes[0] = 0
	cantidadPasajes[1] = 0
	cantidadPasajes[2] = 0
	cantidadPasajes[3] = 0
	
	
	// INICIO DEL PROGRAMA
	Escribir "======================================================================="
	Escribir "BIENVENIDO A AEROLÍNEAS UTN - Since 2023 flying the classroom Vv~"
	Escribir "======================================================================="
	
	Repetir
		
		Escribir " "
		Escribir "Seleccione un opción de las siguientes:"
		
		// MENÚ PRINCIPAL
		Repetir
			
			Escribir "1. Venta de pasaje"
			Escribir "2. Buscar pasaje vendido"
			Escribir "3. Buscar pasajero"
			Escribir "4. Ordenar y mostrar lista de pasajeros"
			Escribir "5. Listados"
			Escribir "6. Salir" 
			Leer seleccion
			
			Si ConvertirANumero(seleccion) < 1 o ConvertirANumero(seleccion) > 6 Entonces 
				
				Escribir " "
				Escribir "La opción ingresada no es válida, por favor intente nuevamente."
				
			FinSi
			
		Mientras Que ConvertirANumero(seleccion) < 1 o ConvertirANumero(seleccion) > 6 
	
FinAlgoritmo