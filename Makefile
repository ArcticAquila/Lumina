CC=gcc
CFLAGS=-Wall
OUT?=OUT

SRCS=$(wildcard src/*.c)
OBJS=$(patsubst src/%.c,$(OUT)/%.o,$(SRCS))

all: $(OUT) Lumina

Lumina: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

$(OUT)/%.o: src/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(OUT):
	mkdir -p $(OUT)

# Move Lumina Binary Into /usr/bin/
install:
	cp -v Lumina /usr/bin/

# Remove Lumina Binary From /usr/bin/
uninstall:
	rm -f /usr/bin/Lumina

# Cleaning TEMP/WORK File 
clean:
	rm -f $(OBJS) Lumina
