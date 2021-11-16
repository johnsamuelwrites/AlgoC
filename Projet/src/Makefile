CC ?= gcc

COBJS ?= client.o bmp.o couleur.o
SOBJS ?= serveur.o 

CFLAGS ?= -Wall -Wextra

# Déboggage
DEBUG ?= -ggdb3

.SUFFIXES: .c .o

SERVER = serveur
CLIENT = client

all: $(SERVER) $(CLIENT)

$(SERVER): $(SOBJS)
	$(CC) $(DEBUG) $(CFLAGS) -o $(SERVER) $(SOBJS)

$(CLIENT): $(COBJS)
	$(CC) $(DEBUG) $(CFLAGS) -o $(CLIENT) $(COBJS)

.c.o: 
	$(CC) $(DEBUG) $(CFLAGS) -c $*.c

