Algoritmo PI_1TUP10_2023_GRUPO3 
	
	// DECLARACIÓN DE VARIABLES
	Definir datosPasajero, seleccion, nombre, apellido, telefono, rutaVuelo, dni, nroPasajero, equipajeBodega Como Cadena
	Definir capacidadPasajeros, dimCapPas, dimDatPas1, dimDatPas2, dimDatPas3, dimRutas, costoPasaje, asiento, cantidadPasajes, dimCanPas Como Entero
	Definir disponibilidad Como Logico
	
	dimDatPas1 = 4
	dimDatPas2 = 120
	dimDatPas3 = 9
	Dimension datosPasajero[dimDatPas1, dimDatPas2, dimDatPas3]
	
	dimCapPas=4
	Dimension capacidadPasajeros[dimCapPas]
	capacidadPasajeros[0] = 120
	capacidadPasajeros[1] = 120
	capacidadPasajeros[2] = 80
	capacidadPasajeros[3] = 80
	
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
				Escribir "A continuación le solicitaremos algunos datos para asignarle un lugar en nuestro viaje Vv~"
				
				eleccionRutaDeVuelo(rutaVuelo)
				
				Si verificarDisponibilidad(rutaVuelo, capacidadPasajeros, dimCapPas) Entonces
					
					solicitarNombre(nombre)
					solicitarApellido(apellido)
					solicitarDni(dni)
					solicitarTelefono(telefono)
					solicitarEquipajeBodega(equipajeBodega)
					solicitarNroPasajero(nroPasajero)
					
					precioPasaje(rutaVuelo, equipajeBodega, asiento , costoPasaje , capacidadPasajeros, dimCapPas, cantidadPasajes, dimCanPas)
					
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 0] = rutaVuelo
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 1] = nombre
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 2] = apellido
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 3] = dni
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 4] = telefono
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 5] = equipajeBodega
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 6] = nroPasajero
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 7] = ConvertirATexto(asiento)
					datosPasajero[ConvertirANumero(rutaVuelo)-1, asiento-1, 8] = ConvertirATexto(costoPasaje)
					
					resumenPasajero(rutaVuelo, nombre, apellido, dni, telefono, equipajeBodega, nroPasajero, asiento, costoPasaje)
					
				Sino
					
					Escribir "Lo sentimos, no hay disponilidad en el vuelo seleccionado."
					
				FinSi
				
			"2":
				Escribir " "
				Escribir "======================================================================="
				Escribir "Usted seleccionó: BUSCAR PASAJE VENDIDO"
				Escribir "A continuación le solicitaremos algunos datos para dar con el pasaje que está buscando Vv~" // CORREGIR ESTOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
				
				buscarPasajeroPorAsiento(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3)
				
			"3": 
				Escribir " "
				Escribir "======================================================================="
				Escribir "Usted seleccionó: BUSCAR PASAJERO"
				
				buscarPasajeroPorDNI(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3)
				
			"4":
				Escribir " "
				Escribir "======================================================================="
				Escribir "Usted seleccionó: MOSTRAR LISTA DE PASAJEROS"
				
				ordenarAscendenteDescendente(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3)
				
			"5":
				Escribir " "
				Escribir "======================================================================="
				Escribir "Usted seleccionó: MOSTRAR LISTA VENTAS"
				
				cantitdadesYPorcentajesVentas(cantidadPasajes, dimCanPas)
				
				
				
		FinSegun
		
	Mientras Que ConvertirANumero(seleccion) <> 6
	
	Escribir " "
	Escribir "Saliendo Vv~"
	Escribir "Muchas gracias por su visita."
	Escribir "AEROLINEAS UTN - Since 2023 flying the classroom Vv~"
	
FinAlgoritmo


//  =============================================================================================================================================================================================================
// 																																									SUBPROCESOS PUNTO 1
//  =============================================================================================================================================================================================================

// -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA SELEECIONAR LA RUTA DE VUELO (PUNTO 1)
SubProceso eleccionRutaDeVuelo(rutaVuelo Por Referencia)
	
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
			Escribir "Opción ingresada incorrecta, intente nuevamente."
			
		FinSi
		
	Mientras Que ConvertirANumero(rutaVuelo) < 1 o ConvertirANumero(rutaVuelo) > 4
	
FinSubProceso


// -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// FUNCION PARA VERIFICAR DISPONIBILIDAD EN EL VUELO SELECCIONADO (PUNTO 1)
Funcion disponibilidad = verificarDisponibilidad(rutaVuelo, capacidadPasajeros, dimCapPas)
	
	Definir disponibilidad Como Logico
	
	disponibilidad = Falso
	
	Si capacidadPasajeros[ConvertirANumero(rutaVuelo)-1] <> 0 Entonces
		
		disponibilidad = Verdadero
		
	FinSi
	
FinFuncion


// -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA SOLICITAR NOMBRE (PUNTO 1)

SubProceso solicitarNombre(nombre Por Referencia)
	
	Escribir " "
	Escribir "Ingrese su NOMBRE por favor:"
	
	Repetir
		
		Leer nombre
		
		Si Longitud(nombre) < 2 Entonces
			
			Escribir " "
			Escribir "El NOMBRE no es válido, intente nuevamente."
			
		FinSi
		
		Mientras  Que Longitud(nombre) < 2
			
FinSubProceso


// -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA SOLICITAR APELLIDO (PUNTO 1)

SubProceso solicitarApellido(apellido Por Referencia)
	
	Escribir " "
	Escribir "Ingrese su APELLIDO por favor:"
	
	Repetir
		
		Leer apellido
		
		Si Longitud(apellido) < 2 Entonces
			
			Escribir " "
			Escribir "El APELLIDO no es válido, intente nuevamente."
			
		FinSi
		
	Mientras Que Longitud(apellido) < 2 
	
FinSubProceso


// -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA SOLICITAR DNI (PUNTO 1)

SubProceso solicitarDni(dni Por Referencia)
	
	Escribir " "
	Escribir "Ingrese el DNI por favor:"
	
	Repetir
		
		Leer dni
		
		Si Longitud(dni) <= 6 o Longitud(dni) >= 9 Entonces
			
			Escribir " "
			Escribir "El DNI no es válido, intente nuevamente."
			
		FinSi
		
	Mientras Que Longitud(dni) <= 6 o Longitud(dni) >= 9
	
FinSubProceso


// -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA SOLICITAR TELEFONO (PUNTO 1)

SubProceso solicitarTelefono(telefono Por Referencia)
	
	Escribir " "
	Escribir "Ingrese su TELEFONO por favor (debe contener el prefijo +54):"
	
	Repetir
		
		Leer telefono
		
		Si Longitud(telefono) < 5 Entonces
			
			Escribir " "
			Escribir "El TELEFONO no es válido, intente nuevamente."
			
		FinSi
		
	Mientras que Longitud(telefono) < 5
	
FinSubProceso


// -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA SOLICITAR EQUIPAJE EN BODEGA (PUNTO 1)

SubProceso solicitarEquipajeBodega(equipajeBodega Por Referencia)
	
	Escribir " "
	Mostrar "Desea guardar el EQUIPAJE EN LA BODEGA? (ingrese 1 si lo desea o 0 si no lo desea):"
	
	
	Repetir
		
		Leer equipajeBodega
		
		Si ConvertirANumero(equipajeBodega) <> 1 y ConvertirANumero(equipajeBodega) <> 0 Entonces
			
			Escribir " "
			Escribir "Valor ingresado no válido, intente nuevamente."
			
		FinSi
		
	Mientras Que ConvertirANumero(equipajeBodega) <> 1 y ConvertirANumero(equipajeBodega) <> 0
	
FinSubProceso


// -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA SOLICITAR NRO DE PASAJERO (PUNTO 1)

SubProceso solicitarNroPasajero(nroPasajero Por Referencia)
	
	Escribir " "
	Mostrar "Si usted frecuenta AEROLÍNEAS UTN, ingrese su NÚMERO DE PASAJERO por favor:"
	
	Repetir
		
		Leer nroPasajero
		
		Si ConvertirANumero(nroPasajero) < 1 o ConvertirANumero(nroPasajero) > 99999 Entonces
			
			Escribir " "
			Escribir "Número de pasajero ingresado no válido, intente nuevamente."
			
		FinSi
		
	Mientras Que ConvertirANumero(nroPasajero) < 1 o ConvertirANumero(nroPasajero) > 99999
	
FinSubProceso


// -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA CALCULAR EL PRECIO DEL PASAJE (PUNTO 1)

SubProceso precioPasaje(rutaVuelo, equipajeBodega, asiento Por Referencia, costoPasaje Por Referencia, capacidadPasajeros, dimCapPas, cantidadPasajes, dimCanPas)
	
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
			
			Si ConvertirANumero(equipajeBodega) == 1 Entonces
				
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
			
			Si ConvertirANumero(equipajeBodega) == 1 Entonces
				
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
			
			Si ConvertirANumero(equipajeBodega) == 1 Entonces
				
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
			
			Si ConvertirANumero(equipajeBodega) == 1 Entonces
				
				costoPasaje = costoPasaje * 1.05
				
			FinSi
			
			asiento = capacidadPasajeros[ConvertirANumero(rutaVuelo)-1]
			capacidadPasajeros[ConvertirANumero(rutaVuelo)-1] = capacidadPasajeros[ConvertirANumero(rutaVuelo)-1]  - 1
			cantidadPasajes[ConvertirANumero(rutaVuelo)-1] = cantidadPasajes[ConvertirANumero(rutaVuelo)-1] + 1
			
	FinSegun
	
FinSubProceso


// -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA CALCULAR EL PRECIO DEL PASAJE (PUNTO 1)

SubProceso resumenPasajero(rutaVuelo, nombre, apellido, dni, telefono, equipajeBodega, nroPasajero, asiento, costoPasaje)
	
	Escribir " "
	Escribir "======================================================================="
	
	Segun rutaVuelo Hacer
		"1": 
			Escribir "Ruta: Buenos Aires - Bariloche"
		"2": 
			Escribir "Ruta: Bueno Aires - Salta"
		"3": 
			Escribir "Ruta: Rosario - Buenos Aires"
		"4": 
			Escribir "Ruta: Mar Del Plata - Mendoza"
	FinSegun
	
	Escribir  "Nombre y Apellido: ", nombre," ", apellido
	Escribir "DNI: ", dni
	Escribir "Teléfono: ", telefono
	
	Escribir Sin Saltar "Equipaje en bodega: "
	Si ConvertirANumero(equipajeBodega) = 1 Entonces
		
		Escribir "Sí"
		
	SiNo
		
		Escribir "No"
		
	FinSi
	
	Escribir "Número pasajero frecuente: ", nroPasajero
	Escribir "Asiento: ", asiento
	Escribir "Costo pasaje: $", costoPasaje
	Escribir "======================================================================="
	
FinSubProceso

//  =============================================================================================================================================================================================================
// 																																									FIN PUNTO 1
//  =============================================================================================================================================================================================================
// 																																									SUBPROCESOS PUNTO 2
//  =============================================================================================================================================================================================================

// -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA BUSCAR PASAJERO POR ASIENTO (PUNTO 2)

SubProceso buscarPasajeroPorAsiento(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3)
	
	Definir rutaABuscar Como Entero 
	Definir asientoABuscar Como Caracter
	Definir i, j Como Entero
    Definir encontrado Como Logico
	
	Escribir " "
	Escribir "Ingrese el destino de su vuelo"
	Escribir "1. Buenos Aires - Bariloche"
	Escribir "2. Bueno Aires - Salta"
	Escribir "3. Rosario - Buenos Aires"
	Escribir "4. Mar Del Plata - Mendoza"
	
	Repetir
		
		Leer rutaABuscar
		
		Si rutaABuscar < 1 o rutaABuscar > 4 Entonces
			
			Escribir " "
			Escribir "Opción ingresada incorrecta, intente nuevamente."
			
		FinSi
		
	Mientras Que rutaABuscar < 1 o rutaABuscar > 4
	
	Escribir " "
	Escribir "Ingrese el número de asiento:"// VALIDAR
	
	Segun rutaABuscar Hacer
		
		1, 2:
			Repetir
				
				Leer asientoABuscar
				
				Si ConvertirANumero(asientoABuscar) < 1 o ConvertirANumero(asientoABuscar) > 120 Entonces
					
					Escribir " "
					Escribir "Asiento ingresado incorrectamente, intente nuevamente."
					
				FinSi
				
			Mientras Que ConvertirANumero(asientoABuscar) < 1 o ConvertirANumero(asientoABuscar) > 120
			
		3, 4:
			Repetir
				
				Leer asientoABuscar
				
				Si ConvertirANumero(asientoABuscar) < 1 o ConvertirANumero(asientoABuscar) > 80 Entonces
					
					Escribir " "
					Escribir "Asiento ingresado incorrecto, intente nuevamente."
					
				FinSi
				
			Mientras Que ConvertirANumero(asientoABuscar) < 1 o ConvertirANumero(asientoABuscar) > 80	
			
	FinSegun
	
	Para i <- 0 Hasta dimDatPas2-1 Hacer
		
		Si datosPasajero[rutaABuscar-1, i, 7] == asientoABuscar Entonces
			
			Escribir " "
			Escribir "======================================================================="
			Segun datosPasajero[rutaABuscar-1, i, 0] Hacer
				
				"1": 
					Escribir "Ruta: Buenos Aires - Bariloche"
				"2": 
					Escribir "Ruta: Bueno Aires - Salta"
				"3": 
					Escribir "Ruta: Rosario - Buenos Aires"
				"4": 
					Escribir "Ruta: Mar Del Plata - Mendoza"
					
			FinSegun
			Escribir  "Nombre y Apellido: ", datosPasajero[rutaABuscar-1, i, 1]," ", datosPasajero[rutaABuscar-1, i, 2]			
			Escribir "DNI: ", datosPasajero[rutaABuscar-1, i, 3]
			Escribir "======================================================================="
			encontrado = Verdadero
			
		FinSi
		
    FinPara
	
    si !encontrado Entonces
		
		Escribir " "
		Escribir "El asiento por el cual está consultando no pertenece a ningún pasajero."
		
    FinSi
	
FinSubProceso

//  =============================================================================================================================================================================================================
// 																																									FIN PUNTO 2
//  =============================================================================================================================================================================================================
// 																																									SUBPROCESOS PUNTO 3
//  =============================================================================================================================================================================================================

// ----------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA BUSCAR PASAJERO POR DNI (PUNTO 3)

SubProceso buscarPasajeroPorDNI(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3)
	
	Definir dniABuscar Como Caracter
    Definir i, j Como Entero
    Definir encontrado Como Logico
	
	encontrado = Falso
	
    Escribir "Ingrese el DNI del pasajero a buscar: "
	
	Repetir
		
		Leer dniABuscar
		
		Si Longitud(dniABuscar) <= 6 o Longitud(dniABuscar) >= 9 Entonces
			
			Escribir " "
			Escribir "El DNI no es válido, intente nuevamente."
			
		FinSi
		
	Mientras Que Longitud(dniABuscar) <= 6 o Longitud(dniABuscar) >= 9
    
    Para i <- 0 Hasta dimDatPas1-1 Hacer
        Para j <- 0 Hasta dimDatPas2-1 Hacer
			
            Si datosPasajero[i, j, 3] == dniABuscar Entonces
				
				Escribir " "
				Escribir "======================================================================="
				Segun datosPasajero[i, j, 0] Hacer
					"1": 
						Escribir "Ruta: Buenos Aires - Bariloche"
					"2": 
						Escribir "Ruta: Bueno Aires - Salta"
					"3": 
						Escribir "Ruta: Rosario - Buenos Aires"
					"4": 
						Escribir "Ruta: Mar Del Plata - Mendoza"
				FinSegun
				Escribir "Nombre: ", datosPasajero[i, j, 1]," ", datosPasajero[i, j, 2]
				Escribir "DNI: ", datosPasajero[i, j, 3]
				Escribir "Teléfono: ", datosPasajero[i, j, 4]
				Escribir "Asiento: ", datosPasajero[i, j, 7]
				Escribir "======================================================================="
				encontrado = Verdadero
				
            FinSi
			
        FinPara
    FinPara
	
    si !encontrado Entonces
		
		Escribir ""
		Escribir "El pasajero de DNI: ", dniABuscar, " no se encontró en nuestra base de datos."
		
    FinSi
	
FinSubProceso

//  =============================================================================================================================================================================================================
// 																																									FIN PUNTO 3
//  =============================================================================================================================================================================================================
// 																																									SUBPROCESOS PUNTO 4
//  =============================================================================================================================================================================================================

// -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA ORDENAR EL ARREGLO SEGÚN CORRESPONDA ASC-DESC (PUNTO 4)
SubProceso ordenarAscendenteDescendente(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3)
	
	Definir opcionOrdenamiento, opcionVuelo Como Entero
	Definir bandera, buscar Como Logico
	bandera = Falso
	buscar = Falso
	
	Repetir
		
		Imprimir " "
		Escribir "Por favor seleccione el vuelo que quiere ordenar de forma ascendente:"
		Escribir "1. Buenos Aires - Bariloche"
		Escribir "2. Bueno Aires - Salta"
		Escribir "3. Rosario - Buenos Aires"
		Escribir "4. Mar Del Plata - Mendoza"
		
		Leer opcionVuelo
		
		Si opcionVuelo < 1 o opcionVuelo > 4 Entonces
			
			Escribir " "
			Escribir "Opción ingresada no válida. Intente nuevamente."
			
		FinSi
		
	Mientras Que opcionVuelo < 1 o opcionVuelo > 4
	
	Repetir 
		
		Escribir " "
		Escribir "Seleccione una opción de ordenamiento:"
		Escribir "1. Por número de asiento Ascendente"
		Escribir "2. Por número de asiento Descendente"
		
		Leer opcionOrdenamiento
		
		Si opcionOrdenamiento < 1 o opcionOrdenamiento > 2 Entonces
			
			Escribir " "
			Escribir "Opción ingresada no válida. Intente nuevamente."
			
		FinSi
		
	Mientras Que opcionOrdenamiento < 1 o opcionOrdenamiento > 2
	
	Segun opcionOrdenamiento
		1:
			Segun opcionVuelo
				1:	
					Para i <- 0 Hasta dimDatPas2-1 Hacer
						
						Si datosPasajero[opcionVuelo-1, i, 7] == asientoABuscar Entonces
							
							buscar = Verdadero
							
						FinSi
						
					FinPara
					
					
					Si buscar Entonces
						
						Escribir " "
						Escribir "A continuación le mostramos los asientos asignados del vuelo Buenos Aires - Bariloche ascendentemente."
						Escribir " "
						Escribir "======================================================================="
						
						ordernarArregloASC(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
						mostrarArreglo(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
						
						Imprimir "======================================================================="
						
					SiNo
						
						Escribir " "
						Escribir "No hay asientos asignados en el vuelo seleccionado."
						
					FinSi
					
				2:
					Para i <- 0 Hasta dimDatPas2-1 Hacer
						
						Si datosPasajero[opcionVuelo-1, i, 7] == asientoABuscar Entonces
							
							buscar = Verdadero
							
						FinSi
						
					FinPara
					
					
					Si buscar Entonces
						
						Escribir " "
						Escribir "A continuación le mostramos los asientos asignados del vuelo Bueno Aires - Salta ascendentemente."
						Escribir " "
						Escribir "======================================================================="
						
						ordernarArregloASC(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
						mostrarArreglo(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
						
						Imprimir "======================================================================="
						
					SiNo
						
						Escribir " "
						Escribir "No hay asientos asignados en el vuelo seleccionado."
						
					FinSi
					
				3:
					Para i <- 0 Hasta dimDatPas2-1 Hacer
						
						Si datosPasajero[opcionVuelo-1, i, 7] == asientoABuscar Entonces
							
							buscar = Verdadero
							
						FinSi
						
					FinPara
					
					
					Si buscar Entonces
						
						Escribir " "
						Escribir "A continuación le mostramos los asientos asignados del vuelo Rosario - Buenos Aires ascendentemente."
						Escribir " "
						Escribir "======================================================================="
						
						ordernarArregloASC(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
						mostrarArreglo(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
						
						Imprimir "======================================================================="
						
					SiNo
						
						Escribir " "
						Escribir "No hay asientos asignados en el vuelo seleccionado."
						
					FinSi
					
				4:
					Para i <- 0 Hasta dimDatPas2-1 Hacer
						
						Si datosPasajero[opcionVuelo-1, i, 7] == asientoABuscar Entonces
							
							buscar = Verdadero
							
						FinSi
						
					FinPara
					
					
					Si buscar Entonces
						
						Escribir " "
						Escribir "A continuación le mostramos los asientos asignados del vuelo Mar Del Plata - Mendoza ascendentemente."
						Escribir " "
						Escribir "======================================================================="
						
						ordernarArregloASC(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
						mostrarArreglo(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
						
						Imprimir "======================================================================="
						
					SiNo
						
						Escribir " "
						Escribir "No hay asientos asignados en el vuelo seleccionado."
						
					FinSi
					
			FinSegun
			
		2:
			Segun dimDatPas1
				1:					
					Para i <- 0 Hasta dimDatPas2-1 Hacer
						
						Si datosPasajero[opcionVuelo-1, i, 7] == asientoABuscar Entonces
							
							buscar = Verdadero
							
						FinSi
						
					FinPara
					
					
					Si buscar Entonces
						
						Escribir " "
						Escribir "A continuación le mostramos los asientos asignados del vuelo Buenos Aires - Bariloche descendentemente."
						Escribir " "
						Escribir "======================================================================="
						
						ordernarArregloDESC(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
						mostrarArreglo(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
						
						Imprimir "======================================================================="
						
					SiNo
						
						Escribir " "
						Escribir "No hay asientos asignados en el vuelo seleccionado."
						
					FinSi
					
				2:
					Para i <- 0 Hasta dimDatPas2-1 Hacer
						
						Si datosPasajero[opcionVuelo-1, i, 7] == asientoABuscar Entonces
							
							buscar = Verdadero
							
						FinSi
						
					FinPara
					
					
					Si buscar Entonces
						
						Escribir " "
						Escribir "A continuación le mostramos los asientos asignados del vuelo Bueno Aires - Salta descendentemente."
						Escribir " "
						Escribir "======================================================================="
						
						ordernarArregloDESC(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
						mostrarArreglo(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
						
						Imprimir "======================================================================="
						
					SiNo
						
						Escribir " "
						Escribir "No hay asientos asignados en el vuelo seleccionado."
						
					FinSi
					
				3:
					Para i <- 0 Hasta dimDatPas2-1 Hacer
						
						Si datosPasajero[opcionVuelo-1, i, 7] == asientoABuscar Entonces
							
							buscar = Verdadero
							
						FinSi
						
					FinPara
					
					
					Si buscar Entonces
						
						Escribir " "
						Escribir "A continuación le mostramos los asientos asignados del vuelo Rosario - Buenos Aires descendentemente."
						Escribir " "
						Escribir "======================================================================="
						
						ordernarArregloDESC(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
						mostrarArreglo(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
						
						Imprimir "======================================================================="
						
					SiNo
						
						Escribir " "
						Escribir "No hay asientos asignados en el vuelo seleccionado."
						
					FinSi
					
				4:
					Para i <- 0 Hasta dimDatPas2-1 Hacer
						
						Si datosPasajero[opcionVuelo-1, i, 7] == asientoABuscar Entonces
							
							buscar = Verdadero
							
						FinSi
						
					FinPara
					
					
					Si buscar Entonces
						
						Escribir " "
						Escribir "A continuación le mostramos los asientos asignados del vuelo Mar Del Plata - Mendoza descendentemente."
						Escribir " "
						Escribir "======================================================================="
						
						ordernarArregloDESC(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
						mostrarArreglo(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
						
						Imprimir "======================================================================="
						
					SiNo
						
						Escribir " "
						Escribir "No hay asientos asignados en el vuelo seleccionado."
						
					FinSi
					
			FinSegun
	FinSegun
	
FinSubProceso


// -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA ORDENAR EL ARREGLO SEGÚN CORRESPONDA ASC-DESC (PUNTO 4)

SubProceso ordernarArregloASC(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
	
	Definir i, j, k Como Entero
	Definir auxASIENTO, auxNOMBRE, auxAPELLIDO Como Caracter
	
	para i<-0 hasta dimDatPas2-2 Hacer
		para j<-i+1 hasta dimDatPas2-1 Hacer
			
			si ConvertirANumero(datosPasajero[opcionVuelo-1, i, 7]) > ConvertirANumero(datosPasajero[opcionVuelo-1, j, 7]) Entonces
				
				Para k<-0 Hasta dimDatPas3-1 Hacer
					
					aux <- datosPasajero[opcionVuelo-1, i, k]
					
					datosPasajero[opcionVuelo-1, i, k] <- datosPasajero[opcionVuelo-1, j, k]
					
					datosPasajero[opcionVuelo-1, j, k] <- aux
					
				Fin Para
				
			FinSi
		FinPara
	FinPara
	
FinSubProceso


// -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA ORDENAR EL ARREGLO SEGÚN CORRESPONDA ASC-DESC (PUNTO 4)

SubProceso ordernarArregloDESC(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
	
	Definir i, j Como Entero
	Definir aux Como Caracter
	
	para i<-0 hasta dimDatPas2-2 Hacer
		para j<-i+1 hasta dimDatPas2-1 Hacer
			
			si ConvertirANumero(datosPasajero[opcionVuelo-1, i, 7]) < ConvertirANumero(datosPasajero[opcionVuelo-1, j, 7]) Entonces
				
				Para k<-0 Hasta dimDatPas3-1 Hacer
					
					aux <- datosPasajero[opcionVuelo-1, i, k]
					
					datosPasajero[opcionVuelo-1, i, k] <- datosPasajero[opcionVuelo-1, j, k]
					
					datosPasajero[opcionVuelo-1, j, k] <- aux
					
				Fin Para
				
			FinSi
		FinPara
	FinPara
	
FinSubProceso



// -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA ORDENAR EL ARREGLO SEGÚN CORRESPONDA ASC-DESC (PUNTO 4)

SubProceso mostrarArreglo(datosPasajero, dimDatPas1, dimDatPas2, dimDatPas3, opcionVuelo)
	
	Definir i Como Entero
	
	Para i<-0 Hasta dimDatPas2-1 Hacer
		
		Si ConvertirANumero(datosPasajero[opcionVuelo-1, i, 7]) <> 0 Entonces
			
			Escribir "Asiento " ConvertirANumero(datosPasajero[opcionVuelo-1, i, 7]) ": " datosPasajero[opcionVuelo-1, i, 1] " " datosPasajero[opcionVuelo-1, i, 2]
			
		FinSi
		
		
	Fin Para
	
FinSubProceso


//  =============================================================================================================================================================================================================
// 																																									FIN PUNTO 4
//  =============================================================================================================================================================================================================
// 																																									SUBPROCESOS PUNTO 5
//  =============================================================================================================================================================================================================

// -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUBPROCESO PARA INDICAR LA CANTIDAD DE PASAJES EN CADA VUELO Y SU PORCENTAJE (PUNTO 5)

SubProceso cantitdadesYPorcentajesVentas(cantidadPasajes, dimCanPas)
	
	Repetir
		
		Escribir " "
		Escribir "Seleccione el vuelo por favor:"
		Escribir "1. Buenos Aires - Bariloche"
		Escribir "2. Bueno Aires - Salta"
		Escribir "3. Rosario - Buenos Aires"
		Escribir "4. Mar Del Plata - Mendoza"
		
		leer dimCanPas
		
		Si dimCanPas < 1 o dimCanPas > 4 Entonces
			
			Escribir " "
			Escribir "Opción ingresada no válida. Intente nuevamente."
			
		FinSi
		
	Mientras Que dimCanPas < 1 o dimCanPas > 4
	
	Definir opcionDeMuestra Como Entero
	
	Repetir 
		
		Escribir " "
		Escribir "Seleccione una opción para darle el listado:"
		Escribir "1. Cantidad de pasajes vendido por ruta aérea"
		Escribir "2. Porcentaje de ventas por ruta aérea"
		
		Leer opcionDeMuestra
		
		Si opcionDeMuestra < 1 o opcionDeMuestra > 2 Entonces
			
			Escribir " "
			Escribir "Opción ingresada no válida. Intente nuevamente."
			
		FinSi
		
	Mientras Que opcionDeMuestra < 1 o opcionDeMuestra > 2
	
	Segun opcionDeMuestra
		1:
			Segun dimCanPas
				1:					
					Escribir " "
					Escribir "======================================================================="
					Escribir "La cantidad de pasajes vendidos de Buenos Aires - Bariloche es: " cantidadPasajes[dimCanPas-1]
					Escribir "======================================================================="
					
				2:
					Escribir " "
					Escribir "======================================================================="
					Escribir "La cantidad de pasajes vendidos de Bueno Aires - Salta es: " cantidadPasajes[dimCanPas-1]
					Escribir "======================================================================="
					
				3:
					Escribir " "
					Escribir "======================================================================="
					Escribir "La cantidad de pasajes vendidos de Rosario - Buenos Aires es: " cantidadPasajes[dimCanPas-1]
					Escribir "======================================================================="
					
				4:
					Escribir " "
					Escribir "======================================================================="
					Escribir "La cantidad de pasajes vendidos de Mar Del Plata - Mendoza es: " cantidadPasajes[dimCanPas-1]
					Escribir "======================================================================="
					
			FinSegun           
			
		2:
			Segun dimCanPas
				1:			
					Escribir " "
					Escribir "======================================================================="
					Escribir "El porcentaje de ventas en el vuelo Buenos Aires - Bariloche es: % " (cantidadPasajes[dimCanPas-1] * 100) / 120
					Escribir "======================================================================="
					
				2:
					Escribir " "
					Escribir "======================================================================="
					Escribir "El porcentaje de ventas en el vuelo Bueno Aires - Salta es: % " (cantidadPasajes[dimCanPas-1] * 100) / 120
					Escribir "======================================================================="
					
				3:
					Escribir " "
					Escribir "======================================================================="
					Escribir "El porcentaje de ventas en el vuelo Rosario - Buenos Aires es: % " (cantidadPasajes[dimCanPas-1] * 100) / 80
					Escribir "======================================================================="
					
				4:
					Escribir " "
					Escribir "======================================================================="
					Escribir "El porcentaje de ventas en el vuelo Mar Del Plata - Mendoza es: % " (cantidadPasajes[dimCanPas-1] * 100) / 80
					Escribir "======================================================================="
					
			FinSegun
	FinSegun
	
FinSubProceso