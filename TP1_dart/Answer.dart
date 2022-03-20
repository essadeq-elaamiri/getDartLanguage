class Answer {
  String title;
  bool isCorrect;
  Answer(this.title, this.isCorrect);

  String toString() {
    return '{"title": "${this.title}", "isCorrect":$isCorrect}';
  }

  void fromJson(Map<String, dynamic> json) {
    title = json['a_title'];
    isCorrect = json['isCorrect'];
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'isCorrect': isCorrect,
      };
}
