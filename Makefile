CC=gcc
CFLAGS=-Wall

SRCS=$(wildcard src/*.c)
OBJS=$(patsubst src/%.c,%.o,$(SRCS))

all: Lumina

Lumina: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: src/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

# Move Lumina Binary Into /usr/bin/
install:
	cp -v Lumina /usr/bin/

# Remove Lumina Binary From /usr/bin/
uninstall:
	rm -f /usr/bin/Lumina

# Cleaning TEMP/WORK File 
clean:
	rm -f $(OBJS) Lumina
