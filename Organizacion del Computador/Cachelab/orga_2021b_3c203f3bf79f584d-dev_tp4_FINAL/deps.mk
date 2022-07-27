#CFLAGS ?= -g -O2 -std=gnu11 -Wvla
CFLAGS ?= -g -O2 -std=gnu11 -Wall -Wextra -Wvla

main: 								main.o
									

main.o:								main.c cache_structs.h


.PHONY: clean
