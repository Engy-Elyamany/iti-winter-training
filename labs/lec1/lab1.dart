/* Problem
Dr. Bruce Banner hates his enemies (like others don't). As we all know, he can barely talk
when he turns into the incredible Hulk. That's why he asked you to help him to express his
feelings.

Hulk likes the Inception so much, and like that his feelings are complicated. They
have n layers. The first layer is hate, second one is love, third one is hate and so on...

For example if n = 1 , then his feeling is I hate it " or if n = 2 it's " I hate that I
love it ", and if n = 3 it's " I hate that I love that I hate it " and so

Input
The only line of the input contains a single integer n 1 ≤ n ≤ 100 the number of layers
of love and hate.

Output
Print Dr.Banner's feeling in one line.

*/

/* Example
• Input: 1
  Output: I hate it
  
•Input: 2
 Output: I hate that I love it

•Input: 3
 Output: I hate that I love that I hate it
*/

import 'dart:io';

void main() {
  stdout.write("Input : ");
  int n = int.parse(stdin.readLineSync()!);

  String firstHate = "I hate it ";
  String nextHate = "I hate that ";

  String firstLove = "I love it ";
  String nextLove = "I love that ";

  var is_odd = n.isOdd;

  stdout.write("Output : ");
  while (true) {
    if (n == 1) {
      if (is_odd) {
        print(firstHate); // n is odd
      } else {
        print(firstLove); // n is even
      }
      break;
    } else {
      stdout.write(nextHate);
      n--;
      if (n != 1) {
        stdout.write(nextLove);
        n--;
      }
    }
  }
}
