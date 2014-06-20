CC=g++
CFLAGS=-g -O2 -ggdb
OBJECTS=main.o common.o

all : $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o main

%.o : %.cpp
	$(CC) $(CFLAGS) -c $<
	
clean:
	rm -f main *.o
