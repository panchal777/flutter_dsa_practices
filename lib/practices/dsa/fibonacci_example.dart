import 'package:flutter/foundation.dart';

void main() {
  /*
  *      debugPrint the required output
         String: ‘abcdef’;
         Fibonacci Series: [1,1,2,3,5,8];
         Output: 20a1b1c2d3e5f8
  *
  * */

  String inputString = 'abcdef';
  List<int> fibonacciSeries = [1, 1, 2, 3, 5, 8];

  // Constructing the required output
  StringBuffer result = StringBuffer();
  result.write(20); // Adding 20 at the start

  for (int i = 0; i < inputString.length; i++) {
    result.write(inputString[i]); // Add character
    result.write(fibonacciSeries[i]); // Add corresponding Fibonacci number
  }

  // debugPrint the final output
  debugPrint(result.toString()); // Output: 20a1b1c2d3e5f8
}
