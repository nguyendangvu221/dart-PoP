import 'dart:io';

void outputInfo(int line, var a) {
  for (int i = 0; i < line; i++) {
    print(a[i]);
  }
}

void arrayStretch(int line, int column, var a, var b) {
  for (int i = 0; i < line; i++) {
    for (int j = 0; j < column; j++) {
      b.add(a[i][j]);
    }
  }
}

void sortAscending(int line, int column, var a) {
  for (int i = 0; i < line * column - 1; i++) {
    for (int j = i + 1; j < line * column; j++) {
      if (a[i] > a[j]) {
        int temp = a[i];
        a[i] = a[j];
        a[j] = temp;
      }
    }
  }
}

void main(List<String> args) {
  int line = int.parse(stdin.readLineSync()!);
  int column = int.parse(stdin.readLineSync()!);
  var b = [];
  var a = List.generate(
      line,
      (index) =>
          List.generate(column, (index) => int.parse(stdin.readLineSync()!)));
  arrayStretch(line, column, a, b);
  sortAscending(line, column, b);
  print(b);
}
