import 'Answer.dart';

class Question {
  String title;
  String description;
  num score;
  List<Answer> answers;

  Question(this.title, this.description, this.score, this.answers);

  String toString() {
    String desc =
        '{"title":"${this.title}", "description":"${this.description}", "score":${this.score}, "answers":[';
    for (int i = 0; i < answers.length; i++) {
      desc += answers[i].toString();
      if (i != (answers.length - 1)) {
        desc += ',';
      }
    }
    desc += ']}';
    return desc;
  }

  String displayQuestion() {
    String dis = this.title + " ($score)\n";
    for (Answer an in this.answers) {
      dis += an.displayAnswer() + "\n";
    }
    return dis;
  }

  void fromJson(Map<String, dynamic> json) {
    title = json['q_title'];
    description = "desc";
    score = json['score'];
    answers = getAnswersListFromJson(json['answers']);
  }

  List<Answer> getAnswersListFromJson(List<dynamic> json) {
    List<Answer> answerList = [];

    for (dynamic an in json) {
      Answer answer = new Answer("", false);
      answer.fromJson(an);
      answerList.add(answer);
    }
    return answerList;
  }

  Map<String, dynamic> toJson() =>
      {'title': title, 'score': score, 'answers': answers};
}
