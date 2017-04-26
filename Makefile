CC = gcc
CFLAGS = -c -Wall -Werror
EXECUTABLE = file 
SOURCES = main.c deposit.c 
OBJECTS = $(SOURCES: .c=.o)
HIP = build
HOP = src
OP = bin

all:$(OP)/$(EXECUTABLE)
$(HIP)/main.o: $(HOP)/main.c 
	@if [ ! -d $(HIP) ] ; then echo "creating $(HIP)" ; mkdir build; fi
	$(CC) $(CFLAGS) -c $(HOP)/main.c -o $(HIP)/main.o 

$(HIP)/deposit.o: $(HOP)/deposit.c
	@if [ ! -d $(HIP) ] ; then echo "creating $(HIP)" ; mkdir build; fi
	$(CC) $(CFLAGS) -c $(HOP)/deposit.c -o $(HIP)/deposit.o 

$(OP)/$(EXECUTABLE): $(HIP)/main.o $(HIP)/deposit.o
	@if [ ! -d $(OP) ] ; then echo "creating $(OP)" ; mkdir bin; fi
	$(CC) $(HIP)/main.o $(HIP)/deposit.o -o $(OP)/$(EXECUTABLE) 




.PHONY : clean
clean:
	rm -rf build/*.o bin/*