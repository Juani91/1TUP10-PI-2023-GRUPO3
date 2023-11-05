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

// ----------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA BUSCAR PASAJE VENDIDO (PUNTO 2)

SubProceso buscarPasaje(rutaVuelo, rutasAereas, dimRutas, datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3)
	
	Escribir " "
	Escribir "Ingrese el destino de su vuelo"
	Escribir "1. Buenos Aires - Bariloche"
	Escribir "2. Bueno Aires - Salta"
	Escribir "3. Rosario - Buenos Aires"
	Escribir "4. Mar Del Plata - Mendoza"
	
	Repetir
		
		Leer rutaVuelo
		
		Si ConvertirANumero(rutaVuelo) < 1 o ConvertirANumero(rutaVuelo) > 4 Entonces
			
			Escribir " "
			Escribir "Opción ingresada incorrecta, intente nuevamente."
			
		FinSi
		
	Mientras Que ConvertirANumero(rutaVuelo) < 1 o ConvertirANumero(rutaVuelo) > 4
	
	Escribir " "
	Escribir "Ingrese el número de asiento:"// VALIDAR
	
	Segun rutaVuelo Hacer
		
		"1", "2":
			Repetir
				
				Leer asiento
				
				Si asiento < 1 o asiento > 120 Entonces
					
					Escribir " "
					Escribir "Asiento ingresado incorrectamente, intente nuevamente."
					
				FinSi
				
			Mientras Que asiento < 1 o asiento > 120
			
		"3", "4":
			Repetir
				
				Leer asiento
				
				Si asiento < 1 o asiento > 80 Entonces
					
					Escribir " "
					Escribir "Asiento ingresado incorrecto, intente nuevamente."
					
				FinSi
				
			Mientras Que asiento < 1 o asiento > 80	
			
	FinSegun
	
	Si datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 3] <> "" Entonces
		
		Escribir " "
		Escribir "======================================================================="
		Escribir  "Nombre y Apellido: ", datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 1]," ", datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 2]
		
		Segun datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 0] Hacer
			"1": 
				Mostrar "Ruta: ", rutasAereas[ConvertirANumero(rutaVuelo)-1]
			"2": 
				Mostrar "Ruta: ", rutasAereas[ConvertirANumero(rutaVuelo)-1]
			"3": 
				Mostrar "Ruta: ", rutasAereas[ConvertirANumero(rutaVuelo)-1]
			"4": 
				Mostrar "Ruta: ", rutasAereas[ConvertirANumero(rutaVuelo)-1]
		FinSegun
		
		Escribir "DNI: ", datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 3]
		Escribir "======================================================================="
		
	SiNo
		
		Escribir " "
		Escribir "El asiento ingresado no se encuentra asignado."
		
	FinSi
	
FinSubProceso
// ----------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA BUSCAR PASAJERO (PUNTO 3)
SubProceso buscarPasajeroPorDNI(datosPasajero Por Referencia, dimDatPas1 Por Referencia, dimDatPas2 Por Referencia, dimDatPas3 Por Referencia)
    Definir dniABuscar, i, j Como Entero
    Definir encontrado Como Logico
	encontrado = Falso
    Imprimir "Ingrese el DNI del pasajero a buscar: "
	Repetir
		Leer dniABuscar
		Si dniABuscar <= 999999 o dniABuscar >= 100000000 Entonces
			Escribir "DNI ingresado no válido, intente nuevamente."
		FinSi
	Mientras Que dniABuscar <= 999999 o dniABuscar >= 100000000 
    
    Para i <- 0 Hasta dimDatPas1-1 Hacer
        Para j <- 0 Hasta dimDatPas2-1 Hacer
            Si ConvertirANumero(datosPasajero[i, j, 3]) == dniABuscar Entonces
                encontrado = Verdadero
				Imprimir " "
				Imprimir "======================================================================="
				Imprimir "Vuelo: ", datosPasajero[i, j, 0] 
				Imprimir "Nombre: ", datosPasajero[i, j, 1]," ", datosPasajero[i, j, 2]
				Imprimir "DNI: ", datosPasajero[i, j, 3]
				Imprimir "Teléfono: ", datosPasajero[i, j, 4]
				Imprimir "Asiento: ", datosPasajero[i, j, 7]
				Imprimir "======================================================================="
            FinSi
        FinPara
    FinPara
	
    si encontrado == Falso Entonces
		Imprimir ""
		Imprimir "El pasajero de DNI: ", dniABuscar, " no se encontro"
    FinSi
	
FinSubProceso

// ----------------------------------------------------------------------------------------------------------------
// SUBPROCESO Ordenamiento ascendente o descente (PUNTO 4)
SubProceso OrdenamientoAscendenteOdescendente (datosPasajero , dimDatPas1 , dimDatPas2 , dimDatPas3)
	
	Definir opcionOrdenamiento Como Entero
	Definir aux Como Entero
	Definir bandera Como Logico
	bandera = Falso
	
	//Validar el swicht
	Repetir 
		Imprimir " "
		Mostrar "Seleccione una opción de ordenamiento:"
		Mostrar "1. Por número de asiento Ascendente"
		Mostrar "2. Por número de asiento Descendente"
		
		Leer opcionOrdenamiento
		
		Si (opcionOrdenamiento <> 1) Y (opcionOrdenamiento <> 2)  Entonces
			Imprimir " "
			Mostrar "Opción no válida. Intente de nuevo."
		FinSi
	Hasta Que (opcionOrdenamiento = 1) O (opcionOrdenamiento = 2) 
	
	Repetir
		
		Imprimir " "
		Escribir "Por favor seleccione el vuelo que quiere ordenar de forma ascendente:"
		Escribir "1. Buenos Aires - Bariloche"
		Escribir "2. Bueno Aires - Salta"
		Escribir "3. Rosario - Buenos Aires"
		Escribir "4. Mar Del Plata - Mendoza"
		
		leer dimDatPas1
		
	Hasta Que dimDatPas1 >= 1 Y dimDatPas1 <= 4
	
	Segun opcionOrdenamiento
		1:
			Segun dimDatPas1
				1:				
					Imprimir " "
					Escribir "A continuación le mostramos el vuelo Buenos Aires - Bariloche ascendentemente."
					Imprimir " "
					Imprimir "======================================================================="
					Para i<-0 Hasta dimDatPas2-1 Hacer
						
						Si datosPasajero[dimDatPas1-1, i, 7] <> "" Entonces
							
							Escribir "Asiento " i+1 ": " datosPasajero[dimDatPas1-1, i, 1] " " datosPasajero[dimDatPas1-1, i, 2]
							bandera = Verdadero
							
						FinSi				
						
					Fin Para
					
					SI !bandera Entonces
						
						Escribir "No hay pasajes vendidos para el vuelo seleccionado."
						
					FinSi
					Imprimir "======================================================================="
					
				2:
					Imprimir " "
					Escribir "A continuación le mostramos el vuelo Buenos Aires - Bariloche ascendentemente."
					Imprimir "======================================================================="
					Para i<-0 Hasta dimDatPas2-1 Hacer
						
						Si datosPasajero[dimDatPas1-1, i, 7] <> "" Entonces
							
							Escribir "Asiento " i+1 ": " datosPasajero[dimDatPas1-1, i, 1] " " datosPasajero[dimDatPas1-1, i, 2]
							bandera = Verdadero
							
						FinSi				
						
					Fin Para
					
					SI !bandera Entonces
						
						Escribir "No hay pasajes vendidos para el vuelo seleccionado."
						
					FinSi
					Imprimir "======================================================================="
					
				3:
					Imprimir " "
					Escribir "A continuación le mostramos el vuelo Buenos Aires - Bariloche ascendentemente."
					Imprimir "======================================================================="
					Para i<-0 Hasta dimDatPas2-1 Hacer
						
						Si datosPasajero[dimDatPas1-1, i, 7] <> "" Entonces
							
							Escribir "Asiento " i+1 ": " datosPasajero[dimDatPas1-1, i, 1] " " datosPasajero[dimDatPas1-1, i, 2]
							bandera = Verdadero
							
						FinSi				
						
					Fin Para
					
					SI !bandera Entonces
						
						Escribir "No hay pasajes vendidos para el vuelo seleccionado."
						
					FinSi
					Imprimir "======================================================================="
					
				4:
					Imprimir " "
					Escribir "A continuación le mostramos el vuelo Buenos Aires - Bariloche ascendentemente."
					Imprimir "======================================================================="
					Para i<-0 Hasta dimDatPas2-1 Hacer
						
						Si datosPasajero[dimDatPas1-1, i, 7] <> "" Entonces
							
							Escribir "Asiento " i+1 ": " datosPasajero[dimDatPas1-1, i, 1] " " datosPasajero[dimDatPas1-1, i, 2]
							bandera = Verdadero
							
						FinSi				
						
					Fin Para
					
					SI !bandera Entonces
						
						Escribir "No hay pasajes vendidos para el vuelo seleccionado."
						
					FinSi
					Imprimir "======================================================================="
					
			FinSegun
			
		2:
			Segun dimDatPas1
				1:					
					Imprimir " "
					Escribir "A continuación le mostramos el vuelo Buenos Aires - Bariloche ascendentemente."
					Imprimir "======================================================================="
					Para i<-dimDatPas2-1 Hasta 0 Con Paso -1 Hacer
						
						Si datosPasajero[dimDatPas1-1, i, 7] <> "" Entonces
							
							Escribir "Asiento " i+1 ": " datosPasajero[dimDatPas1-1, i, 1] " " datosPasajero[dimDatPas1-1, i, 2]
							bandera = Verdadero
							
						FinSi				
						
					Fin Para
					
					SI !bandera Entonces
						
						Escribir "No hay pasajes vendidos para el vuelo seleccionado."
						
					FinSi
					Imprimir "======================================================================="
					
				2:
					Imprimir " "
					Escribir "A continuación le mostramos el vuelo Buenos Aires - Bariloche ascendentemente."
					Imprimir "======================================================================="
					Para i<-dimDatPas2-1 Hasta 0 Con Paso -1 Hacer
						
						Si datosPasajero[dimDatPas1-1, i, 7] <> "" Entonces
							
							Escribir "Asiento " i+1 ": " datosPasajero[dimDatPas1-1, i, 1] " " datosPasajero[dimDatPas1-1, i, 2]
							bandera = Verdadero
							
						FinSi				
						
					Fin Para
					
					SI !bandera Entonces
						
						Escribir "No hay pasajes vendidos para el vuelo seleccionado."
						
					FinSi
					Imprimir "======================================================================="
					
				3:
					Imprimir " "
					Escribir "A continuación le mostramos el vuelo Buenos Aires - Bariloche ascendentemente."
					Imprimir "======================================================================="
					Para i<-dimDatPas2-1 Hasta 0 Con Paso -1 Hacer
						
						Si datosPasajero[dimDatPas1-1, i, 7] <> "" Entonces
							
							Escribir "Asiento " i+1 ": " datosPasajero[dimDatPas1-1, i, 1] " " datosPasajero[dimDatPas1-1, i, 2]
							bandera = Verdadero
							
						FinSi				
						
					Fin Para
					
					SI !bandera Entonces
						
						Escribir "No hay pasajes vendidos para el vuelo seleccionado."
						
					FinSi
					Imprimir "======================================================================="	
					
				4:
					Imprimir " "
					Escribir "A continuación le mostramos el vuelo Buenos Aires - Bariloche ascendentemente."
					Imprimir "======================================================================="
					Para i<-dimDatPas2-1 Hasta 0 Con Paso -1 Hacer
						
						Si datosPasajero[dimDatPas1-1, i, 7] <> "" Entonces
							
							Escribir "Asiento " i+1 ": " datosPasajero[dimDatPas1-1, i, 1] " " datosPasajero[dimDatPas1-1, i, 2]
							bandera = Verdadero
							
						FinSi				
						
					Fin Para
					
					SI !bandera Entonces
						
						Escribir "No hay pasajes vendidos para el vuelo seleccionado."
						
					FinSi
					Imprimir "======================================================================="
					
			FinSegun
	FinSegun
	
FinSubProceso

// ----------------------------------------------------------------------------------------------------------------
// SUBPROCESO Listado/s a. Cantidad de pasajes vendido por ruta aérea b. Porcentaje de ventas por ruta aérea (PUNTO 5)

SubProceso listados(cantidadPasajes, dimCanPas)
	
	Definir opcionOrdenamiento Como Entero
	
	//Validar el swicht
	
	Repetir 
		Imprimir " "
		Mostrar "Seleccione una opción para darle el listado:"
		Mostrar "1. Cantidad de pasajes vendido por ruta aérea"
		Mostrar "2. Porcentaje de ventas por ruta aérea"
		
		Leer opcionOrdenamiento
		
		Si (opcionOrdenamiento <> 1) Y (opcionOrdenamiento <> 2)  Entonces
			Imprimir " "
			Mostrar "Opción no válida. Intente de nuevo."
		FinSi
	Hasta Que (opcionOrdenamiento = 1) o (opcionOrdenamiento = 2) 
	
	Repetir
		
		Imprimir " "
		Escribir "Seleccione el vuelo:"
		Escribir "1. Buenos Aires - Bariloche"
		Escribir "2. Bueno Aires - Salta"
		Escribir "3. Rosario - Buenos Aires"
		Escribir "4. Mar Del Plata - Mendoza"
		
		leer dimCanPas
		
	Hasta Que dimCanPas >= 1 Y dimCanPas <= 4
	
	Segun opcionOrdenamiento
		1:
			Segun dimCanPas
				1:					
					Imprimir " "
					Imprimir "======================================================================="
					Escribir "La cantidad de pasajes vendidos de Buenos Aires - Bariloche es: " cantidadPasajes[dimCanPas-1]
					Imprimir "======================================================================="
					
				2:
					Imprimir " "
					Imprimir "======================================================================="
					Escribir "La cantidad de pasajes vendidos de Bueno Aires - Salta es: " cantidadPasajes[dimCanPas-1]
					Imprimir "======================================================================="
					
				3:
					Imprimir " "
					Imprimir "======================================================================="
					Escribir "La cantidad de pasajes vendidos de Rosario - Buenos Aires es: " cantidadPasajes[dimCanPas-1]
					Imprimir "======================================================================="
					
				4:
					Imprimir " "
					Imprimir "======================================================================="
					Escribir "La cantidad de pasajes vendidos de Mar Del Plata - Mendoza es: " cantidadPasajes[dimCanPas-1]
					Imprimir "======================================================================="
					
			FinSegun           
			
		2:
			Segun dimCanPas
				1:			
					Imprimir " "
					Imprimir "======================================================================="
					Escribir "El porcentaje de ventas en el vuelo Buenos Aires - Bariloche es: % " (cantidadPasajes[dimCanPas-1] * 100) / 120
					Imprimir "======================================================================="
					
				2:
					Imprimir " "
					Imprimir "======================================================================="
					Escribir "El porcentaje de ventas en el vuelo Bueno Aires - Salta es: % " (cantidadPasajes[dimCanPas-1] * 100) / 120
					Imprimir "======================================================================="
					
				3:
					Imprimir " "
					Imprimir "======================================================================="
					Escribir "El porcentaje de ventas en el vuelo Rosario - Buenos Aires es: % " (cantidadPasajes[dimCanPas-1] * 100) / 80
					Imprimir "======================================================================="
					
				4:
					Imprimir " "
					Imprimir "======================================================================="
					Escribir "El porcentaje de ventas en el vuelo Mar Del Plata - Mendoza es: % " (cantidadPasajes[dimCanPas-1] * 100) / 80
					Imprimir "======================================================================="
					
			FinSegun
	FinSegun
	
FinSubProceso