#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// 写代码：基于上述定义，栈顶在链头，实现“出栈、入栈、判空、判满”四个基本操作
typedef struct node {
  struct node* next;
  int value;
} node;

typedef struct stack {
  struct node* head;
  int length;
} stack;

stack* init() {
  stack* s = (stack*)malloc(sizeof(stack));
  s->head = NULL;
  s->length = 0;
  return s;
}

bool empty(stack* s) { return s->length == 0 && s->head == NULL; }

int pop(stack* s) {
  if (empty(s)) {
    exit(1);
  }
  node* head = s->head;
  int value = head->value;

  s->head = head->next;
  s->length -= 1;

  free(head);
  return value;
}

void push(stack* s, int value) {
  node* current = (node*)malloc(sizeof(node));
  current->value = value;
  current->next = s->head;
  s->head = current;
  s->length += 1;
}

void free_stack(stack* s) {
  while (!empty(s)) {
    pop(s);
  }
  free(s);
}
