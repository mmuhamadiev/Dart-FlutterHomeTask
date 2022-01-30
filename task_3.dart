void main() {
  final func = ReturnNumberByString();

  func.funReturnNum("one 5");
}

class ReturnNumberByString {

  funReturnNum(String string) {
    final listOfStrings = string.split(" ");

    var listNum = [];

    for (var value in listOfStrings) {
      if (int.tryParse(value) == null) {
      } else {
        listNum = [int.tryParse(value)];
      }
    }

    print("The number out of string is : $listNum");
  }

}
