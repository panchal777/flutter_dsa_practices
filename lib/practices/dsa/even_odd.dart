import 'package:flutter/foundation.dart';

void checkEvenOrOdd(int num) {
  if (num % 2 == 0) {
    debugPrint("$num is an even number.");
  } else {
    debugPrint("$num is an odd number.");
  }
}

// Example Usage
void main() {
  int number = 7; // Change this to test other numbers
  checkEvenOrOdd(number);
}
