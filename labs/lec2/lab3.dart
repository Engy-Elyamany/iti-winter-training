/* Problem
Given an integer n, return an integer that is the reverse ordering of digits.
*/

/* Example
981 => 189
500 => 5
-90 => -9
*/

import 'dart:io';

void reverseInt(int n) {
  String s = n.toString();
  if (n.isNegative) {
    stdout.write('-');
    for (var i = s.length - 1; i > 0; i--) {
      if (s[i] == "0")
        continue;
      else
        stdout.write('${s[i]}');
    }
  } else {
    for (var i = s.length - 1; i >= 0; i--) {
      if (s[i] == "0")
        continue;
      else
        stdout.write('${s[i]}');
    }
  }
}

void main() {
  stdout.write('Input the number : ');
  int num = int.parse(stdin.readLineSync()!);

  reverseInt(num);
}
