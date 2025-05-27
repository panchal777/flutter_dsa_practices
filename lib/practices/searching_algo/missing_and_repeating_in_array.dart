void main() {
  ///Missing and Repeating in an Array
  List<int> arr = [3, 1, 3];
  findMissingAndRepeating(arr);
  // Output: 3, 2
}

void findMissingAndRepeating(List<int> arr) {
  int n = arr.length;
  Map<int, int> freq = {};

  // Count the frequency of each number
  for (int num in arr) {
    freq[num] = (freq[num] ?? 0) + 1;
  }

  int missing = -1;
  int repeating = -1;

  // Check which number is missing and which is repeating
  for (int i = 1; i <= n; i++) {
    if (freq.containsKey(i)) {
      if (freq[i] == 2) {
        repeating = i;
      }
    } else {
      missing = i;
    }
  }

  print('Repeating: $repeating, Missing: $missing');
}
