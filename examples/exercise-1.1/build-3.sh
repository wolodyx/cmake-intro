#!/bin/bash
rm -f *.a *.o *.so exe
gcc -c -o hello.o hello.c
ar rcs libhello.a hello.o
gcc -c -o print.o print.c
ar rcs libprint.a print.o
gcc -L$PWD -o exe main.c -lhello -lprint
./exe

