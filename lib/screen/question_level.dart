import 'package:flutter/material.dart';
import 'package:quiz_app/screen/question.dart';

import '../db/db_functions/db_functions.dart';

class QuestionLevelScreen extends StatelessWidget {
  QuestionLevelScreen({super.key, required this.category, required this.color});
  final String category;
  final Color color;
  final QuestionsDb db = QuestionsDb();

  @override
  Widget build(BuildContext context) {
        db.getAllQuestions();

    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Select a level',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height * 0.50,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.white),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                            db.sortedQuestion(category: category, difficulty: 'EASY');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuestionScreen(
                                color: color,index: 0,
                              ),
                            ));
                      },
                      child: LevelField(size: size, level: 'EASY'),
                    ),
                    InkWell(
                      onTap: () {
                        db.sortedQuestion(category: category, difficulty: 'MEDIUM');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuestionScreen(
                                    // category: category,
                                    // level: 'MEDIUM',
                                    color: color,index: 0,
                                  )));
                      },
                      child: LevelField(
                        size: size,
                        level: 'MEDIUM',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        db.sortedQuestion(category: category, difficulty: 'HARD');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuestionScreen(
                                    // category: category,
                                    // level: 'HARD',
                                    color: color,index: 0,
                                  )));
                      },
                      child: LevelField(
                        size: size,
                        level: 'HARD',
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class LevelField extends StatelessWidget {
  const LevelField({super.key, required this.size, required this.level});

  final Size size;
  final String level;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: size.width * 0.65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.black),
        color: const Color.fromARGB(255, 232, 232, 232),
      ),
      child: Center(
          child: Text(
        level,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}
