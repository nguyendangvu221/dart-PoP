import 'dart:io';

void main(List<String> args) {
  String str = stdin.readLineSync()!;
  print('tra ve chuoi hoa: ');
  str.toUpperCase();
  print(str.toUpperCase());
  print('tra ve chuoi thuong: ');
  print(str.toLowerCase());
}
