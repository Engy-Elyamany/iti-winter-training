// ignore: unused_import
import 'dart:io';

class demo {
  static String? name;

  demo.withString(String s);

   demo() {
    name ??= 'flutter';
    //return demo.withString(name!);
  }

  void toUp() {
    print(name?.toUpperCase());
  }
}

void main() {
  demo d = demo();
  d.toUp();
}
