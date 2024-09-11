class QuizQuestion{

  String text;
  List<String> option;

  QuizQuestion(this.text,this.option);

  List<String> getShuffledOptions(){
    final shuffledList = List.of(option);
    shuffledList.shuffle();
    return shuffledList;
  }


}