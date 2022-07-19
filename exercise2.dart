import 'dart:io';

void inputInfo(int n, List<int> a) {
  for (int i = 0; i < n; i++) {
    int number = int.parse(stdin.readLineSync()!);
    a.add(number);
  }
}

int sum(int n, List<int> a) {
  int num = 0;
  for (int i = 0; i < n; i++) {
    num = num + a[i];
  }
  return num;
}

void main(List<String> args) {
  List<int> a = [];
  int n = int.parse(stdin.readLineSync()!);
  inputInfo(n, a);
  print(sum(n, a));
}
