CC = g++
CFLAGS = -Wall -mwindows -static-libgcc -static-libstdc++
OBJECTS =  main.o
LDFLAGS= -lws2_32


serveur.exe: $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o serveur.exe $(LDFLAGS)

all:serveur.exe

.PHONY: clean
clean:
	rm -f *~ *.o serveur.exe
