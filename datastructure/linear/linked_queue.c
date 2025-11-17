#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// 写代码：定义链式存储的队列（单链表实现）
// 写代码：基于上述定义，实现“出队、入队、判空、判满”四个基本操作

typedef struct node {
  struct node* next;
  int value;
} node;

typedef struct queue {
  struct node* head;
  struct node* rear;
} queue;

queue* init() {
  queue* q = (queue*)malloc(sizeof(queue));
  q->head = NULL;
  q->rear = NULL;
  return q;
};

bool empty(queue* q) { return q->head == NULL; }

void enqueue(queue* q, int value) {
  node* current = (node*)malloc(sizeof(node));
  current->value = value;
  current->next = NULL;

  if (q->rear == NULL && q->head == NULL) {
    q->rear = current;
    q->head = current;
  } else {
    q->rear->next = current;
    q->rear = current;
  }
}

int dequeue(queue* q) {
  if (empty(q)) {
    exit(1);
  }

  node* current = q->head;
  int value = current->value;

  q->head = current->next;
  free(current);

  if (q->head == NULL) {
    q->rear = NULL;
  }

  return value;
}
