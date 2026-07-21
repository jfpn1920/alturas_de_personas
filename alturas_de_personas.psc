Algoritmo alturas_de_personas
	Definir opcion, totalPersonas Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir nombre Como Caracter
	Definir edad Como Entero
	Definir sexo Como Caracter
	Definir altura Como Real
	Definir peso Como Real
	Definir estado Como Caracter
	Dimension id[100]
	Dimension nombre[100]
	Dimension edad[100]
	Dimension sexo[100]
	Dimension altura[100]
	Dimension peso[100]
	Dimension estado[100]
	totalPersonas <- 0
	siguienteID <- 1
	//-------------------------------------//
	//--|menu_principal_alturas_personas|--//
	//-------------------------------------//
	Repetir
		Escribir "menu principal alturas de personas"
		Escribir "1) registrar persona"
		Escribir "2) editar persona"
		Escribir "3) eliminar persona"
		Escribir "4) buscar persona"
		Escribir "5) listar personas"
		Escribir "6) ver detalles de la persona"
		Escribir "7) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//-----------------------//
			//--|registrar_persona|--//
			//-----------------------//
			1:
				Escribir "registrar persona"
				id[totalPersonas + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalPersonas + 1]
				Escribir "ingrese el nombre:"
				Leer nombre[totalPersonas + 1]
				Escribir "ingrese la edad:"
				Leer edad[totalPersonas + 1]
				Escribir "ingrese el sexo:"
				Leer sexo[totalPersonas + 1]
				Escribir "ingrese la altura (metros):"
				Leer altura[totalPersonas + 1]
				Escribir "ingrese el peso (kg):"
				Leer peso[totalPersonas + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalPersonas + 1]
				totalPersonas <- totalPersonas + 1
				Escribir "persona registrada correctamente."
			//--------------------//
			//--|editar_persona|--//
			//--------------------//
			2:
				Escribir "editar persona"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalPersonas Hacer
						Escribir id[i], " | ", nombre[i], " | ", edad[i], " | ", sexo[i], " | ", altura[i], " | ", peso[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la persona:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalPersonas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo nombre:"
							Leer nombre[i]
							Escribir "ingrese la nueva edad:"
							Leer edad[i]
							Escribir "ingrese el nuevo sexo:"
							Leer sexo[i]
							Escribir "ingrese la nueva altura:"
							Leer altura[i]
							Escribir "ingrese el nuevo peso:"
							Leer peso[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "persona editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una persona con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|eliminar_persona|--//
			//----------------------//
			3:
				Escribir "eliminar persona"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalPersonas Hacer
						Escribir id[i], " | ", nombre[i], " | ", edad[i], " | ", sexo[i], " | ", altura[i], " | ", peso[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la persona:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalPersonas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalPersonas Entonces
								Para j <- i Hasta totalPersonas - 1 Hacer
									id[j] <- id[j+1]
									nombre[j] <- nombre[j+1]
									edad[j] <- edad[j+1]
									sexo[j] <- sexo[j+1]
									altura[j] <- altura[j+1]
									peso[j] <- peso[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalPersonas <- totalPersonas - 1
							Escribir "persona eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una persona con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|buscar_persona|--//
			//--------------------//
			4:
				Escribir "buscar persona"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					Escribir "ingrese el id de la persona:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalPersonas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", nombre[i], " | ", edad[i], " | ", sexo[i], " | ", altura[i], " | ", peso[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una persona con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|listar_personas|--//
			//---------------------//
			5:
				Escribir "listar personas"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalPersonas Hacer
						Escribir id[i], " | ", nombre[i], " | ", edad[i], " | ", sexo[i], " | ", altura[i], " | ", peso[i], " | ", estado[i]
					FinPara
				FinSi
			//--------------------------------//
			//--|ver_detalles_de_la_persona|--//
			//--------------------------------//
			6:
				Escribir "ver detalles de la persona"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					Escribir "ingrese el id de la persona:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalPersonas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la persona"
							Escribir "id: ", id[i]
							Escribir "nombre: ", nombre[i]
							Escribir "edad: ", edad[i]
							Escribir "sexo: ", sexo[i]
							Escribir "altura: ", altura[i]
							Escribir "peso: ", peso[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una persona con ese id."
					FinSi
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			7:
				Escribir "gracias por utilizar el sistema de alturas de personas."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo