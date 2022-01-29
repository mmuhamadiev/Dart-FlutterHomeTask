void main() {
  returnNumber(List<String> words) {
    var setOfNumbers = <int>{};

    var wordsToNumber = <dynamic, dynamic>{
      'zero': 0,
      'one': 1,
      'two': 2,
      'three': 3,
      'four': 4,
      'five': 5,
      'six': 6,
      'seven': 7,
      'eight': 8,
      'nine': 9
    };

    for (String word in words) {
      Iterable<Match> matches = word.allMatches(wordsToNumber.keys.toString());
      for (Match m in matches) {
        String match = m[0]!;
        int matchNumber = wordsToNumber[match];
        setOfNumbers.add(matchNumber);
      }
    }

    print(setOfNumbers);
  }

  var words = ['one', 'two', 'three', 'cat', 'zero', 'dog', 'zero'];
  returnNumber(words);

}
