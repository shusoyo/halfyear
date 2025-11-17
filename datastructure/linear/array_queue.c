#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// 写代码：定义顺序存储的队列（数组实现），要求数组空间可以被循环利用
// 写代码：基于上述定义，实现“出队、入队、判空、判满”四个基本操作
// queue ADT

typedef struct queue {
  int* arr;
  int capacity;
  int size;
  int rear, head;
} queue;

queue* init_queue(int _capicity) {
  int* arr = (int*)malloc(_capicity * sizeof(int));
  queue* q = (queue*)malloc(sizeof(queue));
  q->arr = arr;
  q->rear = 0;
  q->head = 0;
  q->size = 0;
  q->capacity = _capicity;

  return q;
};

bool full(queue* q) { return q->size == q->capacity; }
bool empty(queue* q) { return q->size == 0; }

void enqueue(queue* q, int value) {
  if (full(q)) {
    exit(1);
  }

  q->arr[q->rear] = value;
  q->rear = (q->rear + 1) % q->capacity;
  q->size += 1;
}

int dequeue(queue* q) {
  if (empty(q)) {
    exit(1);
  }

  int value = q->arr[q->head];
  q->head = (q->head + 1) % q->capacity;
  q->size -= 1;
  ;

  return value;
}

int gethead(queue* q) {
  if (empty(q)) {
    exit(1);
  }

  return q->arr[q->head];
}
void free_queue(queue* q) {
  free(q->arr);
  free(q);
}

int main() {
  queue* q = init_queue(5);

  printf("入队 1, 2, 3...\n");
  enqueue(q, 1);
  enqueue(q, 2);
  enqueue(q, 3);

  printf("队头元素: %d\n", gethead(q)); // 应该是 1

  printf("出队: %d\n", dequeue(q)); // 应该是 1
  printf("出队: %d\n", dequeue(q)); // 应该是 2

  printf("再入队 4, 5, 6...\n");
  enqueue(q, 4);
  enqueue(q, 5);
  enqueue(q, 6); // 这里利用了循环数组的特性

  printf("队头元素: %d\n", gethead(q)); // 应该是 3

  while (!empty(q)) {
    printf("出队: %d\n", dequeue(q));
  }

  free_queue(q);
  return 0;
}
