import 'package:flutter/cupertino.dart';

void main() {
  /// Largest element in an Array

  var a1 = [12, 35, 1, 10, 34, 1];
  var a2 = [10, 5, 10];

  secondMax(a1);
  secondMax(a2);
}

secondMax(List<int> numbers) {
  if (numbers.length < 2) {
    debugPrint("Array must have at least two elements.");
    return;
  }

  int max = numbers[0];
  int secondMax = numbers[0];

  for (int num in numbers) {
    if (num > max) {
      secondMax = max;
      max = num;
    } else if (num > secondMax && num < max) {
      secondMax = num;
    }
  }

  debugPrint('array: $numbers');
  debugPrint('second max: $secondMax');
  debugPrint('');
}

// Input: arr[] = [12, 35, 1, 10, 34, 1]
// Output: 34
// Explanation: The largest element of the array is 35 and the second largest element is 34.
//
// Input: arr[] = [10, 5, 10]
// Output: 5
// Explanation: The largest element of the array is 10 and the second largest element is 5.
//
// Input: arr[] = [10, 10, 10]
// Output: -1
// Explanation: The largest element of the array is 10 there is no second largest element.
//
