void main() {
  final number = 25;

  final sqrt = Sqrt();


  var result = sqrt.squareRoot(number);
  print("The Nth of number $number is : $result");
}

class Sqrt {

  squareRoot(int num) {
    double t;
    double sqrtroot = (num ~/ 2).toDouble();

    do {
      t = sqrtroot.toDouble();
      sqrtroot = num.divide(t).plus(t).divide(2).toDouble();


    } while ((t - sqrtroot) != 0);
    return sqrtroot;
  }

}

extension on num {
  num plus(num other) => this + other;
  num divide(num other) => this ~/ other;

}