CC = g++
CFLAGS = -Wall -I.

ifeq ($(OS), Windows_NT)
	TARGET = student.dll
	LIBFLAG = -shared -Wl,--out-implib,libstudent.a
	RM = cmd /C del /Q
	DLLDEF = -DBUILD_DLL
else 
	UNAME_S := $(shell uname -s)

	ifeq ($(UNAME_S), Linux)  #Linux
		TARGET = libstudent.so
		LIBFLAG = -shared -fPIC
		RM = rm -f
		DLLDEF = 
	else ifeq ($(UNAME_S), Darwin)  #MacOS
		TARGET = libstudent.dylib
		LIBFLAG = -dynamiclib -fPIC
		RM = rm -f
		DLLDEF =
	endif
endif 

OBJS = student.o

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(LIBFLAG) -o $@ $(OBJS)

student.o: student.cpp student.hpp
	$(CC) $(CFLAGS) $(DLLDEF) -c student.cpp -o student.o

clean:
	$(RM) $(OBJS) $(TARGET)