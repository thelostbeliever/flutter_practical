import 'dart:io';

List sort(List<int> arr) {
  for (int i = 0; i < (arr.length - 1); i++) {
    for (int j = 0; j < (arr.length - i - 1); j++) {
      if (arr[j] > arr[j + 1]) {
        var temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }

  return arr;
}

void main(List<String> arguments) {
  List<int> ls = [];

  stdout.write("Number of elements: ");
  String? n = stdin.readLineSync();

  if (n != null) {
    for (int i = 0; i < int.parse(n); i++) {
      stdout.write("Element ${i + 1}: ");
      String? temp = stdin.readLineSync();

      if (temp != null) {
        ls.add(int.parse(temp));
      }
    }
  }

  print("Sorted List = ${sort(ls)}");
}
