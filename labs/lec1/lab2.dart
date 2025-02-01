/* Problem
A soldier wants to buy w bananas in the shop. He has to
pay k dollars for the first banana, 2 k dollars for the second one and
so on (in other words, he has to pay i · k dollars for the i th banana).

He has n dollars. How many dollars does he have to borrow from his
friend soldier to buy w bananas?
*/

/* Example
Input: 3 17 4
  Output: 13
*/

import 'dart:io';

void main() {
  print("Input : ");
  int k = int.parse(stdin.readLineSync()!); //The cost of the first banana
  int n = int.parse(
      stdin.readLineSync()!); //initial number of dollars the soldier has
  int w = int.parse(stdin.readLineSync()!); //Number of bananas he wants

  int price = 0, sum = 0;

  while (w > 0) {
    price += k;
    sum += price;
    w--;
  }

  int l = sum - n;
  print("Output : $l"); //The amount of dollars he has to borrow
}
