

import 'package:hive/hive.dart';

part 'questionmodel.g.dart';

enum Difficulty { easy, medium, hard }

enum Category { physics, maths, chemistry, sports }

@HiveType(typeId: 0)
class Question{
  @HiveField(0)
  String question;

  @HiveField(1)
  int correctAnswer;

  @HiveField(2)
  List<String> answers;

  @HiveField(3)
  String difficulty;

  @HiveField(4)
  String category;

  Question(
      {required this.question,
      required this.correctAnswer,
      required this.answers,
      required this.category,
      required this.difficulty});
}
