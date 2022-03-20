import 'Question.dart';

class Quiz {
  String title;
  List<Question> questions;

  Quiz(this.title, this.questions);

  String toString() {
    String desc = '{"title":"${this.title}", "questions":[';
    for (int i = 0; i < questions.length; i++) {
      desc += questions[i].toString();
      if (i != questions.length - 1) {
        desc += ",";
      }
    }
    desc += ']}';
    return desc;
  }

  void fromJson(Map<String, dynamic> json) {
    title = json['title'];
    questions = getQuestionsListFromJson(json['questions']);
  }

  List<Question> getQuestionsListFromJson(List<dynamic> json) {
    List<Question> questionsList = [];

    for (dynamic q in json) {
      Question question = new Question("", "", 0, []);
      question.fromJson(q);

      questionsList.add(question);
    }
    return questionsList;
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'questions': questions,
      };
}
