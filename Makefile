CC = gcc
CFLAGS = -Wall -O2
OUT ?= OUT

# Use wildcard to automatically find all .c files in subdirectories
SRCS = $(shell find src -name '*.c')

# Generate corresponding .o file paths by replacing 'src/' with '$(OUT)/' in the source file paths
OBJS = $(patsubst src/%.c, $(OUT)/%.o, $(SRCS))

# Define a function to extract the subfolder from the source file path
get_subfolder = $(dir $(patsubst src/%, %, $1))

# Create a list of unique subfolders
SUBFOLDERS = $(sort $(foreach src,$(SRCS),$(call get_subfolder,$(src))))

all: $(OUT) lumina

$(OUT):
	mkdir -p $(SUBFOLDERS:%=$(OUT)/%)

lumina: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

$(OUT)/%.o: src/%.c
	$(CC) $(CFLAGS) -c -o $@ $<


# Move Lumina Binary Into /usr/bin/
install:
	cp -v lumina /usr/bin/

# Remove lumina Binary From /usr/bin/
uninstall:
	rm -f /usr/bin/lumina

# Cleaning TEMP/WORK File
clean:
	rm -rfv $(OUT) lumina
