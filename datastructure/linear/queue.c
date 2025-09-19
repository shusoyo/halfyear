#include <stdlib.h>

// queue ADT
typedef struct {
  int* arr;
  int capicity;
  int rear, head;
} queue;

queue* init_queue(int _capicity) {
  int* arr = (int*)malloc(_capicity * sizeof(int));
  queue* q = (queue*)malloc(sizeof(queue));
  q->arr = arr;
  return q;
};
