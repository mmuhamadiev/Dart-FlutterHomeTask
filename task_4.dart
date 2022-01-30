void main() {

  final mapR = mapReturning();

  const words = 'sky rock fly ribbon falcon rock ocean rock cloud fly';

  mapR.mapReturningMethod(words);

}

class mapReturning {

  mapReturningMethod(String words) {
    final splitedWords = words.split(" ");

    var map = <String,int>{};

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

}