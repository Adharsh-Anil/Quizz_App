import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:quiz_app/db/db_functions/db_functions.dart';
import 'package:quiz_app/models/usermodel.dart';

const dbUser = 'users';

class UsersDb extends ChangeNotifier {
  UsersDb._();
  static final UsersDb instanse = UsersDb._();
  factory UsersDb() => instanse;

  static late User currentUser;

  static Future<User?> getCurrentUser() async {
    try {
      print('inside current user finder');
      final data = await Hive.openBox<User>(dbUser);
      print(data.values.length);
      print(data.values.first.email);
      for (var user in data.values) {
        print('user is ---> ${user.isLogin}');
        if (user.isLogin) {
          currentUser = user;
          return user;
        }
      }
      return null;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static Future<void> addUser(User user) async {
    try {
      user.isLogin = true;
      final data = await Hive.openBox<User>(dbUser);
      await data.add(user);
    } catch (e) {
      print(e.toString());
    }
  }

  static Future<void> checkUser(User user) async {
    try {
      final data = await Hive.openBox<User>(dbUser);
      for (var element in data.values) {
        if (element.email == user.email) {
          element.isLogin = true;
          return;
        }
      }
      await addUser(user);
    } catch (e) {
      print(e.toString());
    }
  }

  static Future<void> addTotal() async {
    final db = QuestionsDb();
    final user = currentUser;
    final data = await Hive.openBox<User>(dbUser);
    int index = data.values.toList().indexWhere((currentUser) =>
        currentUser.name == user.name && currentUser.email == user.email);
    for (int i = 0; i < db.answers.length; i++) {
      if (!user.completedQuestion
              .contains(db.sortedQuestionsNotifier.value[i]) &&
          db.answers[i] == db.sortedQuestionsNotifier.value[i].correctAnswer) {
        user.completedQuestion.add(db.sortedQuestionsNotifier.value[i]);
        if (db.sortedQuestionsNotifier.value[i].difficulty == 'easy') {
          user.totalScore += 10;
          if (!user.marks
              .containsKey(db.sortedQuestionsNotifier.value[i].category)) {
            user.marks[db.sortedQuestionsNotifier.value[i].category]=0;
          }
          int score=user.marks[db.sortedQuestionsNotifier.value[i].category]!;
          user.marks[db.sortedQuestionsNotifier.value[i].category]=score+10;
        } else if (db.sortedQuestionsNotifier.value[i].difficulty == 'medium') {
          user.totalScore += 20;
          if (!user.marks
              .containsKey(db.sortedQuestionsNotifier.value[i].category)) {
            user.marks[db.sortedQuestionsNotifier.value[i].category]=0;
          }
          int score=user.marks[db.sortedQuestionsNotifier.value[i].category]!;
          user.marks[db.sortedQuestionsNotifier.value[i].category]=score+20;
        } else {
          user.totalScore += 30;
          if (!user.marks
              .containsKey(db.sortedQuestionsNotifier.value[i].category)) {
            user.marks[db.sortedQuestionsNotifier.value[i].category]=0;
          }
          int score=user.marks[db.sortedQuestionsNotifier.value[i].category]!;
          user.marks[db.sortedQuestionsNotifier.value[i].category]=score+30;
        }
      }
    }
    await data.putAt(index, user);
    await getCurrentUser();
  }

  static Future<void> clearLogin() async {
    final user = currentUser;
    user.isLogin = false;
    final data = await Hive.openBox<User>(dbUser);
    int index = data.values.toList().indexWhere((currentUser) =>
        currentUser.name == user.name && currentUser.email == user.email);
    data.putAt(index, user);
  }

}
