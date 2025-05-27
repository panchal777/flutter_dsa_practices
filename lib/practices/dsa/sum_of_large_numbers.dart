import 'package:flutter/foundation.dart';

void main() {
  // Large numbers as strings
  String num1 = '9876543210123456789012345678901234567890';
  String num2 = '1234567890987654321098765432109876543210';

  // Convert strings to BigInt
  BigInt bigNum1 = BigInt.parse(num1);
  BigInt bigNum2 = BigInt.parse(num2);

  // Add the numbers
  BigInt sum = bigNum1 + bigNum2;

  // debugPrint the sum
  debugPrint('Sum of the two large numbers: $sum');
}
