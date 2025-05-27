import 'package:flutter/cupertino.dart';

void main() {
  /// Given a number N, the task is to check if it is divisible by 7 or not.

  int N = 49; // Replace with any number you want to check
  if (N % 7 == 0) {
    debugPrint('$N is divisible by 7');
  } else {
    debugPrint('$N is not divisible by 7');
  }
}
