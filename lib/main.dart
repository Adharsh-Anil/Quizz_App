import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quiz_app/constants/hardcode.dart';
import 'package:quiz_app/models/questionmodel.dart';
import 'package:quiz_app/models/usermodel.dart';
import 'package:quiz_app/screen/splash.dart';

import 'db/db_functions/db_functions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(QuestionAdapter().typeId)) {
    Hive.registerAdapter(QuestionAdapter());
  }
  if (!Hive.isAdapterRegistered(UserAdapter().typeId)) {
    Hive.registerAdapter(UserAdapter());
  }
  final data = await Hive.openBox<Question>(dbName);

  if (data.isEmpty) {
    await initial();
  }
  //await data.close();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      //home: BottomNav(),
    );
  }
}
