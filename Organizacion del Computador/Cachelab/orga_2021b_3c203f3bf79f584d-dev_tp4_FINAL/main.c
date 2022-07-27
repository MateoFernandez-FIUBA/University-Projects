#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include "cache_structs.h"

const int PENALTY = 100;
const int CLEAN_MISS_PENALTY = 1 + PENALTY;
const int DIRTY_MISS_PENALTY = 1 + ( 2 * PENALTY );

bool is_power_of_two(int number){
    if (number == 0){
        return false;
    }
    for (int power = 1; power > 0; power = power << 1){
        if (power == number){
            return true;
    }
        if (power > number){
            return false;
        }
    }
    return false;
}

int log_two(int n){
    if (!is_power_of_two(n)) return -1;
    int power = 0;
    int i = 0;
    unsigned int number = n;

    for(i=0;i<sizeof(int)<<3;i++){
        if ((number & 1) == 1){
            power = i;
            return power;
        }
        number = number >> 1;
    }

    return -1;
}
struct Verboso* create_verboso(int S){
    struct Verboso* verboso = (struct Verboso *)calloc(S, sizeof(struct Verboso));

    verboso->operation_index = 0;
    verboso->operation_case = "";
    verboso->cache_index = 0x0;
    verboso->cache_tag = 0x0;
    verboso->cache_line = 0;
    verboso->line_tag = 0xffffffff;
    verboso->valid_bit = 0;
    verboso->dirty_bit = 0;
    verboso->last_used = 0;

    return verboso;
}

void mostrar_verboso(FILE* escritura , struct Verboso* verboso, int E){
    if( E > 1) {
        if (verboso->line_tag == 0xffffffff) {
            fprintf(escritura, "%d %s %llx %llx %d %d %d %d %d\n", verboso->operation_index,
                    verboso->operation_case, verboso->cache_index, verboso->cache_tag, verboso->cache_line,
                    (-1),
                    verboso->valid_bit, verboso->dirty_bit, verboso->last_used);
        } else {
            fprintf(escritura, "%d %s %llx %llx %d %llx %d %d %d\n", verboso->operation_index,
                    verboso->operation_case, verboso->cache_index, verboso->cache_tag, verboso->cache_line,
                    verboso->line_tag,
                    verboso->valid_bit, verboso->dirty_bit, verboso->last_used);
        }
    } else if (E == 1){
        if (verboso->line_tag == 0xffffffff) {
            fprintf(escritura, "%d %s %llx %llx %d %d %d %d\n", verboso->operation_index,
                    verboso->operation_case, verboso->cache_index, verboso->cache_tag, verboso->cache_line,
                    (-1),
                    verboso->valid_bit, verboso->dirty_bit);
        } else {
            fprintf(escritura, "%d %s %llx %llx %d %llx %d %d\n", verboso->operation_index,
                    verboso->operation_case, verboso->cache_index, verboso->cache_tag, verboso->cache_line,
                    verboso->line_tag,
                    verboso->valid_bit, verboso->dirty_bit);
        }
    }
}



struct Set* create_set(int S, int E){
    struct Set* set;
    set = (struct Set *)calloc(S, sizeof(struct Set));
    for(int i = 0; i < S; i++){
        set[i].index = 0;
        set[i].blocks = (struct Block **)calloc(E, sizeof(struct Block*));
        int num = 0;
        for(int j = 0; j < E; j++){
            set[i].blocks[j] = (struct Block *)calloc(E, sizeof(struct Block));
            set[i].blocks[j]->tag = 0xffffffff;
            set[i].blocks[j]->offset = 0;
            set[i].blocks[j]->valid_bit = 0;
            set[i].blocks[j]->dirty_bit = 0;
            set[i].blocks[j]->last_operation = 0;
            set[i].blocks[j]->LRU = num;
            num += 1;
        }
        set[i].blocks_in_set = 0;
    }

    return set;
}

struct Cache* create_chache(int E){
    struct Cache* cache = (struct Cache *)calloc(E, sizeof(struct Cache));
    cache->loads = 0;
    cache->stores = 0;
    cache->acceses = 0;
    cache->hits = 0;
    cache->clean_read_misses = 0;
    cache->clean_write_misses = 0;
    cache->dirty_read_misses = 0;
    cache->dirty_write_misses = 0;
    cache->read_bytes = 0;
    cache->write_bytes = 0;
    cache->read_accesses = 0;
    cache->write_accesses = 0;
    return cache;
}

void LRU(struct Set* set, long long int index, int posicion, int E){
    for(int i = 0; i < E; i++){
        if( i != posicion){
            set[index].blocks[i]->LRU -= 1;
        }
    }
}

void read_memory(struct Set* set, struct Cache* cache, long long int tag, long long int index,
                 long long int offset, int num_operacion,  struct Verboso* verboso, int E, int B){
    bool validacion = false;
    bool salida = false;
    verboso->operation_index = num_operacion;
    verboso->cache_index = index;
    verboso->cache_tag = tag;
    for(int i = 0; i < E; i++){
        if(!salida){
            if (set[index].blocks[i]->tag == tag) {
                if (set[index].blocks[i]->valid_bit) {
                    verboso->cache_line = i;
                    verboso->line_tag = set[index].blocks[i]->tag;
                    verboso->valid_bit = set[index].blocks[i]->valid_bit;
                    verboso->dirty_bit = set[index].blocks[i]->dirty_bit;
                    verboso->last_used = set[index].blocks[i]->last_operation;
                    set[index].blocks[i]->offset = offset;
                    set[index].blocks[i]->last_operation = num_operacion;
                    if (set[index].blocks[i]->LRU < E - 1) {
                        set[index].blocks[i]->LRU = E - 1;
                        LRU(set, index, i, E);
                    }
                    cache->hits += 1;
                    cache->read_accesses += 1;
                    validacion = true;
                    salida = true;
                    verboso->operation_case = "1";
                }
            }
        }
    }
    if(!validacion){
        if(set[index].blocks_in_set == E){
            for(int j = 0; j < E ; j++){
                if(!salida) {
                    if (set[index].blocks[j]->LRU == 0) {
                        if (set[index].blocks[j]->dirty_bit == 1) {
                            verboso->cache_line = j;
                            verboso->line_tag = set[index].blocks[j]->tag;
                            verboso->valid_bit = set[index].blocks[j]->valid_bit;
                            verboso->dirty_bit = set[index].blocks[j]->dirty_bit;
                            verboso->last_used = set[index].blocks[j]->last_operation;
                            set[index].blocks[j]->tag = tag;
                            set[index].blocks[j]->offset = offset;
                            set[index].blocks[j]->dirty_bit = 0;
                            set[index].blocks[j]->last_operation = num_operacion;
                            if (set[index].blocks[j]->LRU < E - 1) {
                                set[index].blocks[j]->LRU = E - 1;
                                LRU(set, index, j, E);
                            }
                            cache->dirty_read_misses += 1;
                            cache->read_accesses += DIRTY_MISS_PENALTY;
                            cache->read_bytes += (B * 2);
                            salida = true;
                            verboso->operation_case = "2b";

                        } else if (set[index].blocks[j]->dirty_bit == 0) {
                            verboso->cache_line = j;
                            verboso->line_tag = set[index].blocks[j]->tag;
                            verboso->valid_bit = set[index].blocks[j]->valid_bit;
                            verboso->dirty_bit = set[index].blocks[j]->dirty_bit;
                            verboso->last_used = set[index].blocks[j]->last_operation;
                            set[index].blocks[j]->tag = tag;
                            set[index].blocks[j]->offset = offset;
                            set[index].blocks[j]->dirty_bit = 0;
                            set[index].blocks[j]->last_operation = num_operacion;
                            if (set[index].blocks[j]->LRU < E - 1) {
                                set[index].blocks[j]->LRU = E - 1;
                                LRU(set, index, j, E);
                            }
                            cache->clean_read_misses += 1;
                            cache->read_accesses += CLEAN_MISS_PENALTY;
                            cache->read_bytes += B;
                            salida = true;
                            verboso->operation_case = "2a";
                        }
                    }
                }
            }
        }
        else if(set[index].blocks_in_set < E){
            int pos_bloque = set[index].blocks_in_set;
            verboso->cache_line = pos_bloque;
            verboso->line_tag = set[index].blocks[pos_bloque]->tag;
            verboso->valid_bit = set[index].blocks[pos_bloque]->valid_bit;
            verboso->dirty_bit = set[index].blocks[pos_bloque]->dirty_bit;
            verboso->last_used = set[index].blocks[pos_bloque]->last_operation;
            set[index].blocks[pos_bloque]->tag = tag;
            set[index].blocks[pos_bloque]->offset = offset;
            set[index].blocks[pos_bloque]->valid_bit = 1;
            set[index].blocks[pos_bloque]->last_operation = num_operacion;
            if(set[index].blocks[pos_bloque]->LRU < E - 1) {
                set[index].blocks[pos_bloque]->LRU = E - 1;
                LRU(set, index, pos_bloque, E);
            }
            cache->clean_read_misses += 1;
            cache->read_accesses += CLEAN_MISS_PENALTY;
            cache->read_bytes += B;
            set[index].blocks_in_set += 1;
            verboso->operation_case = "2a";
        }
    }
    cache->loads += 1;
    cache->acceses += 1;
}

void write_memory(struct Set* set, struct Cache* cache, long long int tag, long long int index,
                  long long int offset, int num_operacion, struct Verboso* verboso, int E, int B){
    bool validacion = false;
    bool salida = false;
    verboso->operation_index = num_operacion;
    verboso->cache_index = index;
    verboso->cache_tag = tag;
    for(int i = 0; i < E; i++){
        if(!salida) {
            if (set[index].blocks[i]->tag == tag) {
                if (set[index].blocks[i]->valid_bit) {
                    //printf("es un hit////\n");
                    verboso->line_tag = set[index].blocks[i]->tag;
                    verboso->cache_line = i;
                    verboso->valid_bit = set[index].blocks[i]->valid_bit;
                    verboso->dirty_bit = set[index].blocks[i]->dirty_bit;
                    verboso->last_used = set[index].blocks[i]->last_operation;
                    set[index].blocks[i]->offset = offset;
                    set[index].blocks[i]->dirty_bit = 1;
                    set[index].blocks[i]->last_operation = num_operacion;
                    if (set[index].blocks[i]->LRU < E - 1) {
                        set[index].blocks[i]->LRU = E - 1;
                        LRU(set, index, i, E);
                    }
                    cache->hits += 1;
                    cache->write_accesses += 1;
                    validacion = true;
                    salida = true;
                    verboso->operation_case = "1";
                }
            }
        }
    }
    if(!validacion){
        if(set[index].blocks_in_set == E){
            for(int j = 0; j < E ; j++){
                if(!salida) {
                    if (set[index].blocks[j]->LRU == 0) {
                        if (set[index].blocks[j]->dirty_bit == 1) {
                            verboso->cache_line = j;
                            verboso->line_tag = set[index].blocks[j]->tag;
                            verboso->valid_bit = set[index].blocks[j]->valid_bit;
                            verboso->dirty_bit = set[index].blocks[j]->dirty_bit;
                            verboso->last_used = set[index].blocks[j]->last_operation;
                            set[index].blocks[j]->tag = tag;
                            set[index].blocks[j]->offset = offset;
                            set[index].blocks[j]->dirty_bit = 1;
                            set[index].blocks[j]->last_operation = num_operacion;
                            if (set[index].blocks[j]->LRU < E - 1) {
                                set[index].blocks[j]->LRU = E - 1;
                                LRU(set, index, j, E);
                            }
                            cache->dirty_write_misses += 1;
                            cache->write_accesses += DIRTY_MISS_PENALTY;
                            cache->write_bytes += (B * 2);
                            salida = true;
                            verboso->operation_case = "2b";

                        } else if (set[index].blocks[j]->dirty_bit == 0) {
                            verboso->cache_line = j;
                            verboso->line_tag = set[index].blocks[j]->tag;
                            verboso->valid_bit = set[index].blocks[j]->valid_bit;
                            verboso->dirty_bit = set[index].blocks[j]->dirty_bit;
                            verboso->last_used = set[index].blocks[j]->last_operation;
                            set[index].blocks[j]->tag = tag;
                            set[index].blocks[j]->offset = offset;
                            set[index].blocks[j]->dirty_bit = 1;
                            set[index].blocks[j]->last_operation = num_operacion;
                            if (set[index].blocks[j]->LRU < E - 1) {
                                set[index].blocks[j]->LRU = E - 1;
                                LRU(set, index, j, E);
                            }
                            cache->clean_write_misses += 1;
                            cache->write_accesses += CLEAN_MISS_PENALTY;
                            cache->write_bytes += B;
                            salida = true;
                            verboso->operation_case = "2a";
                        }
                    }
                }
            }
        }
        else if(set[index].blocks_in_set < E){
            int pos_bloque = set[index].blocks_in_set;
            verboso->cache_line = pos_bloque;
            verboso->line_tag = set[index].blocks[pos_bloque]->tag;
            verboso->valid_bit = set[index].blocks[pos_bloque]->valid_bit;
            verboso->dirty_bit = set[index].blocks[pos_bloque]->dirty_bit;
            verboso->last_used = set[index].blocks[pos_bloque]->last_operation;
            set[index].blocks[pos_bloque]->tag = tag;
            set[index].blocks[pos_bloque]->offset = offset;
            set[index].blocks[pos_bloque]->dirty_bit = 1;
            set[index].blocks[pos_bloque]->valid_bit = 1;
            set[index].blocks[pos_bloque]->last_operation = num_operacion;
            if(set[index].blocks[pos_bloque]->LRU < E - 1) {
                set[index].blocks[pos_bloque]->LRU = E - 1;
                LRU(set, index, pos_bloque, E);
            }
            cache->clean_write_misses += 1;
            set[index].blocks_in_set += 1;
            cache->write_accesses += CLEAN_MISS_PENALTY;
            cache->write_bytes += B;
            verboso->operation_case = "2a";
        }
    }
    cache->stores += 1;
    cache->acceses += 1;
}

void free_memory_verboso(struct Verboso* verboso){
    free(verboso);
}
void free_memory(struct Cache* cache, struct Set* set, int S, int E){

    free(cache);

    for(int i = 0; i < S; i++){
        for(int j = 0; j < E; j++){
            free(set[i].blocks[j]);
        }
        free(set[i].blocks);
    }
    free(set);
}

int main( int argc, char* argv[]) {

    //printf("%s\n", argv[0]);

    if(argc < 5 || argc > 8){
        fprintf(stderr, "Error: Cantidad erronea de parametros\n");
        return -1;
    }
    else{
        char* FILENAME = argv[1];
        int C = atoi(argv[2]);
        int E = atoi(argv[3]);
        int S = atoi(argv[4]);
        int B = C/(S*E);
        int start = 0;
        int finish = 0;
        char* trash = "";
        int counter = 100001;
        if(argc > 5){
            start = atoi(argv[6]);
            finish = atoi(argv[7]);
            counter = 0;
        }
        //printf("%d, %d, %d, %d, %d, %d\n", C, E, S, B, start, finish);

        FILE* the_file = fopen(FILENAME, "r");
        FILE* escritura = fopen("Statistics.txt", "w");
        if (the_file == NULL) {
            fprintf(stderr, "Error: el archivo es invalido");
        }
        else {
            int bits = 32;
            int offset_bits = log_two(B);
            int index_bits = log_two(S);
            int tag_width = bits - offset_bits - index_bits;

            struct Set *set = create_set(S, E);
            struct Cache *cache = create_chache(E);
            char datos[150];
            char *data;
            int i = 0;
            while (fgets(datos, sizeof(datos), the_file)) {
                data = strtok(datos, " ");
                int contador = 0;
                char *instruction;
                long long int address;
                struct Verboso *verboso = create_verboso(S);
                while (data != NULL) {
                    if (contador == 1) {
                        instruction = data;
                    } else if (contador == 2) {
                        address = strtoll(data, NULL, 0);
                    }
                    data = strtok(NULL, " ");
                    contador++;
                }
                unsigned mask_1 = (1 << offset_bits) - 1;
                long long int offset = address & mask_1;
                unsigned int mask = (1 << index_bits) - 1;
                long long int index = (address >> offset_bits) & mask;
                long long int tag = address >> (index_bits + offset_bits);

                if (*instruction == 'R') {
                    read_memory(set, cache, tag, index, offset, i, verboso, E, B);

                } else if (*instruction == 'W') {
                    write_memory(set, cache, tag, index, offset, i, verboso, E, B);
                }
                if(counter < 100000 && counter >= start && counter <= finish)
                    mostrar_verboso(escritura, verboso, E);

                free_memory_verboso(verboso);
                i++;
                counter++;
            }
            float total_misses = cache->clean_write_misses + cache->clean_read_misses + cache->dirty_write_misses +
                                 cache->dirty_read_misses;
            int misses = total_misses;
            float miss_rate = total_misses / cache->acceses;
            fprintf(escritura, "%d-way, %d sets, size = %dKB",E, S, C/1000 );
            fprintf(escritura, "\nloads %d", cache->loads);
            fprintf(escritura, " stores %d", cache->stores);
            fprintf(escritura, " total %d\n", cache->acceses);
            fprintf(escritura, "rmiss %d", cache->clean_read_misses + cache->dirty_read_misses);
            fprintf(escritura, " wmiss %d", cache->clean_write_misses + cache->dirty_write_misses);
            fprintf(escritura, " total %d\n", misses);
            fprintf(escritura, "dirty rmiss %d", cache->dirty_read_misses);
            fprintf(escritura, " dirty wmiss %d\n", cache->dirty_write_misses);
            fprintf(escritura, "bytes read %d", cache->read_bytes);
            fprintf(escritura, " bytes written %d\n", cache->write_bytes);
            fprintf(escritura, "read time %d", cache->read_accesses);
            fprintf(escritura, " write time %d\n", cache->write_accesses);
            fprintf(escritura, "miss rate %f\n", miss_rate);

            free_memory(cache, set, S, E);
        }
    }
    return 0;
}