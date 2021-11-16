CC ?= gcc

COBJS ?= client.o bmp.o couleur.o
SOBJS ?= serveur.o 

CFLAGS ?= -Wall -Wextra

.SUFFIXES: .c .o

SERVER = serveur
CLIENT = client

all: $(SERVER) $(CLIENT)

$(SERVER): $(SOBJS)
	$(CC) $(CFLAGS) -o $(SERVER) $(SOBJS)

$(CLIENT): $(COBJS)
	$(CC) $(CFLAGS) -o $(CLIENT) $(COBJS)

.c.o: 
	$(CC) $(CFLAGS) -c $*.c

