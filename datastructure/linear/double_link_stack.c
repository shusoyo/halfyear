#include <stdio.h>
#include <stdlib.h>

// 写代码：基于上述定义，栈顶在链尾，实现“出栈、入栈、判空、判满”四个基本操作

typedef struct node {
  struct node* next;
  struct node* pre;
  int value;
} node;

typedef struct stack {
  node* top;
  int length;
} stack;

stack* init() {
  stack* s = (stack*)malloc(sizeof(stack));
  s->length = 0;
  s->top = NULL;
  return s;
}

int empty(stack* s) { return s->top == NULL && s->length == 0; }

void push(stack* s, int value) {
  node* current = (node*)malloc(sizeof(node));
  current->value = value;

  if (s->top == NULL) {
    s->top = current;
    current->pre = current;
    current->next = current;
  } else {
    current->next = s->top->next;
    current->pre = s->top;
    s->top->next->pre = current;
    s->top->next = current;
  }

  s->top = current;
  s->length += 1;
}

int pop(stack* s) {
  if (empty(s)) {
    exit(1);
  }

  node* current = s->top;
  if (s->length == 1) {
    s->top = NULL;
  } else {
    current->pre->next = current->next;
    current->next->pre = current->pre;
    s->top = current->pre;
    s->length -= 1;
  }

  int value = current->value;

  free(current);
  return value;
}

void free_stack(stack* s) {
  while (!empty(s)) {
    pop(s);
  }

  free(s);
}
