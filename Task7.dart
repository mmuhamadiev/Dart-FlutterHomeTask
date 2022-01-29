void main() {
  int number = 25;

  squareRoot(int num) {
    double t;
    double sqrtroot = (num ~/ 2).toDouble();

    do {
      t = sqrtroot.toDouble();
      sqrtroot = num.divide(t).plus(t).divide(2).toDouble();


    } while ((t - sqrtroot) != 0);
    return sqrtroot;
  }

  var result = squareRoot(number);
  print("The Nth of number $number is : $result");
}

extension on num {
  num plus(num other) => this + other;
  num divide(num other) => this ~/ other;

}