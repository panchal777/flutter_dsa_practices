

void main() {

  /// Fibonacci Search
  List<int> arr = [2, 3, 4, 10, 40];

  print("Index of 10: ${fibonacciSearch(arr, 10)}"); // Output: 3
  print("Index of 11: ${fibonacciSearch(arr, 11)}"); // Output: -1
}


int fibonacciSearch(List<int> arr, int x) {
  int n = arr.length;

  // Initialize Fibonacci numbers
  int fib2 = 0; // (m-2)'th Fibonacci
  int fib1 = 1; // (m-1)'th Fibonacci
  int fib = fib1 + fib2; // m'th Fibonacci

  // Find the smallest Fibonacci number >= n
  while (fib < n) {
    fib2 = fib1;
    fib1 = fib;
    fib = fib1 + fib2;
  }

  int offset = -1;

  while (fib > 1) {
    int i = (offset + fib2 < n) ? offset + fib2 : n - 1;

    if (arr[i] < x) {
      fib = fib1;
      fib1 = fib2;
      fib2 = fib - fib1;
      offset = i;
    } else if (arr[i] > x) {
      fib = fib2;
      fib1 = fib1 - fib2;
      fib2 = fib - fib1;
    } else {
      return i;
    }
  }

  // Check the last possible element
  if (fib1 == 1 && offset + 1 < n && arr[offset + 1] == x) {
    return offset + 1;
  }

  return -1;
}
