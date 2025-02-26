#!/bin/bash
rm -f *.a *.o *.so exe
gcc -o exe *.c
./exe

