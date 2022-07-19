import 'dart:io';

void inputInfo(int n, List<int> a) {
  for (int i = 0; i < n; i++) {
    int number = int.parse(stdin.readLineSync()!);
    a.add(number);
  }
}

int count(int n, List<int> a, int x) {
  int check = 0;
  for (int i = 0; i < n; i++) {
    if (x == a[i]) {
      check++;
    }
  }
  return check;
}

void main(List<String> args) {
  List<int> a = [];
  int n = int.parse(stdin.readLineSync()!);
  int x = int.parse(stdin.readLineSync()!);
  inputInfo(n, a);
  print(count(n, a, x));
}
