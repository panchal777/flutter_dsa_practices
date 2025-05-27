import 'package:flutter/foundation.dart';

void main() {
  // var list1 = [12, 35, 1, 10, 34, 1];
  // var list2 = [12, 35, 1, 10, 34, 1];

  // ascendingSort(list1);
  // descendingSort(list2);
  //
  // debugPrint('ascendingSort --> $list1');
  // debugPrint('descendingSort --> $list2');

  general();
}

ascendingSort(list) {
  debugPrint('original list: $list');
  // Sorting in ascending order using Bubble Sort
  for (var i = 0; i < list.length; i++) {
    for (var j = 0; j < list.length - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        debugPrint('${list[j]} >  ${list[j + 1]}');
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
        debugPrint('list :: $list');

        debugPrint('\n');
      }
    }
  }

  debugPrint('-------------------------------');
  return list;
}

decendingSort(list) {
  debugPrint('original list: $list');
  // Sorting in descending order using Bubble Sort
  for (var i = 0; i < list.length; i++) {
    for (var j = 0; j < list.length - i - 1; j++) {
      if (list[j] < list[j + 1]) {
        debugPrint('\n');
        debugPrint('${list[j]} <  ${list[j + 1]}');
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
        debugPrint('list :: $list');
      }
    }
  }
  return list;
}

general() {
  //Bubble Sort checks adjancent elements
  var a = [35, 10, 31, 11, 26];
  int temp;
  for (var i = 0; i < a.length; i++) {
    for (var j = i + 1; j < a.length; j++) {
      if (a[j] < a[i]) {
        temp = a[i];
        a[i] = a[j];
        a[j] = temp;
        debugPrint('I  :: $a ----index :: $i');
        debugPrint('J  :: $a ----index :: $j');
        debugPrint('\n');
      }
    }
  }
  debugPrint('Sort :: $a');
}
