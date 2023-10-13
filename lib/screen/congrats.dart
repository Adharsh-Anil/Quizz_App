import 'package:flutter/material.dart';
import 'package:quiz_app/db/userdb.dart';
import 'package:quiz_app/screen/catogery.dart';
import 'package:quiz_app/screen/correct_screen.dart';
import 'package:quiz_app/screen/question.dart';
import 'package:quiz_app/screen/select.dart';

import '../db/db_functions/db_functions.dart';

class CongratsScreen extends StatefulWidget {
  final Color color;
  const CongratsScreen({super.key, required this.color});

  @override
  State<CongratsScreen> createState() => _CongratsScreenState();
}

class _CongratsScreenState extends State<CongratsScreen> {
  final QuestionsDb db = QuestionsDb();

  int noOfCorrectAnswer() {
    int result = 0;
    for (int i = 0; i < db.answers.length; i++) {
      if (db.answers[i] == db.sortedQuestionsNotifier.value[i].correctAnswer) {
        result++;
      }
    }
    return result;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int result = noOfCorrectAnswer();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GridScreen(),
                  ),
                  (route) => false);
            },
            icon: const Icon(Icons.home)),
        backgroundColor: Colors.purple,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                '${result.toString()} of ${db.answers.length} are correct',
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height * 0.7,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/congrats.png',
                        height: size.height * 0.38),
                    const Text(
                      'Congratulation',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Colors.purple,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Text(
                      'You have total ${UsersDb.currentUser.totalScore} points',
                      style: const TextStyle(
                          color: Colors.purpleAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Tap below question number to \nview correct answer',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: size.height / 15,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          bool? wright = db.answers[index] != null
                              ? db.answers[index] ==
                                  db.sortedQuestionsNotifier.value[index]
                                      .correctAnswer
                              : false;
                          return InkWell(
                            onTap: () {
                              List<bool?> boolArry =
                                  List.generate(4, (index) => null);
                              boolArry[db.sortedQuestionsNotifier.value[index]
                                  .correctAnswer] = true;
                              if (db.answers[index] == null ||
                                  db.answers[index] !=
                                      db.sortedQuestionsNotifier.value[index]
                                          .correctAnswer) {
                                boolArry[db.answers[index]!] = false;
                              }
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CorrectAnswerScreen(
                                        color: widget.color,
                                        index: index,
                                        selectedAnswer: boolArry),
                                  ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: OptionSelection(
                                numbers: (index + 1).toString(),
                                ifNull: db.answers[index] == null,
                                toCongrats: false,
                                wright: wright,
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 20,
                        ),
                        itemCount: db.answers.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Colors.white),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              onPressed: () {
                db.answers.fillRange(0, db.answers.length, null);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            QuestionScreen(color: widget.color, index: 0)));
              },
              child: const Text(
                'Try Again',
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
