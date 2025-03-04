#!/bin/bash
rm -f *.a *.o *.so exe
gcc -c hello.c print.c
ar rs libprint_hello.a print.o hello.o
gcc -L$PWD -o exe main.c -lprint_hello
./exe

