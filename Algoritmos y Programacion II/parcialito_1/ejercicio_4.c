/* Dado un array ordenado y un número N, implementar una función por división y conquista
que permita encontrar la posición de la última aparición de N. Justificar el orden del algoritmo.
Ejemplo:
[1,2,2,2,3,3,4,4,4,5] N = 2 -> 3
[1,2,2,2,3,3,4,4,4,5] N = 5 -> 9
[1,2,2,2,3,3,4,4,4,5] N = 6 -> -1 */

#include <stdio.h>

//Al pedirme un algoritmo de D&C, trato de implementar busqueda binaria:
int ultimo_elemento(int arr[], size_t inicio, size_t fin, int n, int tamanio)
{
    if (fin >= inicio) {
        int medio = inicio + (fin - inicio) / 2;
        if ((medio == n - 1 || n < arr[medio + 1]) && arr[medio] == n)
            return medio;
        else if (n < arr[medio])
            return ultimo_elemento(arr, inicio, (medio - 1), n, tamanio);
        else
            return ultimo_elemento(arr, (medio + 1), fin, n, tamanio);
    }
    return -1;
}
//Por el teorema maestro, se puede afirmar que el orden del algoritmo es de O(log n), dado que en cada
//iteracion del algoritmo, se va partiendo en 2 mitades, y una de ellas se descarta.
