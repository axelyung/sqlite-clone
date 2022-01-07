#include <stdlib.h>
#include <string.h>

#ifndef INPUT_H_INCLUDED
#define INPUT_H_INCLUDED

typedef struct {
  char* buffer;
  size_t buffer_length;
  ssize_t input_length;
} InputBuffer;

InputBuffer* new_input_buffer();

void close_input_buffer(InputBuffer* input_buffer);

void read_input(InputBuffer* input_buffer);

void print_prompt();
#endif
