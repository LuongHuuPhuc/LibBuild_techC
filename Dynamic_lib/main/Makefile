CC = g++
CFLAGS = -Wall -I../myLib/Student -I../myLib/Grade

ifeq ($(OS), Windows_NT) 
	TARGET = main
	LIBS = -L../myLib/Student -lstudent -L../myLib/Grade -lgrade
	RM = cmd /C del /Q
else
	UNAME_S := $(shell uname -s)

	ifeq ($(UNAME_S), Linux)
		TARGET = main
		LIBS = -L../myLib/Student -lstudent -L../myLib/Grade -lgrade
		RM = rm -f
	else ifeq ($(UNAME_S), Darwin)
		TARGET = main
		LIBS = -L../myLib/Student -lstudent -L../myLib/Grade -lgrade
		RM = rm -f
	endif
endif

all: libs $(TARGET)

libs: 
	$(MAKE) -C ../myLib

$(TARGET): main.o 
	$(CC) main.o $(LIBS) -o $@

main.o: main.cpp
	$(CC) $(CFLAGS) -c main.cpp -o main.o

clean:
	$(RM) $(OBJS) $(TARGET)
	$(MAKE) -C ../myLib clean