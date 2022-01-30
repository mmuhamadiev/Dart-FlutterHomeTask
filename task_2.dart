void main() {
  final number = 124;

  final convert = Convertor();

  final d = convert.convertDecimal(number);
  final b = convert.convertBinary(d);

  print("Converting $number to decimal : $d");
  print("Converting $d to decimal : $b");

}

class Convertor {

  convertDecimal(int number) {
  return number.toRadixString(2);
}

convertBinary(String numStr) {
  return int.parse(numStr, radix: 2);
}

}