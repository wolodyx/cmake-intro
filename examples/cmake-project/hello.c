#include "hello.h"

static const char* s_hello_message = "Hello, my friend!";

const char* hello_message()
{
    return s_hello_message;
}

