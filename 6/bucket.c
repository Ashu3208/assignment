#include <stdio.h>
#include <stdlib.h>

#define NUM_BUCKETS 10

// Insertion sort for sorting the individual buckets
void insertionSort(float *arr, int n) {
  int i, j;
  float key;

  for (i = 1; i < n; i++) {
    key = arr[i];
    j = i - 1;

    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }

    arr[j + 1] = key;
  }
}

// Bucket sort for floating-point numbers
void bucketSort(float *arr, int n) {
  int i, j;
  float bucket[NUM_BUCKETS][n];
  int count[NUM_BUCKETS];

  for (i = 0; i < NUM_BUCKETS; i++) {
    count[i] = 0;
  }

  // Distribute the elements into the buckets
  for (i = 0; i < n; i++) {
    int bucketIndex = arr[i] * NUM_BUCKETS;
    bucket[bucketIndex][count[bucketIndex]++] = arr[i];
  }

  // Sort each bucket using insertion sort
  for (i = 0; i < NUM_BUCKETS; i++) {
    insertionSort(bucket[i], count[i]);
  }

  // Concatenate the sorted buckets back into the original array
  int index = 0;
  for (i = 0; i < NUM_BUCKETS; i++) {
    for (j = 0; j < count[i]; j++) {
      arr[index++] = bucket[i][j];
    }
  }
}

int main() {
  int n ;
  scanf("%d",&n);
  float arr[n] ;
  for(int i=0;i<n;i++){
    scanf("%f",&arr[i]);
  }
  bucketSort(arr, n);

  for (int i = 0; i < n; i++) {
    printf("%f ", arr[i]);
  }
  printf("\n");

  return 0;
}
