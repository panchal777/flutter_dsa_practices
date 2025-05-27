import 'package:flutter/foundation.dart';

void main() {
  ///  Is String Palindrome(CurrentString=ReverseString)

  // debugPrint(isPalindrome("madam")); // Output: true
  // debugPrint(isPalindrome("racecar")); // Output: true
  debugPrint("${isPalindrome("hello")}"); // Output: false
  debugPrint("${isPalindrome("A Santa at NASA")}"); // Output: true (ignoring spaces and case)
}

bool isPalindrome(String input) {
  String cleanedInput = input.replaceAll(' ', '').toLowerCase();
  debugPrint('cleanedInput : $cleanedInput');

  String reversedInput = cleanedInput
      .split('')
      .reversed
      .join('');
  debugPrint('reversedInput : $reversedInput');
  return cleanedInput == reversedInput;
}
