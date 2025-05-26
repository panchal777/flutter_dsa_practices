import 'package:flutter/foundation.dart';

void main() {
  /// Largest element in an Array

  var a1 = [10, 20, 4];
  var a2 = [20, 10, 20, 4, 100];

  checkLargest(a1);
  checkLargest(a2);
}

void checkLargest(List<int> list) {
  int largest = list[0];
  for (int i = 1; i < list.length; i++) {
    if (list[i] > largest) {
      largest = list[i];
    }
  }
  debugPrint('array: $list');
  debugPrint('largest: $largest');
  debugPrint('');
}

// Input: arr[] = [10, 20, 4]
// Output: 20
// Explanation: Among 10, 20 and 4, 20 is the largest.
//
// Input: arr[] = [20, 10, 20, 4, 100]
// Output: 100
