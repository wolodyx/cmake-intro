#!/bin/bash
rm -f *.a *.o *.so exe
gcc -c -fPIC -o hello.o hello.c
gcc -shared -o libhello.so hello.o
gcc -c -fPIC -o print.o print.c
gcc -shared -o libprint.so print.o
gcc -L$PWD -o exe main.c -lhello -lprint
LD_LIBRARY_PATH=$PWD ./exe

