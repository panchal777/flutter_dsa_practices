import 'package:flutter/cupertino.dart';

void main() {
  ///Reverse the String ‘Hello World -> dlroW olleH’
  var text = 'Hello World';
  approach1(text);
  approach2(text);
}

approach1(String input) {
  var reverseString = '';
  reverseString = input.split('').reversed.join('');
  debugPrint('Reverse --> $reverseString');
}

approach2(String text) {
  var reverseString = '';
  for (var j = text.length - 1; j >= 0; j--) {
    reverseString = reverseString + text[j];
    // debugPrint('index j: $j ---> ${text[j]}');
  }
  debugPrint('Reverse --> $reverseString');
}
