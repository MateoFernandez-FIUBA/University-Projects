import time
from random import shuffle, randint
import os

                                    #POST-CONDICIONES tablero_vacio(todas sus variantes)
                                    #Devuelve, en ASCII, el tablero de juego en cuestion vacio,
                                    # a modo puramente estetico.

def tablero_vacio_4x4() -> None:
    print("    A    B    C    D   ")
    print("  ╔════╦════╦════╦════╗")
    print("1 ╠ <> ╬ <> ╬ <> ╬ <> ╣")
    print("  ╠════╬════╬════╬════╣")
    print("2 ╠ <> ╬ <> ╬ <> ╬ <> ╣")
    print("  ╠════╬════╬════╬════╣")
    print("3 ╠ <> ╬ <> ╬ <> ╬ <> ╣")
    print("  ╠════╬════╬════╬════╣")
    print("4 ╠ <> ╬ <> ╬ <> ╬ <> ╣")
    print("  ╚════╩════╩════╩════╝")
    print("""
    Instrucciones:\n\n Escoje una coordenada de la grilla de la siguiente manera: \n - Elije una letra \n - Elije un numero \n Y recuerda: Usa minusculas!
 
    """)
def tablero_vacio_8x8() -> None:
    print("     A    B    C    D    E    F    G    H   ")
    print("   ╔════╦════╦════╦════╦════╦════╦════╦════╗")
    print(" 1 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬")
    print(" 2 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬")
    print(" 3 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬")
    print(" 4 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬")
    print(" 5 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬")
    print(" 6 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬")
    print(" 7 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬")
    print(" 8 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬")
    print("   ╚════╩════╩════╩════╩════╩════╩════╩════╝")
    print("""
    Instrucciones:\n Escoje una coordenada de la grilla de la siguiente manera: \n - Elije una letra \n - Elije un numero \n Y recuerda: Usa minusculas!
 
    """)
def tablero_vacio_12x12() -> None:
    print("     A    B    C    D    E    F    G    H    I    J    K    L   ")
    print("   ╔════╦════╦════╦════╦════╦════╦════╦════╦════╦════╦════╦════╗")
    print(" 1 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╣")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╣")
    print(" 2 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╣")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╣")
    print(" 3 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╣")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╣")
    print(" 4 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╣")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╣")    
    print(" 5 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╣")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╣")
    print(" 6 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╣")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╣")
    print(" 7 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╣")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╣")
    print(" 8 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╣")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╣")
    print(" 9 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╣")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╣")
    print("10 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╣")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╣")
    print("11 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╣")
    print("   ╠════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╬════╣")
    print("12 ╠ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╬ <> ╣")
    print("   ╚════╩════╩════╩════╩════╩════╩════╩════╩════╩════╩════╩════╝")
    print("""
    Instrucciones:\n Escoje una coordenada de la grilla de la siguiente manera: \n - Elije una letra \n - Elije un numero \n Y recuerda: Usa minusculas!
 
    """)        

                        
def borrar_pantalla() -> None:
    #POST-CONDICIONES: Usando la libreria "os", borra lo escrito en consola cuando es ejecutado.

    if os.name == "posix":
        os.system("clear")
    elif os.name == "ce" or os.name == "nt" or os.name == "dos":
        os.system("cls")
                                    
                                    
def generar_matriz_juego(tam_matriz: int) -> list:
    #PRE-CONDICIONES: Recibe el tamanio de la matriz de juego y, segun su valor, se adapta
    #para crear el tablero de juego adecuadamente.

    #POST-CONDICIONES: Devuelve el/los tableros para su uso

    numeros = []
    for i in range(1, ((tam_matriz**2) // 2) + 1):
        numeros.append(i)
        numeros.append(i)
    shuffle(numeros)
    matriz = [numeros[x:x+tam_matriz] for x in range(0, len(numeros), tam_matriz)]
    return matriz
                                                    
                                                    
def mostrar_tablero(tamanio_juego: int) -> None:
    #PRE-CONDICIONES: Recibe el tamanio de juego.

    #POST-CONDICIONES: Muestra el tablero vacio segun la duracion de la partida y segun el accionar del jugador.
    
    if tamanio_juego == 4:
        tablero_vacio_4x4()
    elif tamanio_juego == 8:
        tablero_vacio_8x8()
    elif tamanio_juego == 12:
        tablero_vacio_12x12()
                                                               

def tabla_posiciones(ganadores: list, partidas_ganadas: dict, probabilidades: list, modo_debug: bool) -> None:
    #PRE-CONDICIONES: Recibe datos del menu y las partidas ganadas, en caso que haya.

    #POST-CONDICIONES: Muestra el leaderbord del juego. Mostrando los jugadores y las partidas ganadas.
    #Difiere la ejecucion segun si se ejecuta la funcion antes de jugar alguna partida, y luego de una.

    print("Estos son los jugadores que han ganado las ultimas partidas: \n")
    if not ganadores:
        print("Todavia no hay partidas jugadas!\n")
        input("Pulsa enter para volver al menu principal \n")
        menu(ganadores, {}, probabilidades, modo_debug)
    else:
        print("Estos son los jugadores mas destacados:  \t\t Partidas ganadas:\n")
        print(f"\t\t{ganadores}  \t\t\t\t\t\t {partidas_ganadas.get('Partidas Ganadas')}")
        
        ir_menu = input("Pulsa enter para volver al menu principal \n")
        if ir_menu == "":
            menu(ganadores, partidas_ganadas, probabilidades, modo_debug)
                                    
                                    
def debug(probabilidades: list) -> bool:
    #PRE-CONDICIONES: Recibe las probabilidades del menu.

    #POST-CONDICIONES: Habilita el modo debug. Otorga todas las cartas especiales y la posibilidad de ver las matrices de juego.

    modo_debug = True
    menu([], {}, probabilidades, modo_debug)
    return modo_debug
                                    

def menu(ganadores: list, partidas_ganadas: dict, probabilidades: list, modo_debug: bool) -> None:
    #PRE-CONDICIONES: Recibe la lista de probabilidades, si la hay, y la orden booleana del Modo Debug.

    #POST-CONDICIONES: Funciona como nexo entre las demas funciones. Llama a ajustes, tabla de posiciones,
    #y tambien desde aca se da inicio al juego segun el valor escogido.

    cierre_menu = False
    while not cierre_menu:
        print("\n1- Empezar una nueva partida")
        print("2- Ajustar probabilidades")
        print("3- Tabla de posiciones")
        print("4- Modo debug (Otorga todas las cartas especiales a ambos jugadores al iniciar la partida)\n")
        menu_choice = input("Escriba 1, 2, 3 o 4:\n ")

        if menu_choice == "1":
            nueva_partida(probabilidades, modo_debug)
        elif menu_choice == "2":
            ajustes(ganadores, partidas_ganadas, probabilidades, modo_debug)
        elif menu_choice == "3":
            tabla_posiciones(ganadores,partidas_ganadas, probabilidades, modo_debug)
        elif menu_choice == "4":
            borrar_pantalla()
            print("--- Modo debug activo --- \n")
            debug(probabilidades)
                        
                                    

def nueva_partida(probabilidades: list, modo_debug: bool) -> None:
    #PRE-CONDICIONES: Recibe datos del menu que luego envia a otra funcion, que seran utiles en la partida.

    #POST-CONDICIONES: Pregunta y determina el tamanio de juego. Luego llama a la funcion que inicia el juego.
                                              
    print("\n Elija la disposicion del tablero: \n")                                                                    
    print("4 x 4 (escriba 1)")                                                                                          
    print("8 x 8 (escriba 2)")                                                                                          
    print("12 x 12 (escriba 3) \n")

    tamanio_juego = input("...")

    print("Creando juego... Por favor, espere\n")
    time.sleep(1)
    borrar_pantalla()
    print("Jugaras en este tablero: \n")
    if tamanio_juego == "1":
        tablero_vacio_4x4()
    elif tamanio_juego == "2":
        tablero_vacio_8x8()
    else:
        tablero_vacio_12x12()
    iniciar_juego(probabilidades, modo_debug, int(tamanio_juego))


def ajustes(ganadores: list, partidas_ganadas: dict, probabilidades: list, modo_debug: bool) -> list:
    #PRE-CONDICIONES: Recibe datos del menu.

    #POST-CONDICIONES: Segun accion del jugador, se decide si jugar con las configuraciones por 
    #default, o jugar con las probabilidades asignadas por el jugador.

    ajustes = True
    while ajustes:
        print("Aqui puedes definir las probabilidades de las cartas especiales!\n")
        print("- Accion vacia")
        print("- Carta Replay")
        print("- Carta Toti")
        print("- Carta Layout")
        print("- Carta Fatality \n")
        print("Que deseas hacer? \n")
        ajustes_decision = int(input("1- Jugar con las probabilidades por defecto \n2- Asignar probabilidades a mano \n"))
        if ajustes_decision == 1:
            probabilidades = [0, 50, 50, 62, 62, 74, 74, 86, 86, 100]
            ajustes = False
        elif ajustes_decision == 2:
            input("Pulsa enter para empezar a modificar las cartas. \n")

            print("\t\t===== CARTA VACIA =====")
            nada_inicial = 0
            nada_final = int(input("Que chances quieres de que no salga nada?: "))

            print("\t\t===== CARTA TOTI =====")
            toti_inicial = nada_final
            toti_final = (int(input("Que chances quieres de que salga la Carta Toti?: ")) + toti_inicial)

            print("\t\t===== CARTA FATALITY =====")
            fatality_inicial = toti_final
            fatality_final = (int(input("Que chances quieres de que salga la Carta Fatality?: ")) + fatality_inicial)

            print("\t\t===== CARTA LAYOUT =====")
            layout_inicial = fatality_final
            layout_final = (int(input("Que chances quieres de que salga la Carta Layout?: ")) + layout_inicial)

            print("\t\t===== CARTA REPLAY =====")
            replay_inicial = layout_final
            replay_final = (int(input("Que chances quieres de que salga la Carta Replay?: ")) + replay_inicial)

            probabilidades = [nada_inicial, nada_final, toti_inicial, toti_final, fatality_inicial, fatality_final, layout_inicial, layout_final, replay_inicial, replay_final]
            ajustes = False
                                    
    menu(ganadores, partidas_ganadas, probabilidades, modo_debug)


#CARTAS
def carta_toti(tablero:list, modo_debug: bool) -> list:
    #PRE-CONDICIONES: Recibe el tablero del jugador que la invoca.

    #POST-CONDICIONES
    #Espeja el tablero de forma vertical u horizontal con una aleatoriedad del 50%

    print("Has usado la carta Toti!")
    time.sleep(1)
    toti_chance = randint(0,10)
    if toti_chance <= 5:
        tablero.reverse()
        #---INICIO DEBUG---
        if modo_debug:
            print(tablero)
        #---FIN DEBUG---
    else:
        for i in tablero:
            i.reverse()
        #---INICIO DEBUG---
        if modo_debug:
            print(tablero)
        #---FIN DEBUG---
    return tablero
                                    
    
def carta_fatality(datos_jugador_activo: list, modo_debug: bool, tablero_j1: list, tablero_j2: list) -> list:
    #PRE-CONDICIONES: Recibe los datos del jugador, y el tablero del oponente.

    #POST-CONDICIONES: Transpone el tablero del jugador contrario al que invoco la carta.
    
    jugador_activo = datos_jugador_activo[0]
    print("Has usado la carta Fatality!")
    time.sleep(1)
    #---INICIO DEBUG---
    if modo_debug:
        
        if jugador_activo == 1:
            for fila in tablero_j2:
                print(fila)
            tablero_j2 = [[tablero_j2[j][i] for j in range(len(tablero_j2))] for i in range(len(tablero_j2[0]))]
            print("\n")
            for fila in tablero_j2:
                print(fila)
            print("Se ha modificado el tablero del Jugador 2! \n")
            return tablero_j2

        elif jugador_activo == 2:
            for fila in tablero_j1:
                print(fila)
            tablero_j1 = [[tablero_j1[j][i] for j in range(len(tablero_j1))] for i in range(len(tablero_j1[0]))]
            print("\n")
            for fila in tablero_j1:
                print(fila)
            print("Se ha modificado el tablero del Jugador 1! \n")
            return tablero_j1
    #---FIN DEBUG---
    else:
        if jugador_activo == 1:
            print("Has alterado el tablero de tu oponente!")
            tablero = tablero_j2
            tablero_j2 = [[tablero_j2[j][i] for j in range(len(tablero_j2))] for i in range(len(tablero_j2[0]))]
            return tablero

        elif jugador_activo == 2:
            print("Has alterado el tablero de tu oponente!")
            tablero = tablero_j1
            tablero_j1 = [[tablero_j1[j][i] for j in range(len(tablero_j1))] for i in range(len(tablero_j1[0]))]
            return tablero

                                    
def carta_layout(tablero: list, valor_layout: int, modo_debug: bool) -> list:
    #PRE-CONDICIONES: Recibe el tablero del jugador que la invoca, como asi tambien el valor sobre
    #el cual trabajara la carta.

    #POST-CONDICIONES: Rompe el tablero del jugador que la invoco, lo mezcla, lo vuelve a armar y lo devuelve.
    print("Has usado la carta Layout!")
    time.sleep(1)
    for i in range(0,4):
        tablero.extend(tablero[i])
    del tablero[0:4]
    shuffle(tablero)
    tablero = [tablero[x:x+valor_layout] for x in range(0, len(tablero), valor_layout)]
    #---INICIO DEBUG---
    if modo_debug:
        print(tablero)
    #---FIN DEBUG---
    return tablero
                                    

def carta_replay() -> int:
    #POST-CONDICIONES: Restaura la cantidad de turnos al jugador que la invoco de nuevo a 0. Pudiendo jugar 
    # un nuevo turno si ya se habia jugado previamente, y el contador habia subido a 1.

    print("Has usado la carta Replay!")
    time.sleep(1) 
    turnos = 0
    return turnos                              
#FIN CARTAS


def tirada_dado(probabilidades:list, datos_jugador_activo: list, turno_ya_activo: bool) -> int:
    #PRE-CONDICIONES: Recibe las probabilidades asignadas y los datos del jugador, para usar su inventario.
    
    #POST-CONDICIONES: Arroja un dado y su resultado lo pasa como parametro a la funcion asignar_carta()

    input("Pulsa enter para tirar el dado.\n")
    time.sleep(1)
    inventario = datos_jugador_activo[3]
    tirada_dado = randint(0, probabilidades[9])
    asignar_carta(tirada_dado, inventario, probabilidades, turno_ya_activo)

    return tirada_dado


def asignar_carta(tirada_dado: int, inventario: int, probabilidades: list, turno_ya_activo: bool) -> bool:
    #PRE-CONDICIONES: Recibe el valor del dado, el inventario y las probabilidades.

    #POST-CONDICIONES:  Segun el valor del dado, le otorga al jugador determinadas cartas y las agrega a su inventario.

    if tirada_dado in range(probabilidades[0], probabilidades[1]):
        print("Mala suerte! No has conseguido ninguna carta.\n")

    elif tirada_dado in range(probabilidades[2], probabilidades[3]):
        print("Te ha tocado la Carta Toti! Sera añadida a tu inventario.\n")
        inventario.append("Carta Toti")

    elif tirada_dado in range(probabilidades[4], probabilidades[5]):
        print("Te ha tocado la Carta Fatality! Sera añadida a tu inventario.\n")
        inventario.append("Carta Fatality")

    elif tirada_dado in range(probabilidades[6], probabilidades[7]):
        print("Te ha tocado la Carta Layout ! Sera añadida a tu inventario.\n")
        inventario.append("Carta Layout")

    elif tirada_dado in range(probabilidades[8], probabilidades[9]):
        print("Te ha tocado la Carta Replay! Sera añadida a tu inventario.\n")
        inventario.append("Carta Replay")

    turno_ya_activo = True
    return turno_ya_activo
 

def decision_cartas(datos_jugador_activo: list, modo_debug: bool) -> list:
    #PRE-CONDICIONES: Recibe los datos del jugador que la invoca y usa su tablero e inventario.

    #POST-CONDICIONES: Segun la eleccion del jugador, verifica si se pueden usar las cartas especiales, comparando con el
    #inventario a ver si se encuentran. Si lo estan, ejecuta su funcion correspondiente y luego las elimina del inventario.

    inventario = datos_jugador_activo[3]
    tablero = datos_jugador_activo[2]
    tablero_j1 = datos_jugador_activo[2]
    tablero_j2 = datos_jugador_activo[7]

    print("Que carta quieres usar?\n ")
    print("\t 1- Carta Replay\t 2- Carta Toti\t 3- Carta Layout\t 4- Carta Fatality\t")
    carta_elegida = int(input("..."))

    if carta_elegida == 1 and "Carta Replay" in inventario:
        inventario.remove("Carta Replay")
        carta_replay()

    elif carta_elegida == 2 and "Carta Toti" in inventario:
        tablero = carta_toti(tablero, modo_debug)
        inventario.remove("Carta Toti")

    elif carta_elegida == 3 and "Carta Layout" in inventario:
        valor_layout = 4
        tablero = carta_layout(tablero, ((valor_layout**2) // 4), modo_debug)
        inventario.remove("Carta Layout")

    elif carta_elegida == 4 and "Carta Fatality" in inventario:
        tablero = carta_fatality(datos_jugador_activo, modo_debug, tablero_j1, tablero_j2)
        inventario.remove("Carta Fatality")

    else:
        print("No tienes esa carta!")
    input("Pulse enter para continuar")
    return tablero
                                    

def pedir_coordenadas(tablero: list, cantidad_turnos: int) -> list:
    #PRE-CONDICIONES: Recibe la cantidad de turnos (0) y el tablero con el que trabajara.
    
    #POST-CONDICIONES: Segun inputs del jugador, la funcion escoge la ficha deseada y la muestra.
    # Luego, devuelve los datos de las coordenadas y las fichas.

    while cantidad_turnos != 2:
        if cantidad_turnos <= 0:
            coord = input("\nIngrese primer coordenada (a, b, c...): ")
            coord = ord(coord) - 97
            coord_2 = int(input("Ingrese segunda coordenada (1, 2, 3...): "))
            coord_2 = int(coord_2 - 1)
            ficha_1 = tablero[coord][coord_2]
            if ficha_1 == 0:
                cantidad_turnos = error_coordenadas(cantidad_turnos)
            time.sleep(.5)
            print("Eso es un ",tablero[coord][coord_2], "!")
            cantidad_turnos += 1

        if cantidad_turnos == 1:
            coord_bis = input("\nIngrese primer coordenada (a, b, c...): ")
            coord_bis = ord(coord_bis) - 97
            coord_2_bis = int(input("Ingrese segunda coordenada (1, 2, 3...): "))
            coord_2_bis = coord_2_bis - 1
            ficha_2 = tablero[coord_bis][coord_2_bis]
            if ficha_2 == 0:
                cantidad_turnos = error_coordenadas(cantidad_turnos)
            time.sleep(.5)
            print("Eso es un ",tablero[coord_bis][coord_2_bis], "!")
            cantidad_turnos += 1
    datos_coordenadas = [coord, coord_2, coord_bis, coord_2_bis, ficha_1, ficha_2]
    return datos_coordenadas


def error_coordenadas(cantidad_turnos: int) -> int:
    #PRE-CONDICIONES: Recibe la cantidad de turnos ya efectuados.

    #POST-CONDICIONES: Resta uno a la cantidad de turnos, de modo que se
    # vuelva a ejecutar el mismo turno que genero el error.

    print("\nError! Esta casilla ya esta vacia! ")
    cantidad_turnos = cantidad_turnos - 1
    return cantidad_turnos


def chequear_fichas(datos_jugador_activo: list, datos_jugador_1: list, datos_coordenadas: list, turno_ya_activo: bool) -> bool:  
    #PRE-CONDICIONES: Recibe los datos de los jugadores y el booleano de si el turno esta activo.

    #POST-CONDICIONES: Compara las fichas, determina que hacer con ellas y llama a otras funciones.

    tablero = datos_jugador_activo[2]                                                                                               
    inventario = datos_jugador_activo[3]                                                                                            
                                                                                                                                    
    if (datos_coordenadas[0] == datos_coordenadas[2]) and (datos_coordenadas[1] == datos_coordenadas[3]):
        print("No puedes seleccionar la misma ficha dos veces!")
        pedir_coordenadas(tablero, 0)

    elif datos_coordenadas[4] == datos_coordenadas[5]:
        time.sleep(.5)
        print("Encontraste un par! Te toca de nuevo!\n ")
        tablero[datos_coordenadas[0]][datos_coordenadas[1]] = 0
        tablero[datos_coordenadas[2]][datos_coordenadas[3]] = 0
        turno_ya_activo = True
        victoria(tablero, datos_jugador_activo)
        return turno_ya_activo
    #elif datos_coordenadas[4] != datos_coordenadas[5]: 
    else:
        time.sleep(.5)
        print("Mejor suerte la proxima!\n")
        time.sleep(.5)
        turno_ya_activo = False
        if solicitar_replay(turno_ya_activo, inventario):
            return True

        if datos_jugador_1[0] == 1:
            datos_jugador_1[0] = 2

        else:
            datos_jugador_1[0] = 1
        borrar_pantalla()
        return False
    return True


def solicitar_replay(turno_ya_activo: bool, inventario: list) -> bool:
    #PRE-CONDICIONES: Recibe el inventario del jugador y el booleano del turno activo.

    #POST-CONDICIONES: Pregunta al usuario si quiere usar la carta Replay, luego devuelve un booleano.

    if "Carta Replay" in inventario:
        print("Un momento! Tienes la Carta Replay en tu posesion!")
        un_momento = input("Deseas usarla? <s/n>: ")
        if un_momento == "s":
            inventario.remove("Carta Replay")
            turno_ya_activo = True
            return turno_ya_activo


def victoria(tablero: list, datos_jugador_activo: list) -> None:
    #PRE-CONDICIONES: Recibe los datos del jugador.
    
    #POST-CONDICIONES: De ser verdadera la condicion, otorga la victoria al jugador.
    tamanio_juego = datos_jugador_activo[6]
    if all(i.count(0) == (tamanio_juego * 4) for i in tablero):
        jugador = datos_jugador_activo[1]
        borrar_pantalla()
        print(f"Felicidades {jugador}, ENCONTRASTE TODAS LAS FICHAS!!\n")
        partidas_ganadas = {"Partidas Ganadas": 1}
        tabla_posiciones(jugador, partidas_ganadas, [], False)


def rendicion(datos_jugador_activo: list) -> None:
    #PRE-CONDICIONES: Recibe los datos del jugador.
    
    #POST-CONDICIONES: Otorga la victoria al jugador rival.

    jugador = datos_jugador_activo[8]
    jugador = list(jugador)
    print(f"Felicidades {jugador}, GANASTE POR RENDICION!!\n")
    partidas_ganadas = {"Partidas Ganadas": 1}
    tabla_posiciones(jugador, partidas_ganadas , [], False)


def submenu(datos_jugador_1: list, datos_jugador_2: list, tamanio_juego: int, modo_debug: bool, probabilidades: list, turno_ya_activo: bool) -> None:
    #PRE-CONDICIONES: Recibe los datos de ambos jugadores y las probabilidades a usar en la partida.

    #POST-CONDICIONES: Ejecuta el menu de juego, muestra todas las opciones disponibles
    # y realiza los llamados a funciones correspondientes segun la eleccion.

    juego_en_curso = True
    cantidad_turnos = 0
    datos_jugador_activo = []
    while juego_en_curso:
        if datos_jugador_1[0] == 1:
            datos_jugador_activo = datos_jugador_1
        else:
            datos_jugador_activo = datos_jugador_2
        tablero = datos_jugador_activo[2]

        print(f"\n{datos_jugador_activo[1]}, te toca!")
        if not turno_ya_activo:
            tirada_dado(probabilidades, datos_jugador_activo, turno_ya_activo)

        print("Que quieres hacer? \n")
        print("1- Jugar turno\t\t 2- Usar cartas\t\t 3- Ver tablero\t\t 4- Ver inventario\t\t 5- Pasar turno\t\t 6- Rendirse")
        decision = int(input("..."))

        if decision == 1 and cantidad_turnos <= 1:
            #---INICIO DEBUG---
            if modo_debug:
                print(tablero)
            #---FIN DEBUG---
            datos_coordenadas = pedir_coordenadas(tablero, cantidad_turnos)
            turno_ya_activo = chequear_fichas(datos_jugador_activo, datos_jugador_1, datos_coordenadas, turno_ya_activo)

        elif decision == 1 and cantidad_turnos > 1:
            input("No tienes mas turnos!")
            decision = int(input("Que quieres hacer?: "))

        elif decision == 2:
            decision_cartas(datos_jugador_activo, modo_debug)
            turno_ya_activo = True

        elif decision == 3:
            mostrar_tablero(tamanio_juego*4)
            turno_ya_activo = True

        elif decision == 4:
            print(f"Este son tus cartas en posesion: {datos_jugador_activo[3]}")
            turno_ya_activo = True

        elif decision == 5:
            borrar_pantalla()
            if datos_jugador_1[0] == 1:
                datos_jugador_1[0] = 2
            else:
                datos_jugador_1[0] = 1
            turno_ya_activo = False

        elif decision == 6:
            borrar_pantalla()
            rendicion(datos_jugador_activo)


def iniciar_juego(probabilidades: list, modo_debug: bool, tamanio_juego: int) -> None:
     #PRE-CONDICIONES: Recibe el tamanio del juego, en el rango 1 a 3, y el resto de datos utiles a la partida.

    #POST-CONDICIONES: Asigna los valores correspondientes a cada jugador, y genera sus tableros.

    #---INICIO DEBUG---
    if modo_debug:
        inventario_jugador_1 = ["Carta Replay", "Carta Fatality", "Carta Toti", "Carta Layout"]
        inventario_jugador_2 = ["Carta Replay", "Carta Fatality", "Carta Toti", "Carta Layout"]
    #---FIN DEBUG---
    else:
        inventario_jugador_1 = []
        inventario_jugador_2 = []

    jugador_1 = input("Ingrese el nombre del Jugador 1: ")
    jugador_2 = input("Ingrese el nombre del Jugador 2: ")
    tam_matriz = tamanio_juego
    tablero_j1 = generar_matriz_juego(tam_matriz*4)
    tablero_j2 = generar_matriz_juego(tam_matriz*4)
    turnos_jugador_1 = 0
    turnos_jugador_2 = 0
    datos_jugador_1 = [1, jugador_1, tablero_j1, inventario_jugador_1, turnos_jugador_1, probabilidades, tamanio_juego, tablero_j2, jugador_2]
    datos_jugador_2 = [2, jugador_2, tablero_j2, inventario_jugador_2, turnos_jugador_2, probabilidades, tamanio_juego, tablero_j1, jugador_1]
    turno_ya_activo = False
    submenu(datos_jugador_1, datos_jugador_2, tamanio_juego, modo_debug, probabilidades, turno_ya_activo)

                                   
def main() -> None:
    #POST-CONDICIONES: Asigna las probabilidades por defecto y luego las pasa al menu.

    print("\nMEMOTEST v1.0.0 -Game of the Year Edition- \n")
    probabilidades = [0, 50, 50, 62, 62, 74, 74, 86, 86, 100]
    ganadores = []
    partidas_ganadas = {}
    modo_debug = False
    menu(ganadores, partidas_ganadas, probabilidades, modo_debug)




main()

