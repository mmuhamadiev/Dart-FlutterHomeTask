void main() {

  mapReturningMethod(String words) {
    var splitedWords = words.split(" ");

    var  map = <String,int>{};

    for(String value in splitedWords.toSet())
    {
      if (value.allMatches(words).length == 1)
      {
        map.addAll({value: value.allMatches(words).length});
      }
      else
      {
        map.addAll({value: value.allMatches(words).length});
      }
    }
    print(map);

  }

  var words = 'sky rock fly ribbon falcon rock ocean rock cloud fly';

  mapReturningMethod(words);


}