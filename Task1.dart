void main() {

  var number1 = 8;
  var number2 = 12;
  var factors = <double>{};

  checkHCF(int num) {
    for(var i = 2; i <= 9; i++) {
      factors.add(num / i);
    }
  }

  compareHCF() {
    for(var i in factors) {
      if(number1 % i == 0 && number2 % i == 0) {
        return i;
      }
    }
  }

  checkLCM(int num) {
    for(var i = 1; i <= 9; i++) {
      factors.add(num * i.toDouble());
    }
  }

  compareLCM() {
    for(var i in factors) {
      if(i % number1 == 0 && i % number2 == 0) {
        return i;
      }
    }
  }

  checkHCF(number1);
  checkHCF(number2);
  var resultHCF = compareHCF();

  checkLCM(number1);
  checkLCM(number2);
  var resultLCM = compareLCM();




  print("The highest common factor of $number1 and $number2 is : $resultHCF");
  print("The lowest common multiple of $number1 and $number2 is : $resultLCM");

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