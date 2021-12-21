
import os, csv, mimetypes
from typing import Text
from service_drive import obtener_servicio
from googleapiclient.http import MediaFileUpload

def validar_opcion_2()->int:
    opcion = input('Indique que accion desea realizar <1-2>: ')
    while not (opcion.isnumeric() and int(opcion) == 1 or int(opcion) == 2):
        opcion = input('Ingrese una opcion valida: ')
    opcion = int(opcion)
    return opcion     

def validar_opcion()->int:

    opcion = input('Ingrese una opción valida: ')
    while not (opcion.isnumeric() and int(opcion)>=1 and int(opcion)<=8):
        opcion = input('Error!!! Ingrese de nuevo la opcion:')
    opcion = int(opcion)
    return opcion    

def validar_salida()->str:
    salida = input('Esta seguro que desea salir del programa <s/n>?: ')
    while not (salida.isalpha() and salida == 's' or salida == 'n'):
        salida = input('Ingreso invalido. Por favor ingrese de nuevo: ')
    return salida     
    
def validar_opcion_archivo()->int:
    opcion = input('Que archivo desea crear: ')
    while not(opcion.isnumeric() and int(opcion)>=1 and int(opcion)<=6):
        opcion = int('Ingreso invalido. Ingrese de nuevo una opcion valida: ')
    opcion = int(opcion)
    return opcion    

def crear_archivo_txt(drive_service)->None: 
    file_name = input('Ingrese nombre del archivo: ')
    with open (f'{file_name}.txt', 'w') as archivo:
        archivo.write('Este es un archivo txt')
    file_metadata = {'name': file_name}
    media = MediaFileUpload(f'{file_name}.txt', mimetype='text/plain')
    file = drive_service.files().create(body = file_metadata,
                                        media_body=media,
                                        fields = 'id').execute()
    print('File ID: %s' % file.get('id'))

def crear_archivo_csv(drive_service)->None:
    file_name = input('Ingrese nombre del archivo: ')
    with open (f'{file_name}.csv', 'w', newline='',encoding='UTF-8') as archivo_csv:
        csv_writer = csv.writer(archivo_csv,delimiter=',', quotechar="'")
        csv_writer.writerow('Archivo csv')
    file_metadata = {'name': file_name}
    media = MediaFileUpload(f'{file_name}.csv', mimetype='text/csv')
    file = drive_service.files().create(body = file_metadata,
                                        media_body = media,
                                        fields = 'id').execute()
    print('File ID: %s' % file.get('id'))

def crear_archivo_json(drive_service)->None:
    file_name = input('Ingrese el nombre del archivo: ')
    with open(f'{file_name}.json','w') as archivo_json:
        archivo_json.write('{Este es un archivo json}')
    file_metadata = {'name': file_name}
    media = MediaFileUpload(f'{file_name}.json', mymetype='application/json')
    file = drive_service.files().create(body= file_metadata,
                                        media_body = media,
                                        fields = 'id').execute()
    print('File ID  %s' %file.get('id'))                                       

def crear_archivo_rtf(drive_service)->None:
    file_name = input('Ingrese el nombre del archivo: ')
    with open(f'{file_name}.rtf', 'w') as archivo_rtf:
        archivo_rtf.write('Este es un documento rtf')
    file_metadata = {'name': file_name}
    media = MediaFileUpload(f'{file_name}.rtf', mimetype='application/rtf')    
    file = drive_service.files().create(body = file_metadata,
                                        media_body = media,
                                        fields = 'id').execute()
    print('File ID %s' %file.get('id'))

def crear_archivo(drive_service)->None:
    '''
    PRE: Ingresa la variable la cual conecta a la api de Drive
    POST: Genera un archivo reflejada en entorno local y remoto
    '''
    print('1. Archivo .txt')
    print('2. Archivo .csv')
    print('3. Archivo .html')
    opcion = validar_opcion_archivo()
    if opcion == 1:
        crear_archivo_txt(drive_service)
    elif opcion == 2: 
        crear_archivo_csv(drive_service)   

def crear_carpeta(drive_service)->None:
    '''
    PRE: Ingresa la variable la cual conecta a la api de Drive
    POST: Imprime el ID de la carpeta creada
    '''
    folder_name = input('Ingresar nombre de la carpeta: ')
    # crear archivo entorno local  

    os.mkdir(f'{folder_name}')
    # crear archivo entorno remoto

    # crear archivo entorno remoto 
    folder_name = input('Ingresar nombre de la carpeta')

    file_metadata = {
        'name': folder_name,
        'mimeType': 'application/vnd.google-apps.folder'
    }
    file = drive_service.files().create(body=file_metadata,
                                        fields='id').execute()
    print('Folder ID: %s' % file.get('id'))
    print('\tCarpeta creada con exito!!!')

def listar_archivos_locales()->None:
    #directorio = os.getcwd()
    #print(os.listdir(directorio))
    
    seguir = True
    while seguir:
        extenciones = [".txt", ".pdf", ".docx", ".exe", ".pptx", ".py", ".html", ".zip", ".jpg", ".jpeg", ".png", ".jar", ".iso", ".rar", ".zip", ".mp3", ".mp4", ".csv", ".json"]
        carpetas = []
        listado = 0

        print("\nDIRECTORIO: " + os.getcwd())

        print("\nARCHIVOS:")

        for file in os.listdir(os.getcwd()):
            escarpeta = True
            for extencion in extenciones:
                if file.endswith(extencion):
                    escarpeta = False
                    listado += 1
                    print(listado, file)
            if escarpeta == True:
                carpetas.append(file)

        print("\nCARPETAS:")

        contador = 0
        for i in carpetas:
            contador += 1
            print("Carpeta " + str(contador) + ":", i)

        opcion = int(input("\nIngrese el numero correspondiente:\n1-Ingresar a una carpeta.\n2-Volver a la carpeta anterior.\n3-Volver al menu principal\n--->"))
        if opcion == 1:
            elegir_carpeta = int(input("\nEliga la carpeta a la cual desea acceder ingresando el numero de carpeta: "))
            os.chdir(os.getcwd() + f"\\{carpetas[elegir_carpeta-1]}")
        elif opcion == 2:
            pass
        else:
            pass

def listar_archivos_remotos(drive_service)->None:
    id_carpeta = "1IHswIyzxmBeaqFP_1vpX2SdrvoNEc6-h"

    mimeType = 'application/vnd.google-apps.folder'

    archivos = drive_service.files().list(fields = "files(id, name, mimeType)").execute()
    carpetas = []
    listado = 0
    print("\n\nARCHIVOS:\n")

    for archivo in archivos.get("files", []):
        if archivo.get("mimeType") != "application/vnd.google-apps.folder":
            listado += 1
            print(listado, archivo.get("name"), archivo.get("mimeType"))
        else:
            carpetas.append(archivo.get("name"))

    contador = 0
    print("\n\nCARPETAS:\n")
    for carpeta in carpetas:
        contador += 1
        print(contador, carpeta)

    print()

    opcion = int(input("\nIngrese el numero correspondiente:\n1-Ingresar a una carpeta.\n2-Volver a la carpeta anterior.\n3-Volver al menu principal\n--->"))
    if opcion == 1:
        elegir_carpeta = int(input("\nEliga la carpeta a la cual desea acceder ingresando el numero de carpeta: "))
        pass
    elif opcion == 2:
        pass
    else:
        pass


def elegir_opciones(opcion,drive_service)->None:
    if opcion == 1:
        print('''
        Aqui irian dos opciones
        1. local
        2. remoto
        ''')
        #listar_archivos_remotos()
        listar_archivos_locales()

    elif opcion == 2:
        print('1.Crear archivo')
        print('2.Crear carpeta')
        opcion = validar_opcion_2()
        if opcion != 2:
            crear_archivo(drive_service)
        else:
            crear_carpeta(drive_service)

    elif opcion == 3:
        print('''
        Subir archivos del directorio (...) al drive (...)
        ....Configuracion de la API de drive
        Lo mas probable este en un archivo externo(1)
        ''')
    elif opcion == 4:
        print('''
        Descargar archivos de cuenta Drive (...) a la ruta (...)
        ...Configuracion de descarga de archivos de Drive
        Lo mas probable este en un archivo externo(1)
        ''')
    elif opcion == 5:
        print('''
        Sincronizar archivos local/remoto
        ...configuracion de sincronizacion al Drive
        Lo mas probable este en un archivo externo(1)
        ''')
    elif opcion == 6:
        print('''
        Sistema de carpetas:
        evaluacion -> Docentes ->Alumnos asignados 
        3 archivos: docentes.csv // alumnos.csv // alumnos-docentes.csv
        Lo mas probable este en un archivo externo(2)
        ''')
    elif opcion == 7:
        print('''
        Funcionalidad de Gmail
        1.Consulta
        2.Descarga de archivos / Descomprimir
        3.Enviar / Aviso de errores en envio al alumno
        ''')
    
def opciones(drive_service)->None:
    print('\t\t\t\t---Bienvenidos a DriveHub---\n')
    print('\t1.Listar en pantalla los archivos disponibles')
    print('\t2.Crear carpeta - archivo')
    print('\t3.Subir archivos al Drive')
    print('\t4.Descargar archivos a la PC')
    print('\t5.Sincronizar archivos y carpetas')
    print('\t6.Generar carpetas de evaluación')
    print('\t7.Sistema de envio al Gmail')
    print('\t8.Salir')
    opcion = validar_opcion()
    if opcion != 8:  
        elegir_opciones(opcion,drive_service)
    else:
        salida = validar_salida()
        if salida == 's':
            init = True
            return init

def main()->None:
    drive_service = obtener_servicio()
    init = False
    while not init:
        init = opciones(drive_service)
main()        