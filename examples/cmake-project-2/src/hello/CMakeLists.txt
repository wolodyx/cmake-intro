add_library(hello SHARED hello.c)

target_include_directories(hello PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

