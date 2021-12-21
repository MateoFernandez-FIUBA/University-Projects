/* Dada una cola, implementar una función que devuelva el largo de la misma, la cola debe
quedar en su estado original. Justificar el orden del algoritmo. */


// Devuelve el largo de una cola.
// Pre: la cola fue creada.
// Post: la cola no sufre modificaciones al terminar la funcion.
size_t largo_cola(cola_t* cola) {

	size_t largo = 0;

	// Caso base: si la cola esta vacia, devuelvo el largo.
	if (cola_esta_vacia(cola)) {
		return largo;
	} else {
		void* elemento = cola_desencolar(cola);
		largo = largo_cola(cola);
		cola_encolar(cola, elemento);
		largo ++;
	}

	return largo;
}

//El orden del algoritmo es de 0(n) dado que depende de la longitud de la cola es la cantidad
//de llamados que se haran recursivamente a la funcion.