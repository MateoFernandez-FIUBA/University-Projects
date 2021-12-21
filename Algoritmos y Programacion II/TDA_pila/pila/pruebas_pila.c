#include "pila.h"
#include "testing.h"
#include <stdio.h>
#include <stddef.h>

#ifndef CORRECTOR  // Para que no de conflicto con el main() del corrector.

/* ******************************************************************
 *                   PRUEBAS UNITARIAS ALUMNO
 * *****************************************************************/

static void prueba_pila_vacia(void) {
	printf("============INICIO DE PRUEBAS CON PILA VACIA============\n");
	/* Creo la pila */
    pila_t *pila = pila_crear();

	/* Verifico que la pila este, efectivamente, vacia */
	print_test("Prueba: La pila esta vacia?: ", pila_esta_vacia(pila));

	/* Destruyo la pila */
	pila_destruir(pila);
}

/* Pruebas para las condiciones de borde de la pila */
void pruebas_condiciones_borde(pila_t* pila) {

	print_test("Prueba condición borde: La pila se encuentra vacía", pila_esta_vacia(pila));
	print_test("Prueba condición borde: Ver tope en pila vacía es NULL", pila_ver_tope(pila) == NULL);
	print_test("Prueba condición borde: Desapilar en pila vacía es NULL", pila_desapilar(pila) == NULL);
}

/* Pruebas para una pila inicializada a NULL */
void pruebas_pila_a_null() {
	printf("============INICIO DE PRUEBAS CON PILA NULL============\n");

	/* Declaro las variables a utilizar */
	pila_t* pila_a_null = NULL;
	char* ejemplo_apilar2 = "Prueba";
	int ejemplo_apilar = 40000;

	/* Inicio de pruebas */
	print_test("Prueba 1ra categoria: Puntero inicializado a NULL", pila_a_null == NULL);

	/* Pruebo el comportamiento de un puntero inicializado a NULL */
	print_test("Prueba 1ra categoria: Ver tope de un puntero inicializado a NULL es NULL", pila_ver_tope(pila_a_null) == NULL);
	print_test("Prueba 1ra categoria: Apilar una referencia a un entero sobre un puntero inicializado a NULL es False", !pila_apilar(pila_a_null, &ejemplo_apilar));
	print_test("Prueba 1ra categoria: Apilar NULL sobre un puntero inicializado a NULL es False", !pila_apilar(pila_a_null, NULL));
	print_test("Prueba 1ra categoria: Apilar un string sobre un puntero inicializado a NULL es False", !pila_apilar(pila_a_null, &ejemplo_apilar2));
	print_test("Prueba 1ra categoria: Desapilar de un puntero inicializado a NULL devuelve NULL", pila_desapilar(pila_a_null) == NULL);
}

/* Pruebas para apilar elemento NULL */
void pruebas_apilar_null() {
	printf("============INICIO DE PRUEBAS APILAR ELEMENTO NULL============\n");

	/* Creo la pila */
	pila_t* pila_prueba_null = pila_crear();

	/* Pruebo comportamiento sobre la pila recien creada */
	print_test("Prueba 2da categoria: La pila fue creada", pila_prueba_null != NULL);
	pruebas_condiciones_borde(pila_prueba_null);

	/* Pruebo apilar el elemento NULL */
	print_test("Prueba 2da categoria: Apilar NULL", pila_apilar(pila_prueba_null, NULL));

	/* Pruebo comportamiento sobre la pila */
	print_test("Prueba 2da categoria: La pila no se encuentra vacía", !pila_esta_vacia(pila_prueba_null));
	print_test("Prueba 2da categoria: El tope es el elemento NULL", pila_ver_tope(pila_prueba_null) == NULL);
	print_test("Prueba 2da categoria: Desapilo NULL", pila_desapilar(pila_prueba_null) == NULL);

	/* Pruebo sobre la pila que fue apilada y luego desapilada */
	pruebas_condiciones_borde(pila_prueba_null);

	/* Destruyo la pila */
	pila_destruir(pila_prueba_null);
	print_test("Prueba 2da categoria: La pila fue destruida", true);
}

/* Pruebas para la pila con pocos elementos */
void pruebas_pila_algunos_elementos() {
	printf("============INICIO DE PRUEBAS CON PILA DE ALGUNOS ELEMENTOS============\n");

	/* Creo la pila */
	pila_t* pila_elementos = pila_crear();

	/* Declaro las variables a utilizar */
	int valores_prueba[] = {38, 127, 76, 5};
	size_t i = 0;

	/* Pruebo comportamiento sobre la pila recien creada */
	print_test("Prueba 3er categoria: La pila fue creada", pila_elementos != NULL);
	pruebas_condiciones_borde(pila_elementos);

	/* Pruebo apilar sobre la pila recien creada */
	print_test("Prueba 3er categoria: Apilar referencia al valor 1", pila_apilar(pila_elementos, &valores_prueba[i]));
	print_test("Prueba 3er categoria: El tope es la referencia al valor 1", pila_ver_tope(pila_elementos) == &valores_prueba[i]);
	print_test("Prueba 3er categoria: Apilar referencia al valor 2", pila_apilar(pila_elementos, &valores_prueba[++i]));
	print_test("Prueba 3er categoria: El tope es la referencia al valor 2", pila_ver_tope(pila_elementos) == &valores_prueba[i]);
	print_test("Prueba 3er categoria: Apilar referencia al valor 3", pila_apilar(pila_elementos, &valores_prueba[++i]));
	print_test("Prueba 3er categoria: El tope es la referencia al valor 3", pila_ver_tope(pila_elementos) == &valores_prueba[i]);
	print_test("Prueba 3er categoria: Apilar referencia al valor 4", pila_apilar(pila_elementos, &valores_prueba[++i]));

	/* Pruebo comportamiento sobre la pila con algunos elementos */
	print_test("Prueba 3er categoria: La pila no se encuentra vacía", !pila_esta_vacia(pila_elementos));
	print_test("Prueba 3er categoria: El tope es la referencia al valor 4", pila_ver_tope(pila_elementos) == &valores_prueba[i]);
	print_test("Prueba 3er categoria: Desapilo referencia al valor 4", pila_desapilar(pila_elementos) == &valores_prueba[i]);
	print_test("Prueba 3er categoria: El tope es la referencia al valor 3", pila_ver_tope(pila_elementos) == &valores_prueba[--i]);
	print_test("Prueba 3er categoria: Desapilo referencia al valor 3", pila_desapilar(pila_elementos) == &valores_prueba[i]);
	print_test("Prueba 3er categoria: El tope es la referencia al valor 2", pila_ver_tope(pila_elementos) == &valores_prueba[--i]);
	print_test("Prueba 3er categoria: Desapilo referencia al valor 2", pila_desapilar(pila_elementos) == &valores_prueba[i]);
	print_test("Prueba 3er categoria: El tope es la referencia al valor 1", pila_ver_tope(pila_elementos) == &valores_prueba[--i]);
	print_test("Prueba 3er categoria: Desapilo referencia al valor 1", pila_desapilar(pila_elementos) == &valores_prueba[i]);

	/* Pruebo comportamiento de una pila que fue apilada/desapilada */
	pruebas_condiciones_borde(pila_elementos);

	/* Destruyo la pila */
	pila_destruir(pila_elementos);
	print_test("Prueba 3er categoria: La pila fue destruida", true);
}

/* Pruebas para la pila con strings */
void pruebas_pila_string() {
	printf("============INICIO DE PRUEBAS CON PILA DE STRINGS============\n");

	/* Creo la pila */
	pila_t* pila_strings = pila_crear();

	/* Pruebo comportamiento sobre la pila recien creada */
	print_test("Prueba 4ta categoria: La pila fue creada", pila_strings != NULL);
	pruebas_condiciones_borde(pila_strings);

	/* Declaro las variables a utilizar */
	char* nombres[] = {"Chandler", "Ross", "Joey", "Rachel", "Phoebe", "Monica"};
	size_t cantidad_nombres = sizeof(nombres) / sizeof(nombres[0]);

	/* Pruebo apilar y desapilar la referencia al vector entero de char* */
	print_test("Prueba 4ta categoria: Apilar referencia al valor5", pila_apilar(pila_strings, nombres));
	print_test("Prueba 4ta categoria: La pila no se encuentra vacía", !pila_esta_vacia(pila_strings));
	print_test("Prueba 4ta categoria: El tope es la referencia al valor5", pila_ver_tope(pila_strings) == nombres);
	print_test("Prueba 4ta categoria: Desapilar referencia al valor5", pila_desapilar(pila_strings) == nombres);
	print_test("Prueba 4ta categoria: La pila se encuentra vacía", pila_esta_vacia(pila_strings));

	/* Pruebo apilar cada nombre por separado en la pila */
	bool apilar_ok = true, tope_ok = true;
	for (size_t i = 0; i < cantidad_nombres; i++) {
		// Si algún elemento no se pudo apilar correctamente, apilar_ok = false
		apilar_ok &= pila_apilar(pila_strings, &nombres[i]);
		tope_ok &= (pila_ver_tope(pila_strings) == &nombres[i]);
	}

	/* Pruebo comportamiento luego de apilar */
	print_test("Prueba 4ta categoria: Se apilaron todos los elementos correctamente", apilar_ok && tope_ok);
	print_test("Prueba 4ta categoria: El tope es la referencia al ultimo nombre", pila_ver_tope(pila_strings) == &nombres[cantidad_nombres - 1]);
	print_test("Prueba 4ta categoria: La pila no se encuentra vacía", !pila_esta_vacia(pila_strings));

	/* Pruebo desapilar */
	bool desapilar_ok = true;
	char** nombre = &nombres[cantidad_nombres - 1];
	while (!pila_esta_vacia(pila_strings)) {
		desapilar_ok &= (pila_desapilar(pila_strings) == nombre);
		nombre --;
		// Verifico que el nuevo tope sea el proximo elemento a desapilar
		if (!pila_esta_vacia(pila_strings)) {
			tope_ok &= (pila_ver_tope(pila_strings) == nombre);
		}
	}

	/* Pruebo comportamiento luego de desapilar */
	print_test("Prueba 4ta categoria: Se logró desapilar todos los elementos correctamente", desapilar_ok && tope_ok);
	pruebas_condiciones_borde(pila_strings);

	/* Destruyo la pila */
	pila_destruir(pila_strings);
	print_test("Prueba 4ta categoria: La pila fue destruida", true);
}

/* Pruebas de la pila al trabajar con un volumen grande de elementos */
void pruebas_pila_volumen() {
	printf("============INICIO DE PRUEBAS DE VOLUMEN============\n");

	/* Creo la pila */
	pila_t* pila_volumen = pila_crear();

	/* Pruebo comportamiento sobre la pila recien creada */
	print_test("Prueba 5ta categoria: La pila fue creada", pila_volumen != NULL);
	pruebas_condiciones_borde(pila_volumen);

	/* Defino un tamanio mayor al tamanio de la pila inicial */
	size_t tam = 8000;

	/* Pruebo apilar hasta llegar al nuevo tamanio */
	size_t i = 0;
	bool apilar_ok = true, tope_ok = true;
	for (i=0; i < tam; i++) {
		apilar_ok &= pila_apilar(pila_volumen, &i);
		tope_ok &= (pila_ver_tope(pila_volumen) == &i);
	}

	/* Pruebo comportamiento luego de apilar */
	print_test("Prueba 5ta categoria: Se logro apilar todos los elementos correctamente", apilar_ok && tope_ok);
	print_test("Prueba 5ta categoria: La pila no se encuentra vacía", !pila_esta_vacia(pila_volumen));
	print_test("Prueba 5ta categoria: El tope es la referencia al valor 7999", pila_ver_tope(pila_volumen) == &i);

	/* Desapilo todos los elementos */
	bool desapilar_ok = true;
	while (!pila_esta_vacia(pila_volumen)) {
		desapilar_ok &= (pila_desapilar(pila_volumen) == &i);
		i--;
		if (!pila_esta_vacia(pila_volumen)) {
			tope_ok &= (pila_ver_tope(pila_volumen) == &i);
		}
	}

	/* Pruebo comportamiento luego de desapilar */
	print_test("Prueba 5ta categoria: Se logro desapilar todos los elementos correctamente", desapilar_ok && tope_ok);
	pruebas_condiciones_borde(pila_volumen);

	/* Destruyo la pila */
	pila_destruir(pila_volumen);
	print_test("Prueba 5ta categoria: La pila fue destruida", true);
}


/* Funcion que llama a todas las pruebas del programa*/
void pruebas_pila_estudiante() {
    prueba_pila_vacia();
	pruebas_pila_a_null();
	pruebas_apilar_null();
	pruebas_pila_algunos_elementos();
	pruebas_pila_string();
	pruebas_pila_volumen();
}



/* Funcion main() que llama a la función de pruebas. */
int main() {
    pruebas_pila_estudiante();
    return failure_count() > 0;  // Indica si falló alguna prueba.
}

#endif