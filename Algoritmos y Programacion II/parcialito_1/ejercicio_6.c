/* Diseñar un algoritmo de ordenamiento no comparativo para ordenar un conjunto de registros
que tienen la forma (año - disco) (ejemplo: 1986 - Signos; 1996 - Luzbelito; 1975 - Artaud;
etc). Se sabe que el disco más antiguo es de 1970 y el más moderno de 1999. Proponer un
ejemplo y mostrar un seguimiento.
a) ¿Es estable? Justificar
b) ¿Cuál es el orden del algoritmo? Justificar
c) ¿Qué condiciones satisface el problema para poder usar el algoritmo propuesto? */

/* Una forma de implementar un algoritmo de ordenamiento no comparativo es usando Counting Sort.
En este caso, tenemos un rango acotado de años en los que trabajar, y debemos ordenar unicamente por año de salida,
entonces, este es un algoritmo que cumple esas precondiciones eficientemente:

Como primer paso, habria que contar las frecuencias de cada registro (el año de salida). Tambien, inicializamos un
arreglo de largo N (el rango de valores en los que estamos acotados, en este caso, 1975-1999 -> N = 24) y, por cada
vez que aparece un registro, se suma +1 a su contador en su correspondiente año.
Luego, se realiza un nuevo arreglo de sumas acumuladas. Este arreglo, cuyo primer indice es 0, va tomando valores en sus
indices posteriores que son el resultado de las sumas del arreglo anterior. Esto es:

int registros_anios[] =  {1992,1986,1970,1992,1970,1990};
int frecuencias[] =      {2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,2,0,0,0,0,0,0,0}; Cada posicion se correlaciona con su anio.
int sumas_acumuladas[] = {0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,4,4,6,6,6,6,6,6,6};

Usando el arreglo de sumas acumuladas, ahora sabemos en que posicion ira cada carta una vez vayamos recorriendo el arreglo de registros.
Ejemplo, '1992' es el primer elemento del arreglo de registro, y su posicion en relacion al arreglo de sumas acumuladas nos dice que
deberia ir en la posicion 4 del nuevo arreglo ordenado. Luego, su referencia en sumas_acumuladas se le suma += 1 para evitar conflictos en
caso de que haya repeticiones.
El siguiente numero, '1986', nos dice que deberia ir en la posicion 2.
'1970' nos dice que deberia ir en la posicion 0. (Luego, al sumarse += 1 a su referencia, este valor pasa de 0 -> 1).
'1992' ira a la posicion 5. (Luego, 5 -> 6)
'1970' ira a la posicion 1 esta vez, dado que la anterior vez que aparecio este valor, ocupo la posicion 0. (Luego, 1 -> 2).
'1990' ira a la posicion 3.
De esta forma, nos queda el arreglo final ordenado de la siguiente forma:

int registros_ordenados[] = {1970,1970,1986,1990,1992,1992}

Este algoritmo es estable porque los elementos en el arreglo de ordenados respetan la posicion en la que estaban que cuando pertenecian
al arreglo de desordenados. La primera ocurrencia de X valor sigue siendo la primer ocurrencia en el nuevo arreglo.
El orden del algoritmo se da de la siguiente forma:
 O(k) -> inicializar frecuencias,
 O(n) -> contar las frecuencias,
 O(k) -> obtener arreglo de sumas acumuladas, y,
 O(n) -> ubicar cada registro en su lugar.
Total: O(n + k).
(A menos que k << n, en ese caso -> O(n)). */