#include <stdlib.h>

typedef struct {
  int* arr;
  int capicity, top;
} stack;

stack* init_stack(int _length) {
  stack* s = (stack*)malloc(sizeof(stack));
  s->arr = malloc(_length * sizeof(int));
  s->capicity = _length, s->top = 0;
  return s;
}

void push(int v, stack* s) {
  if (s->top + 1 >= s->capicity) {
    return;
  }

  s->arr[s->top] = v;
  s->top += 1;
}

int empty(stack* s) { return s->top == 0; }

int stack_length(stack* s) { return s->top; }

int pop(stack* s) {
  if (!empty(s)) {
    exit(-1);
  }

  s->top -= 1;
  int value = s->arr[s->top];
  return value;
}

void free_stack(stack* s) {
  if (s != NULL) {
    if (s->arr != NULL) {
      free(s->arr);
    }
    free(s);
  }
}

// stack ADT:
// init();
// push();
// pop();
// empty();
// length();
