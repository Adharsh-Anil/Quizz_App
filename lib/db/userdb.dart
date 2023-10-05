import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:quiz_app/db/db_functions/db_functions.dart';
import 'package:quiz_app/models/usermodel.dart';

class UsersDb extends ChangeNotifier {
  UsersDb._();
  static final UsersDb instanse = UsersDb._();
  factory UsersDb() => instanse;

  static late User currentUser;

  static Future<User?> getCurrentUser() async {
    try {
      final data = await Hive.openBox<User>(dbName);
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
      final data = await Hive.openBox<User>(dbName);
      await data.add(user);
    } catch (e) {
      print(e.toString());
    }
  }

  static Future<void> checkUser(User user) async {
    try {
      final data = await Hive.openBox<User>(dbName);
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
    final data = await Hive.openBox<User>(dbName);
    int index = data.values.toList().indexWhere((currentUser) =>
        currentUser.name == user.name && currentUser.email == user.email);
    for (int i = 0; i < db.answers.length; i++) {
      if (!user.completedQuestion
              .contains(db.sortedQuestionsNotifier.value[i]) &&
          db.answers[i] == db.sortedQuestionsNotifier.value[i].correctAnswer) {
        user.completedQuestion.add(db.sortedQuestionsNotifier.value[i]);
        if (db.sortedQuestionsNotifier.value[i].difficulty == 'easy') {
          user.totalScore += 10;
        } else if (db.sortedQuestionsNotifier.value[i].difficulty == 'medium') {
          user.totalScore += 20;
        } else {
          user.totalScore += 30;
        }
      }
    }
    data.putAt(index, user);
    await getCurrentUser();
  }

  static Future<void> clearLogin() async {
    final user = currentUser;
    user.isLogin = false;
    final data = await Hive.openBox<User>(dbName);
    int index = data.values.toList().indexWhere((currentUser) =>
        currentUser.name == user.name && currentUser.email == user.email);
    data.putAt(index, user);
  }
}
