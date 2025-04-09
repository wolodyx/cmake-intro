cmake_minimum_required(VERSION 3.22 FATAL_ERROR)

project(Hello LANGUAGES C)

add_library(hello SHARED hello.c)
add_library(print STATIC print.c)
add_executable(hello_world main.c)
target_link_libraries(hello_world hello print)

