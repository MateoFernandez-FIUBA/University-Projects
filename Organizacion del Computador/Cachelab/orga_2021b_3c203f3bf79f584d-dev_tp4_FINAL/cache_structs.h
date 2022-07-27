#ifndef CACHE_STRUCTS_H
#define CACHE_STRUCTS_H

#include <stdbool.h> 

struct Cache{
    int loads;
    int stores;
    int acceses;
    int hits;
    int clean_read_misses;
    int clean_write_misses;
    int dirty_read_misses;
    int dirty_write_misses;
    int read_bytes;
    int write_bytes;
    int read_accesses;
    int write_accesses;
};

struct Block{
    long long int tag;
    long long int offset;
    int valid_bit;
    int dirty_bit;
    int last_operation;
    int LRU;
};

struct Set{
    struct Block** blocks;
    long long int index;
    int blocks_in_set;
};

struct Verboso{
    int operation_index;
    char* operation_case;
    long long int cache_index;
    long long int cache_tag;
    int cache_line;
    long long int line_tag;
    int valid_bit;
    int dirty_bit;
    int last_used;
};
#endif