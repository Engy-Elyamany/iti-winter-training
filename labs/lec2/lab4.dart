/* Problem
Given a string implement a function which returns longest word in
that string. If there are two or more words that have the same length,
return the first longest word from the string. Ignore punctuation.
Input string can't be empty or blank string.
*/

/* Example
"big flower" => "flower"
"this is a house" => "house"
*/

import 'dart:io';

String longestWord(String s) {
  List splitted = s.split(' ');
  int mx = splitted[0].length, pos = 0;
  for (var i = 1; i < splitted.length; i++) {
    if (splitted[i].length > mx) {
      mx = splitted[i].length;
      pos = i;
    }
  }
  return splitted[pos];
}

void main() {
  stdout.write('Input the sentence : ');
  String str = stdin.readLineSync()!;

  String res = longestWord(str);
  stdout.write('Longest word is "$res"');
}
