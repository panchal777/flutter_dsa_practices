import 'package:flutter/foundation.dart';

void main() {
  /// Closest String: Minimum distance between two words

  //   List<String> data = ['the', 'quick', 'brown', 'fox', 'quick'];

  //   String word1 = 'the';
  //   String word2 = 'fox';

  List<String> data = ['geeks', 'for', 'geeks', 'contribute', 'practice'];

  var word1 = 'geeks';
  var word2 = 'practice';

  var minDistance = 0;

  for (var i = 0; i < data.length; i++) {
    if (data[i] == word1) {
      for (var j = 0; j < data.length; j++) {
        if (data[j] == word2) {
          int distance = (i - j).abs();
          minDistance = distance;
          debugPrint('i: $i, j: $j  ---> distance: $distance');
          minDistance = (minDistance < distance) ? minDistance : distance;
        }
      }
    }
  }

  debugPrint('Total count -> $minDistance');
}
