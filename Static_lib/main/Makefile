CC = gcc 
CFLAGS = -Wall -I../myLib # -Wall: hien thi tat ca canh bao (Warning), -I: de chi thi thu muc trinh bien dich can tim file.h 
LDFLAGS = -L../myLib -lsales

all: main 

app: main.o 
	$(CC) -o main main.o $(LDFLAGS)

main.o: main.c 
	$(CC) $(CFLAGS) -c main.c -o main.o
