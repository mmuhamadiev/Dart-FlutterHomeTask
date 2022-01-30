void main() {

  const number1 = 8;
  const number2 = 12;

  final func = Calc();

  func.checkHCF(number1);
  func.checkHCF(number2);
  final resultHCF = func.compareHCF(number1, number2);

  func.checkLCM(number1);
  func.checkLCM(number2);
  final resultLCM = func.compareLCM(number1, number2);

  print("The highest common factor of $number1 and $number2 is : $resultHCF");

  print("The lowest common multiple of $number1 and $number2 is : $resultLCM");

}

class Calc {

  final factors = <double>{};


  checkHCF(int num) {
    for(var i = 2; i <= 9; i++) {
      factors.add(num / i);
    }
  }

  compareHCF(int n1, int n2) {
    for(var i in factors) {
      if(n1 % i == 0 && n2 % i == 0) {
        return i;
      }
    }
  }

  checkLCM(int num) {
    for(var i = 1; i <= 9; i++) {
      factors.add(num * i.toDouble());
    }
  }

  compareLCM(int n1, int n2) {
    for(var i in factors) {
      if(i % n1 == 0 && i % n2 == 0) {
        return i;
      }
    }
  }
}

//Second way

//
// void main() {
//   var hometask1 = DelimetersCalculator();
//   print(hometask1.gcd(12, 9));
//   print(hometask1.lcm(12, 9));
// }
//
// class DelimetersCalculator {
//
//   gcd(int a, int b) {
//     while (b != 0) {
//       var t = b;
//       b = a % t;
//       a = t;
//     }
//     return a;
//   }
//
//   lcm(int c, int d) {
//     return c / gcd(c, d) * d;
//   }
// }