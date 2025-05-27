import 'package:flutter/foundation.dart';

// Example Usage
void main() {
  int number = 29; // Change this to test other numbers
  checkNumber(number);
}

bool isPrime(int num) {
  if (num <= 1) return false; // 0 and 1 are not prime
  if (num == 2) return true; // 2 is the only even prime number
  if (num % 2 == 0) return false; // Other even numbers are not prime

  for (int i = 3; i * i <= num; i += 2) {
    if (num % i == 0) return false;
  }
  return true;
}

void checkNumber(int num) {
  if (num < 2) {
    debugPrint("$num is neither prime nor composite.");
  } else if (isPrime(num)) {
    debugPrint("$num is a prime number.");
  } else {
    debugPrint("$num is a composite number.");
  }
}
