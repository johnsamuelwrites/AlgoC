CC ?= gcc

CFLAGS=-Wall -Wextra -g

COBJS ?= client.o
SOBJS ?= serveur.o 

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

