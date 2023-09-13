class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> GetShuffled() {
    final shuffled_list = List.of(answers);
    shuffled_list.shuffle();
    return shuffled_list;
  }
}
