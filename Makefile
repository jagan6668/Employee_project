
C=gcc
CFLAGS=-Wall -pthread
server: server_main.o functions.o
	$(C) $(CFLAGS) -o server server_main.o functions.o
client: client.o
	$(C) $(CFLAGS) -o client client.o

server_main.o:server_main.c definitions.h
	$(C) $(CFLAGS) -c server_main.c
client.o : client.c 
	$(C) $(CFLAGS) -c client.c
functions.o: functions.c 
	$(C) $(CFLAGS) -c functions.c
clean:
	rm -f server*.o client*.o
