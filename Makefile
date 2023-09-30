CC=gcc
CFLAGS=-Wall
OUT?=OUT

SRCS=$(wildcard src/*.c)
OBJS=$(patsubst src/%.c,$(OUT)/%.o,$(SRCS))

all: $(OUT) lumina

lumina: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

$(OUT)/%.o: src/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(OUT):
	mkdir -p $(OUT)

# Move Lumina Binary Into /usr/bin/
install:
	cp -v lumina /usr/bin/

# Remove lumina Binary From /usr/bin/
uninstall:
	rm -f /usr/bin/lumina

# Cleaning TEMP/WORK File 
clean:
	rm -f $(OUT) lumina
