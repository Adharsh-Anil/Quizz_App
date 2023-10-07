import 'package:hive/hive.dart';
import 'package:quiz_app/models/questionmodel.dart';
part 'usermodel.g.dart';

@HiveType(typeId: 1)
class User {
  @HiveField(0)
  String name;

  @HiveField(1)
  String email;

  @HiveField(2)
  String password;

  @HiveField(3)
  bool isLogin = false;

  @HiveField(4)
  int totalScore = 0;

  @HiveField(5)
  List<Question> completedQuestion = [];

  @HiveField(6)
  Map<String, int> marks = {};

  User({required this.name, required this.email, required this.password});
}
