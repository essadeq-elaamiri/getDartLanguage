import 'Answer.dart';

class Question {
  String title;
  String description;
  double score;
  List<Answer> answers;

  Question(this.title, this.description, this.score, this.answers);

  String toString() {
    String desc = "";

    desc =
        '{"title":$this.title, "description":$this.description, "score":$this.score, "answers":[';
    for (int i = 0; i < answers.length; i++) {
      desc += answers[i].toString();
      if (i != answers.length - 1) {
        desc += ",";
      }
    }
    return desc;
  }
}
