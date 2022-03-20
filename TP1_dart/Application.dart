import 'dart:convert';
import 'dart:io';

import 'Quiz.dart';

final QUESTIONS_FILE = "quiz.json";

void main(List<String> args) {
  // creating answers

  // creating questions

  // creating quiz

  // lunch quiz

  //

  readQuizFromFile(QUESTIONS_FILE).then((content) {
    Map<String, dynamic> quizJson = jsonDecode(content);
    Quiz quiz = new Quiz("", []);
    quiz.fromJson(quizJson);
    print(quiz.title);
    print(quiz.toString());
  });
}

Future<String> readQuizFromFile(String fileName) async {
  return await File(fileName).readAsString();
}

// read questions from file
Future<String> readQuiz(String fileName) async {
  String linesStr = "";
  final file = File(fileName);
  Stream<String> lines =
      file.openRead().transform(utf8.decoder).transform(LineSplitter());
  try {
    await for (var line in lines) {
      linesStr += line;
    }
  } catch (e) {
    print(e);
  }
  return linesStr;
}
