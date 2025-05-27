import 'package:flutter/foundation.dart';

void main() {
  int n = 10; // Number of terms in the Fibonacci series

  approach1(n);
  approach2(n);
}

approach1(int n) {
  List<int> fibonacci = [];

  int a = 0, b = 1;

  for (int i = 0; i < n; i++) {
    fibonacci.add(a);
    int temp = a + b;
    a = b;
    b = temp;
  }

  debugPrint(
    "approach1 -> $fibonacci",
  ); // Output: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
}

approach2(int n) {
  // —------------Recursive-------------------------

  //Recursive
  for (int i = 0; i < n; i++) {
    debugPrint("approach2 ->  ${fibonacciRecursive(i)}");
  }
}

int fibonacciRecursive(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2);
}

/*
*
* The Fibonacci series is a sequence of numbers where:
Each number is the sum of the two preceding ones.
The sequence starts with 0 and 1.
Fibonacci Series Example:
CopyEdit
0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, ...
Each number is obtained as:
0 + 1 = 1
1 + 1 = 2
1 + 2 = 3
2 + 3 = 5
3 + 5 = 8
5 + 8 = 13
...
Formula:
For any number n (starting from 0), the Fibonacci sequence is defined as:
F(n) = F(n-1) + F(n-2)
With base cases:
F(0) = 0,  F(1) = 1
*
*
*
* */
