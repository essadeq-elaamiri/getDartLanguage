class Answer {
  String title;
  bool isCorrect;
  Answer(this.title, this.isCorrect);

  String toString() {
    return '{"title": $this.title}';
  }
}
