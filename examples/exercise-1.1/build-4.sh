#!/bin/bash
rm -f *.a *.o *.so exe
gcc -c -fPIC -o hello.o hello.c
gcc -shared -o libhello.so hello.o
gcc -c -o print.o print.c
ar rcs libprint.a print.o
gcc -L$PWD -o exe main.c -lhello -lprint
LD_LIBRARY_PATH=$PWD ./exe

