void main() {
  funReturnNum(String string) {
    var listOfStrings = string.split(" ");

    var listNum = [];

    for (var value in listOfStrings) {
      if (int.tryParse(value) == null) {
      } else {
        listNum = [int.tryParse(value)];
      }
    }

    print("The number out of string is : $listNum");
  }

  funReturnNum("one 5");
}
