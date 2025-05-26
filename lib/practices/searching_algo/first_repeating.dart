import 'package:flutter/cupertino.dart';

void main() {
  /// Find the first repeating element in an array of integers

  // Input: arr[] = {10, 5, 3, 4, 3, 5, 6}
  // Output: 5
  // Explanation: 5 is the first element that repeats

  var arr = {10, 5, 3, 4, 3, 5, 6};

  firstRepeating(arr);
}

firstRepeating(Set arr) {
  Set<int> seen = {};
  int? firstRepeating;

  for (int num in arr) {
    if (seen.contains(num)) {
      firstRepeating = num;
      break;
    }
    seen.add(num);
  }
  if (firstRepeating != null) {
    debugPrint('First repeating element is: $firstRepeating');
  } else {
    debugPrint('No repeating elements found.');
  }
}

//
// Input: arr[] = {10, 5, 3, 4, 3, 5, 6}
// Output: 5
// Explanation: 5 is the first element that repeats
//
// Input: arr[] = {6, 10, 5, 4, 9, 120, 4, 6, 10}
// Output: 6
// Explanation: 6 is the first element that repeats
