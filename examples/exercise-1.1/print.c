#include "print.h"

#include <stdio.h>

void print(const char* message)
{
    fprintf(stdout, "%s\n", message);
}

