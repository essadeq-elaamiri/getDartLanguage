import 'Question.dart';

class Quiz {
  String title;
  List<Question> questions;

  Quiz(this.title, this.questions);

  String toString() {
    String desc = "";

    desc = '{"title":$this.title, "question":[';
    for (int i = 0; i < questions.length; i++) {
      desc += questions[i].toString();
      if (i != questions.length - 1) {
        desc += ",";
      }
    }
    return desc;
  }
}
