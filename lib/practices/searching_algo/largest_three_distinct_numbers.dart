import 'package:flutter/cupertino.dart';

void main() {
  /// Largest three distinct elements in an array

  var arr = [10, 4, 3, 50, 23, 90];
  // Output: [90, 50, 23]

  // Step 1: Remove duplicates using a Set
  Set<int> distinctSet = arr.toSet();

  // Step 2: Convert to list and sort in descending order
  List<int> sortedList = distinctSet.toList()..sort((a, b) => b.compareTo(a));

  // Step 3: Get the top 3 elements
  List<int> topThree = sortedList.take(3).toList();

  debugPrint('Largest three distinct elements: $topThree');
}

// Input: arr[] = [10, 4, 3, 50, 23, 90]
// Output: [90, 50, 23]
//
// Input: arr[] = [10, 9, 9]
// Output: [10, 9]
// There are only two distinct elements
//
// Input: arr[] = [10, 10, 10]
// Output: [10]
// There is only one distinct element
//
// Input: arr[] = []
// Output: []
