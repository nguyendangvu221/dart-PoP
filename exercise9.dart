import 'dart:io';

void inputInfo(int n, List<String> a) {
  for (int i = 0; i < n; i++) {
    String str = stdin.readLineSync()!;
    a.add(str);
  }
}

void main(List<String> args) {
  List<String> a = [];
  List<String> b = [];
  List<String> c = [];
  int n = int.parse(stdin.readLineSync()!);
  print('Enter Array A: ');
  inputInfo(n, a);
  print('Enter Array B: ');
  inputInfo(n, b);
  c = a + b;
  print(c.join());
}
