import 'dart:io';

void outputInfo(int line, var a) {
  for (int i = 0; i < line; i++) {
    print(a[i]);
  }
}

bool laSNT(int n) {
  if (n <= 2) {
    if (n == 2) {
      return true;
    }
    return false;
  } else {
    for (int i = 2; i < n; i++) {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }
}

void duyetPhanTu(var a, int line, int column) {
  for (int i = 0; i < line; i++) {
    for (var j = 0; j < column; j++) {
      if (laSNT(a[i][j])) {
        print(a[i][j]);
      }
    }
  }
}

void main(List<String> args) {
  int line = int.parse(stdin.readLineSync()!);
  int column = int.parse(stdin.readLineSync()!);
  var a = List.generate(
      line,
      (index) =>
          List.generate(column, (index) => int.parse(stdin.readLineSync()!)));
  print('so NT la: \n');
  duyetPhanTu(a, line, column);
}
