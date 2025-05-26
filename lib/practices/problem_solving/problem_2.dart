import 'package:flutter/foundation.dart';

void main() {
  // Input:
  //   var k = 5;
  //   var arr = [2, 8, 3, 6, 4, 7, 1, 9];

  //   var k = 3;
  //   var arr = [4, 1, 5, 2, 6, 3];

  var k = 7;
  var arr = [3, 1, 2, 8, 6];

  var leftArray = [];
  var rightArray = [];

  for (var i = 0; i < arr.length; i++) {
    if (arr[i] < k) {
      leftArray.add(arr[i]);
    } else if (arr[i] >= k) {
      rightArray.add(arr[i]);
    }
  }

  debugPrint('leftArray--> $leftArray');
  debugPrint('rightArray--> $rightArray');

  if (leftArray.length != rightArray.length) {
    debugPrint('final output: ${-1}');
  } else {
    var list = [];
    list.addAll(leftArray);
    list.addAll(rightArray);
    debugPrint('final output: $list');
  }
}

// Problem 2: Equal Partition Rearrangement with Threshold
// You are given an array of integers arr[] of length n. The array contains some repeating integers, and your task is to rearrange the array such that:
// All elements that are smaller than a given threshold k should be placed before the elements greater than or equal to k.
// The relative order of elements within each group (smaller than k and greater than or equal to k) must be preserved.

// However, there is an additional constraint:
// The number of elements smaller than k should be equal to the number of elements greater than or equal to k in the resulting array.

// If it's impossible to achieve such a rearrangement, return -1. Otherwise, return the rearranged array.
// Input:
// An integer k.
// A list of integers arr[] of length n.
// Output:
// Return the rearranged array that satisfies the conditions, or -1 if it's not possible.

// Example 1:
// Input:
// k = 5
// arr = [2, 8, 3, 6, 4, 7, 1, 9]
// Output:
// [2, 3, 4, 1, 8, 6, 7, 9]
