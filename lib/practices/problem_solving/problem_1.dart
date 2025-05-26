// Problem 1: Library Book Code Validator
// Your local library uses a special coding system for its books. Each book is assigned a unique alphanumeric
// code that follows specific validation rules. As part of the library's new inventory system,
// you need to write a function that verifies whether a book code is valid.
// A valid book code must follow these rules:
// It must be exactly 10 characters long
// The first 3 characters must be uppercase letters (A-Z) representing the book's genre
// The next 5 characters must be digits (0-9) representing the book's ID
// The last 2 characters form a checksum, calculated as follows:
// The 9th character must be the last letter of the book's genre (the 3rd character)
// The 10th character must be the sum of the first and last digits of the book's ID (the 4th and 8th characters) modulo 10
// Write a function isValidBookCode(code) that returns true if the book code is valid, and false otherwise.
// Example 1:
// Input: "SCI12345I6"
// Output: true

import 'package:flutter/foundation.dart';

void main() {
  //Input 1
  // var input = "SCI12345I6";
  // var output = checkBookCode(input);
  // debugPrint('Input : $input -> output: $output');
  //
  // //Input 2
  // var input2 = "SCI12345I8";
  // var output2 = checkBookCode(input2);
  // debugPrint('Input : $input2 -> output: $output2');

  var input3 = "HIS00123S0";
  var output3 = checkBookCode(input3);
  debugPrint('Input : $input3 -> output: $output3');

  var input4 = "BIO73205K8";
  var output4 = checkBookCode(input4);
  debugPrint('Input : $input4 -> output: $output4');
}

bool checkBookCode(String code) {
  if (code.length != 10) {
    return false;
  }

  //1st case   --  3 characters
  var bookGenre = code.substring(0, 3);
  //2nd case   -- 5 characters
  var bookId = code.substring(3, 8);
  //3rd case -- 9th character must be the last letter of the book's genre (the 3rd character)
  var ninthLetter = code.substring(8, 9);
  //4th case -- 10th character must be the sum of the first and last digits of the book's ID (the 4th and 8th characters) modulo 10
  var lastLetter = code[code.length - 1];

  debugPrint('bookGenre: $bookGenre');
  debugPrint('bookId: $bookId');
  debugPrint('ninthLetter: $ninthLetter');
  debugPrint('lastLetter: $lastLetter');

  //must be uppercase letters (A-Z)
  if (!bookGenre.contains(RegExp('^[A-Z]')) ||
      (!bookId.contains(RegExp('^[0-9]'))) ||
      (ninthLetter != bookGenre[bookGenre.length - 1]) ||
      (lastLetter !=
          (int.parse(bookId[0]) + int.parse(bookId[bookId.length - 1]))
              .toString())) {
    return false;
  } else {
    return true;
  }
}
