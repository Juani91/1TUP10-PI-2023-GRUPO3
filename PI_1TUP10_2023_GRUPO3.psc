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
		
		// SWITCH PARA EJECUTAR LA SELECCIÓN DEL USUARIO
		Segun seleccion Hacer
			"1":
				Escribir " "
				Escribir "======================================================================="
				Escribir "Usted seleccionó: VENTA DE PASAJE"
				Escribir "A continuación le solicitaremos algunos datos personales"
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
					Escribir "Teléfono: ", telefono
					Si ConvertirANumero(equipajeBodega) = 1 Entonces
						
						Escribir "Equipaje en bodega: Sí"
						
					SiNo
						
						Escribir "Equipaje en bodega: No"
						
					FinSi
					Escribir "Número pasajero frecuente: ", nroPasajero
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
				Escribir "Usted seleccionó: BUSCAR PASAJE VENDIDO"
				Escribir "A continuación le solicitaremos algunos datos para"
				Escribir "dar con el pasaje que está buscando Vv~"
				
				buscarPasaje(rutaVuelo, rutasAereas, dimRutas, datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3)
				
				
			"3": 
				Escribir " "
				Escribir "======================================================================="
				Escribir "Usted seleccionó: BUSCAR PASAJERO"
				buscarPasajeroPorDNI(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3)
				
			"4":
				Escribir " "
				Escribir "======================================================================="
				Escribir "Usted seleccionó: MOSTRAR LISTA DE PASAJEROS"
				OrdenamientoAscendenteOdescendente(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3)
				
			"5":
				Escribir " "
				Escribir "======================================================================="
				Escribir "Usted seleccionó: MOSTRAR LISTA VENTAS"
				listados(cantidadPasajes, dimCanPas)
				
				
				
		FinSegun
		
	Mientras Que ConvertirANumero(seleccion) <> 6
	
	Escribir " "
	Escribir "Saliendo Vv~"
	Escribir "Muchas gracias por su visita."
	Escribir "AEROLINEAS UTN - Since 2023 flying the classroom Vv~"
	
FinAlgoritmo

// ----------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA SOLICITAR LOS DATOS PERSONALES DEL PASAJERO EN LA VENTA DEL PASAJE (PUNTO 1)
SubProceso datosPersonales(rutaVuelo Por Referencia, nombre Por Referencia, apellido Por Referencia, telefono Por Referencia, dni Por Referencia, nroPasajero Por Referencia, equipajeBodega Por Referencia, capacidadPasajeros, dimCapPas, noDisponibilidad Por Referencia)
	
	
	// SOLICITUD DE RUTA DE VUELO
	Escribir " "
	Escribir "Por favor seleccione numéricamente el origen y destino deseado:"
	Escribir "1. Buenos Aires - Bariloche"
	Escribir "2. Bueno Aires - Salta"
	Escribir "3. Rosario - Buenos Aires"
	Escribir "4. Mar Del Plata - Mendoza"
	
	Repetir
		
		Leer rutaVuelo
		
		si ConvertirANumero(rutaVuelo) < 1 o ConvertirANumero(rutaVuelo) > 4 Entonces
			
			Escribir " "
			Escribir "Opción ingresada incorrecta, intente nuevamente." // LAS VALIDACIONES PUEDEN SER CON UN SUBPROCESO
			
		FinSi
		
	Mientras Que ConvertirANumero(rutaVuelo) < 1 o ConvertirANumero(rutaVuelo) > 4
	
	// VERIFICACION DE DISPONIBILIDAD EN EL VUELO SELECCIONADO
	disponibilidad = verificarDisponibilidad(rutaVuelo, capacidadPasajeros, dimCapPas)
	
	// SI HAY DISPONIBILIDAD SE SIGUE CON LA PETICION DE DATOS, SINO SE CANCELA
	Si disponibilidad Entonces
		
		// SOLICITUD DE NOMBRE
		Escribir " "
		Escribir "Ingrese su nombre por favor:"
		
		Repetir
			
			Leer nombre
			
			// Verificar la longitud del DNI
			Si Longitud(nombre) = 0 Entonces
				Escribir " "
				Escribir "El nombre no puede quedar vacío, intente nuevamente."
			FinSi
			
		Hasta Que Longitud(nombre) > 0
		
		// SOLICITUD DE APELLIDO
		Escribir " "
		Escribir "Ingrese su apellido por favor:"
		
		Repetir
			
			Leer apellido
			
			// Verificar la longitud del DNI
			Si Longitud(apellido) = 0 Entonces
				Escribir " "
				Escribir "El apellido no puede quedar vacío, intente nuevamente."
			FinSi
			
		Hasta Que Longitud(apellido) > 0
		
		// SOLICITUD DE TELÉFONO
		Escribir " "
		Escribir "Ingrese su teléfono por favor:"
		
		Repetir
			
			Leer telefono
			
			// Validar longitud del número de teléfono
			Si Longitud(telefono) = 0 Entonces
				Escribir " "
				Escribir "El número de teléfono no puede quedar vacío, intente nuevamente."
			FinSi
		Hasta que Longitud(telefono) > 0
		
		// SOLICITUD DE DNI
		
		Repetir
			// Leer el DNI
			Escribir " "
			Escribir "Ingrese el DNI:"
			Leer dni
			
			// Verificar la longitud del DNI
			Si Longitud(dni) <= 6 o Longitud(dni) >= 9 Entonces
				Escribir "DNI ingresado no válido, intente nuevamente."
			FinSi
			
		Mientras Que Longitud(dni) <= 6 o Longitud(dni) >= 9
		
		
		// SOLICITUD DE NÚMERO DE PASAJERO
		Escribir " "
		Mostrar "Si usted frecuenta nuestra aerolínea, ingrese su número de pasajero por favor:"
		
		Repetir
			
			Leer nroPasajero
			
			Si ConvertirANumero(nroPasajero) < 1 o ConvertirANumero(nroPasajero) > 99999 Entonces
				
				Escribir " "
				Escribir "Número de pasajero ingresado no válido, intente nuevamente."
				
			FinSi
			
		Mientras Que ConvertirANumero(nroPasajero) < 1 o ConvertirANumero(nroPasajero) > 99999
		
		// ELECCION EQUIPAJE EN BODEGA SI - NO
		Escribir " "
		Mostrar "Desea guardar el equipaje en la bodega? Ingrese 1 si lo desea o 0 si no"
		
		Repetir
			
			Leer equipajeBodega
			
			Si ConvertirANumero(equipajeBodega) <> 1 y ConvertirANumero(equipajeBodega) <> 0 Entonces
				
				Escribir " "
				Escribir "Valor ingresado no válido, intente nuevamente."
				
			FinSi
			
		Mientras Que ConvertirANumero(equipajeBodega) <> 1 y ConvertirANumero(equipajeBodega) <> 0
		
		
	SiNo
		
		Escribir " "
		Escribir "Lo sentimos, no hay butacas disponibles para el vuelo seleccionado."
		Escribir noDisponibilidad = Verdadero
		
	FinSi
	
FinSubProceso

// ----------------------------------------------------------------------------------------------------------------
// FUNCION PARA VERIFICAR DISPONIBILIDAD EN EL VUELO SELECCIONADO
Funcion disponibilidad = verificarDisponibilidad(rutaVuelo, capacidadPasajeros, dimCapPas)
	
	Definir disponibilidad Como Logico
	
	Si capacidadPasajeros[ConvertirANumero(rutaVuelo)-1] <> 0 Entonces
		
		disponibilidad = Verdadero
		
	SiNo
		
		disponibilidad = Falso
		
	FinSi
	
FinFuncion


// ----------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA CALCULAR EL PRECIO DEL PASAJE
SubProceso precioPasaje(rutaVuelo, costoPasaje Por Referencia, capacidadPasajeros, dimCapPas, asiento Por Referencia, equipajeBodega, cantidadPasajes, dimCanPas)
	
	Segun rutaVuelo Hacer
		
		"1":
			Si capacidadPasajeros[ConvertirANumero(rutaVuelo)-1] > 100 Entonces
				
				costoPasaje = 150000
				
			SiNo
				
				Si capacidadPasajeros[ConvertirANumero(rutaVuelo)-1] > 60 Entonces
					
					costoPasaje = 150000 * 1.1
					
				SiNo
					
					costoPasaje = 180000
					
				FinSi
			FinSi
			
			si ConvertirANumero(equipajeBodega) = 1 Entonces
				
				costoPasaje = costoPasaje * 1.05
				
			FinSi
			
			asiento = capacidadPasajeros[ConvertirANumero(rutaVuelo)-1]
			capacidadPasajeros[ConvertirANumero(rutaVuelo)-1] = capacidadPasajeros[ConvertirANumero(rutaVuelo)-1]  - 1
			cantidadPasajes[ConvertirANumero(rutaVuelo)-1] = cantidadPasajes[ConvertirANumero(rutaVuelo)-1] + 1
			
		"2":
			Si capacidadPasajeros[ConvertirANumero(rutaVuelo)-1] > 100 Entonces
				
				costoPasaje = 120000					
				
			SiNo
				
				Si capacidadPasajeros[ConvertirANumero(rutaVuelo)-1] > 60 Entonces
					
					costoPasaje = 120000 * 1.1
					
				SiNo
					
					costoPasaje = 150000					
					
				FinSi
			FinSi
			
			si ConvertirANumero(equipajeBodega) = 1 Entonces
				
				costoPasaje = costoPasaje * 1.05
				
			FinSi
			
			asiento = capacidadPasajeros[ConvertirANumero(rutaVuelo)-1]
			capacidadPasajeros[ConvertirANumero(rutaVuelo)-1] = capacidadPasajeros[ConvertirANumero(rutaVuelo)-1]  - 1
			cantidadPasajes[ConvertirANumero(rutaVuelo)-1] = cantidadPasajes[ConvertirANumero(rutaVuelo)-1] + 1
			
		"3":
			Si capacidadPasajeros[ConvertirANumero(rutaVuelo)-1] > 70 Entonces
				
				costoPasaje = 70000
				
			SiNo
				
				Si capacidadPasajeros[ConvertirANumero(rutaVuelo)-1] > 40 Entonces
					
					costoPasaje = 70000 * 1.15
					
				SiNo
					
					costoPasaje = 95000
					
				FinSi
				
			FinSi
			
			si ConvertirANumero(equipajeBodega) = 1 Entonces
				
				costoPasaje = costoPasaje * 1.05
				
			FinSi
			
			asiento = capacidadPasajeros[ConvertirANumero(rutaVuelo)-1]
			capacidadPasajeros[ConvertirANumero(rutaVuelo)-1] = capacidadPasajeros[ConvertirANumero(rutaVuelo)-1]  - 1
			cantidadPasajes[ConvertirANumero(rutaVuelo)-1] = cantidadPasajes[ConvertirANumero(rutaVuelo)-1] + 1
			
		"4":
			Si capacidadPasajeros[ConvertirANumero(rutaVuelo)-1] > 70 Entonces
				
				costoPasaje = 95000
				
			SiNo
				
				Si capacidadPasajeros[ConvertirANumero(rutaVuelo)-1] > 40 Entonces
					
					costoPasaje = 95000 * 1.15
					
				SiNo
					
					costoPasaje = 125000
					
				FinSi
			FinSi
			
			si ConvertirANumero(equipajeBodega) = 1 Entonces
				
				costoPasaje = costoPasaje * 1.05
				
			FinSi
			
			asiento = capacidadPasajeros[ConvertirANumero(rutaVuelo)-1]
			capacidadPasajeros[ConvertirANumero(rutaVuelo)-1] = capacidadPasajeros[ConvertirANumero(rutaVuelo)-1]  - 1
			cantidadPasajes[ConvertirANumero(rutaVuelo)-1] = cantidadPasajes[ConvertirANumero(rutaVuelo)-1] + 1
			
	FinSegun
	
FinSubProceso
	