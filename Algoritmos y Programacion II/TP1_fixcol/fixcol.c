#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>



bool es_numero(int* numero){
    if(*numero <= 0){
        fprintf(stderr,"Error: Cantidad erronea de parametros\n");
        return false;
    }
    return true;
}


bool verificacion_parametros(int cantidad_de_parametros, char* parametros[], int* cantidad_lineas){
    if(cantidad_de_parametros != 2 && cantidad_de_parametros != 3){
        fprintf(stderr, "Error: Cantidad erronea de parametros\n");
        return false;
    }
    *cantidad_lineas = atoi(parametros[1]);
    return es_numero(cantidad_lineas);
}



void imprimir_texto(int numero, FILE* archivo){
    char letra = (char)fgetc(archivo);
    int i = 0;
    while (letra != EOF){
        bool es_maximo = numero == i;
        bool line_break = letra == '\n';

        if(line_break){
            printf("%c", letra);
            i = 0;
        } else if(es_maximo){
            printf("\n");
            i = 1;
            printf("%c", letra);
        }  else {
            printf("%c", letra);
            i++;
        }
        letra = (char)fgetc(archivo);
    }
}


bool hay_archivo(FILE* file){
    bool error = (file == NULL);
    if(error){
        fprintf(stderr, "Error: archivo fuente inaccesible\n");
        return false;
    }
    return true;
}


FILE* abrir_archivo(int cantidad_de_argumentos, char* parametros[]){
    FILE* file;
    if(cantidad_de_argumentos == 3){
        char* archivo = parametros[2]; //nombre del archivo

        file = fopen(archivo, "r");
    }
    else {
        file = stdin;
    }
    return file;
}


int main(int cantidad_de_argumentos, char* parametros[]){ //Verifico en el main antes de llamar al resto de funciones
    int numero;
    bool verificacion = (verificacion_parametros(cantidad_de_argumentos, parametros, &numero));
    if(!verificacion){
        return -1;
    }

    FILE* file = abrir_archivo(cantidad_de_argumentos, parametros);
    if(!(hay_archivo(file))){
        return -1;
    }

    imprimir_texto(numero, file);
    if(cantidad_de_argumentos == 3){
        fclose(file);
    }
    return 0;
}
