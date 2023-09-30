CC=gcc
CFLAGS=-Wall

SRCS=src/*.c
OBJS=$(SRCS:.c=.o)

all: Lumina

Lumina: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

uninstall:
	rm -f Lumina

clean:
	rm -f $(OBJS) Lumina
