import 'package:flutter/foundation.dart';

void main() {

  /// Find the Missing Number
  List<int> arr = [8, 2, 4, 5, 3, 7, 1];

  int n = arr.length + 1; // Since one number is missing
  int expectedSum = 0;
  int actualSum = 0;

  // Calculate expected sum: 1 + 2 + ... + n
  for (int i = 1; i <= n; i++) {
    expectedSum += i;

    debugPrint('expectedSum: $expectedSum');
  }

  // Calculate actual sum of elements in the array
  for (int i = 0; i < arr.length; i++) {
    actualSum += arr[i];

    debugPrint('actualSum: $actualSum');
  }

  int missingNumber = expectedSum - actualSum;

  debugPrint('Missing number is: $missingNumber');
}
