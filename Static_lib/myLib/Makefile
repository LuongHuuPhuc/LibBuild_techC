CC = gcc 
CFLAGS = -Wall -I.

all: libsales.a 

libsales.a: sales.o
	ar rcs libsales.a sales.o

sales.o: sales.c sales.h
	$(CC) $(CFLAGS) -c sales.c -o sales.o

clean: