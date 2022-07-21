import 'dart:io';

int count(List<String> a, String x, int n) {
  int check = 0;
  for (int i = 0; i < n; i++) {
    if (x == a[i]) {
      check++;
    }
  }
  return check;
}

void inputInfo(int n, List<String> a) {
  for (int i = 0; i < n; i++) {
    String str = stdin.readLineSync()!;
    a.add(str);
  }
}

void main(List<String> args) {
  List<String> a = [];
  int n = int.parse(stdin.readLineSync()!);
  inputInfo(n, a);
  String x = stdin.readLineSync()!;
  print(count(a, x, n));
}
