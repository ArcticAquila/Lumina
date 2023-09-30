#include <stdio.h>
#define ANSI_COLOR_RED "\x1b[31m"
#define ANSI_COLOR_RESET "\x1b[0m"

int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf(ANSI_COLOR_RED "ERROR: The args not enough\n" ANSI_COLOR_RESET);
        return 1;
    }

	return 0;
}
