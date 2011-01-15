#!/bin/sh

clang --analyze pipe.c pipe_test.c
gcc -g -fstrict-aliasing -std=c99 -DDEBUG -pthread -O -pipe main.c pipe.c pipe_test.c
valgrind ./a.out