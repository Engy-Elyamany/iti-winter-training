/* Problem
• Define a class SimpleTimethat storesthe time passed from the beginning of 
the day. It should take four arguments: hours, minutes, seconds and 
nanoseconds, where each argument has the default value of zero.

• Implement two member functions: toSecondOfDayand 
toNanoOfDayreturning the number of seconds and nanoseconds 
accordingly passed from the beginning of the da
*/

/* Example
The Example in main function 
*/
class simpleTime {
  int h;
  int m;
  int s;
  int nano;
  simpleTime([this.h = 0, this.m = 0, this.s = 0, this.nano = 0]);

  int toSecondOfDay() {
    int res = h * 3600 + m * 60 + s + nano*1000000000;
    return res;
  }

  int toNanoOfDay() {
    int res = (h * 3600 + m * 60 + s) * 1000000000 + nano;
    return res;
  }
}

void main() {
  var noon = simpleTime(12);
  print(noon.toSecondOfDay());                 //43200

  var halfPastSeven = simpleTime(6, 30);
  print(halfPastSeven.toNanoOfDay());         //23400000000000

  var nanosecond = simpleTime(0, 0, 0, 1);
  print(nanosecond.toNanoOfDay());           // 1

  var second = simpleTime(0, 0, 1);
  print(second.toNanoOfDay());              // 1000000000
}
