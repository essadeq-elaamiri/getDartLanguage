import 'dart:convert';
import 'dart:io';

import 'Question.dart';
import 'Quiz.dart';

final QUESTIONS_FILE = "quiz.json";

void main(List<String> args) async {
  // Get the quiz as json from file
  String quizTextFileContent = await readQuizFromFile(QUESTIONS_FILE) as String;

  // create the quiz object:
  Map<String, dynamic> quizJson = jsonDecode(quizTextFileContent);
  Quiz quiz = new Quiz("", []);
  quiz.fromJson(quizJson);

  // print Menu
  int? choice = 0;
  num totalScore = 0;

  do {
    printMenu();
    String? line = stdin.readLineSync();
    choice = int.parse(line ?? '0');

    if (choice == 2) {
      print(
          "Add more questions in the file 'quiz.json', with the same structure.");
    } else if (choice == 1) {
      print("Starting '${quiz.title}'...");
      int? resposeCoice;
      print("_" * 20);
      for (Question question in quiz.questions) {
        // display question
        print(question.displayQuestion());
        print("Choose an answer : 0, 1 or 2");
        line = stdin.readLineSync();
        resposeCoice = int.parse(line ?? '10');
        if (resposeCoice != 0 && resposeCoice != 1 && resposeCoice != 2) {
          print("No answer in this position!");
        } else {
          totalScore +=
              question.answers[resposeCoice].isCorrect ? question.score : 0;
        }
      }
      //choice = 0;
    } else if (choice == 3) {
      desplayCorrection(quiz);
    }
  } while (choice != 0);
  print("Congrats you completed  the quiz, here is your score : $totalScore");
}

void desplayCorrection(Quiz quiz) {
  print("Here is the coorect answers");
  for (Question question in quiz.questions) {
    print(question.title);
    print(question.answers.map((e) {
      return e.displayAnswer() +
          " [${e.isCorrect ? 'correct' : 'uncorrect'}]\n";
    }).toString());
  }
}

void printMenu() {
  var menuMsg = " Welcome to the Quiz ! ";
  print("=" * (20 + menuMsg.length));
  print("=" * 10 + menuMsg + "=" * 10);
  print("=" * (20 + menuMsg.length));
  print(" 1- Start Quiz.");
  print(" 2- How to add more questions ?");
  print(" 3- Show Correction");
  print(" 0- Quite");
  print("=" * (20 + menuMsg.length));
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
