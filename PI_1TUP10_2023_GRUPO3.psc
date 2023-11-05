Algoritmo PI_1TUP10_2023_GRUPO3 
	
	// DECLARACI�N DE VARIABLES
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
	Escribir "BIENVENIDO A AEROL�NEAS UTN - Since 2023 flying the classroom Vv~"
	Escribir "======================================================================="
	
	Repetir
		
		Escribir " "
		Escribir "Seleccione un opci�n de las siguientes:"
		
		// MEN� PRINCIPAL
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
				Escribir "La opci�n ingresada no es v�lida, por favor intente nuevamente."
				
			FinSi
			
		Mientras Que ConvertirANumero(seleccion) < 1 o ConvertirANumero(seleccion) > 6
		
		// SWITCH PARA EJECUTAR LA SELECCI�N DEL USUARIO
		Segun seleccion Hacer
			"1":
				Escribir " "
				Escribir "======================================================================="
				Escribir "Usted seleccion�: VENTA DE PASAJE"
				Escribir "A continuaci�n le solicitaremos algunos datos personales"
				Escribir "para asignarle un lugar en nuestro viaje Vv~"
				
				datosPersonales(rutaVuelo, nombre, apellido, telefono, dni, nroPasajero, equipajeBodega, capacidadPasajeros, dimCapPas, noDisponibilidad)
				
				noDisponibilidad= Falso
				
				Si !noDisponibilidad Entonces
					
					precioPasaje(rutaVuelo, costoPasaje, capacidadPasajeros, dimCapPas, asiento, equipajeBodega, cantidadPasajes, dimCanPas)
					
					Segun rutaVuelo Hacer
						"1": 
							Mostrar "Ruta: ", rutasAereas[ConvertirANumero(rutaVuelo)-1]
						"2": 
							Mostrar "Ruta: ", rutasAereas[ConvertirANumero(rutaVuelo)-1]
						"3": 
							Mostrar "Ruta: ", rutasAereas[ConvertirANumero(rutaVuelo)-1]
						"4": 
							Mostrar "Ruta: ", rutasAereas[ConvertirANumero(rutaVuelo)-1]
					FinSegun
					
					Escribir " "
					Escribir "======================================================================="
					Segun rutaVuelo Hacer
						"1": 
							Mostrar "Ruta: ", rutasAereas[ConvertirANumero(rutaVuelo)-1]
						"2": 
							Mostrar "Ruta: ", rutasAereas[ConvertirANumero(rutaVuelo)-1]
						"3": 
							Mostrar "Ruta: ", rutasAereas[ConvertirANumero(rutaVuelo)-1]
						"4": 
							Mostrar "Ruta: ", rutasAereas[ConvertirANumero(rutaVuelo)-1]
					FinSegun
					Escribir  "Nombre y Apellido: ", nombre," ", apellido
					Escribir "DNI: ", dni
					Escribir "Tel�fono: ", telefono
					Si ConvertirANumero(equipajeBodega) = 1 Entonces
						
						Escribir "Equipaje en bodega: S�"
						
					SiNo
						
						Escribir "Equipaje en bodega: No"
						
					FinSi
					Escribir "N�mero pasajero frecuente: ", nroPasajero
					Escribir "Asiento: ", asiento
					Escribir "Costo pasaje: $", costoPasaje
					Escribir "======================================================================="
					
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 0] = rutaVuelo
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 1] = nombre
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 2] = apellido
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 3] = dni
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 4] = telefono
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 5] = equipajeBodega
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 6] = nroPasajero
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 7] = ConvertirATexto(asiento)
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 8] = ConvertirATexto(costoPasaje)
					
				FinSi		
				
			"2":
				Escribir " "
				Escribir "======================================================================="
				Escribir "Usted seleccion�: BUSCAR PASAJE VENDIDO"
				Escribir "A continuaci�n le solicitaremos algunos datos para"
				Escribir "dar con el pasaje que est� buscando Vv~"
				
				buscarPasaje(rutaVuelo, rutasAereas, dimRutas, datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3)
				
				
			"3": 
				Escribir " "
				Escribir "======================================================================="
				Escribir "Usted seleccion�: BUSCAR PASAJERO"
				buscarPasajeroPorDNI(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3)
				
			"4":
				Escribir " "
				Escribir "======================================================================="
				Escribir "Usted seleccion�: MOSTRAR LISTA DE PASAJEROS"
				OrdenamientoAscendenteOdescendente(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3)
				
			"5":
				Escribir " "
				Escribir "======================================================================="
				Escribir "Usted seleccion�: MOSTRAR LISTA VENTAS"
				listados(cantidadPasajes, dimCanPas)
				
				
				
		FinSegun
		
	Mientras Que ConvertirANumero(seleccion) <> 6
	
	Escribir " "
	Escribir "Saliendo Vv~"
	Escribir "Muchas gracias por su visita."
	Escribir "AEROLINEAS UTN - Since 2023 flying the classroom Vv~"
	
FinAlgoritmo
	