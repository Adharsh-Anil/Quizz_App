import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:quiz_app/models/questionmodel.dart';

ValueNotifier<List<Question>> questionListNotifier = ValueNotifier([]);

const dbName = 'questions';

class QuestionsDb extends ChangeNotifier {
  QuestionsDb._();
  static final QuestionsDb instanse = QuestionsDb._();
  factory QuestionsDb() => instanse;

  Future addQuestions(Question question) async {
    try {
      final data = await Hive.openBox<Question>(dbName);
      await data.add(question);
    } catch (e) {
      e;
    }

    await getAllQuestions();
  }

  Future<void> getAllQuestions() async {
    final data = await Hive.openBox<Question>(dbName);
    questionListNotifier.value.clear();
    questionListNotifier.value.addAll(data.values);
    questionListNotifier.notifyListeners();
  }

  Future<void> deleteDB(int a) async {
    final data = await Hive.openBox<Question>(dbName);
    data.deleteAt(a);
    getAllQuestions();
  }

  Future<void> updateObject(
      {required Question question, required int index}) async {
    var box = await Hive.openBox<Question>(dbName);
    box.putAt(index, question);
    getAllQuestions();
  }

  ValueNotifier<List<Question>> sortedQuestionsNotifier = ValueNotifier([]);
  late List<int?> answers;
  sortedQuestion({required String category, required String difficulty}) async {
    final data = await Hive.openBox<Question>(dbName);
    final result = data.values
        .where((question) =>
            question.category.toLowerCase() == category.toLowerCase() &&
            question.difficulty.toLowerCase() == difficulty.toLowerCase())
        .toList();
    sortedQuestionsNotifier.value = result;
    answers = List.filled(sortedQuestionsNotifier.value.length, null);
  }
}
