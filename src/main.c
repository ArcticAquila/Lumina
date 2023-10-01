#include <stdio.h>
#include <string.h>
#define ANSI_COLOR_RED "\x1b[31m"
#define ANSI_COLOR_RESET "\x1b[0m"

extern void printVersion();

int main(int argc, char *argv[]) {
    // Exit the program when no arguments not provided
    if (argc < 2) {
        printf(ANSI_COLOR_RED "ERROR: The args not enough\n" ANSI_COLOR_RESET);
        return 1;
    }

    // Call the function to print the version
    if (argc == 2 && strcmp(argv[1], "--version") == 0) {
        
        printVersion();
        return 0;
    }

    return 0; // You also need to close the main function with a return statement
}
    