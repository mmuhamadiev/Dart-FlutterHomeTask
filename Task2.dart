void main() {
  var num = 124;

  var decimalNum = num.toRadixString(2);

  var binaryNum = int.parse(decimalNum, radix: 2);

  print("Converting $num to decimal : $decimalNum");
  print("Converting $decimalNum to decimal : $binaryNum");


}