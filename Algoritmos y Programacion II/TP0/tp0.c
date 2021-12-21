#include <stdio.h>
#ifndef TP0_H
#define TP0_H

/* Intercambia dos valores enteros.
 */
void swap(int *x, int *y){
    int aux = *x;
    *x = *y;
    *y = aux;

    //printf("El valor de X es %d, y el valor de Y es %d.\n", x, y);

}


/* Devuelve la posición del mayor elemento del arreglo, o -1 si el
 * el vector es de largo 0. Si el máximo elemento aparece más de una
 * vez, se debe devolver la primera posición en que ocurre.
 */
int maximo(int vector[], int n){
    if (n == 0) {
        return -1;
    } else {
        int posicion = 0;
        for (int i = 1; i < n; i++){
            if (vector[posicion] < vector[i]){
                posicion = i;
            }
        }
        //printf("El mayor elemento es el %d, que esta en la posicion %i\n", vector[posicion], posicion);
        return posicion;
    }

}


/* Compara dos arreglos de longitud especificada.
 *
 * Devuelve -1 si el primer arreglo es menor que el segundo; 0 si son
 * iguales; o 1 si el primero es el mayor.
 *
 * Un arreglo es menor a otro cuando al compararlos elemento a elemento,
 * el primer elemento en el que difieren no existe o es menor.
 */
int comparar(int vector1[], int n1, int vector2[], int n2){
    
    for (int i = 0; i < n2 && i < n1; i++) {
        if (vector1[i] > vector2[i]){
            return 1;
        } else if (vector1[i] < vector2[i]){
            return -1;
        }
    }
    if (n1 > n2){
        return 1;
    } else if (n1 < n2){
        return -1;
    }
    return 0;
}



/* Ordena el arreglo recibido mediante el algoritmo de selección. */
void seleccion(int vector[], int n){
    while (n > 0) {
		int indice_maximo_valor = maximo(vector, n);
        int *indice_iterador = &vector[n-1];
        int *indice_pivot = &vector[indice_maximo_valor];
        swap(indice_iterador, indice_pivot);
		n--;
	}
}


//int main(){
    //int x = 5;
    //int y = 3;
    //swap(&x,&y);
    //int mi_array[] = {4,2,7,5,7,8,4,8};
    //maximo(mi_array,8);
    //int array1[] = {3,6,8,3,5,9,10,3,6,1};
    //int n = sizeof(array1)/sizeof(array1[0]);
    //int array2[] = {3,6,8,3};
    //comparar(array1, 4, array2, 4);
    //seleccion(array1, n);
//    return 0;
//}


#endif  // TP0_H

