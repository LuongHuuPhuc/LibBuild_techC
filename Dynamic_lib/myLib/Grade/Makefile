CC = g++
CFLAGS = -Wall -I.

ifeq ($(OS), Windows_NT)
	TARGET = grade.dll
	LIBFLAG = -shared -Wl,--out-implib,libgrade.a
	RM = cmd /C del /Q
	DLLDEF = -DBUILD_DLL
else
	UNAME_S := $(shell uname -s)
	
	ifeq ($(UNAME_S), Linux)
		TARGET = libgrade.so
		LIBFLAG = -shared -fPIC
		RM = rm -f
		DLLDEF = 
	else ifeq ($(UNAME_S), Darwin)
		TARGET = libgrade.dylib
		LIBFLAG = -	dynamiclib -fPIC 
		RM = rm -f
		DLLDEF = 
	endif 
endif

OBJS = grade.o

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(LIBFLAG) -o $@ $(OBJS)

grade.o: grade.cpp grade.hpp
	$(CC) $(CFLAGS) $(DLLDEF) -c grade.cpp -o grade.o

clean: 
	$(RM) $(OBJS) $(TARGET)