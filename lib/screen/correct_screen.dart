import 'package:flutter/material.dart';
import 'package:quiz_app/db/db_functions/db_functions.dart';

class CorrectAnswerScreen extends StatefulWidget {
  const CorrectAnswerScreen(
      {Key? key,
      required this.color,
      required this.index,
      required this.selectedAnswer})
      : super(key: key);

  final Color color;
  final int index;
  final List<bool?> selectedAnswer;

  @override
  CorrectAnswerScreenState createState() => CorrectAnswerScreenState();
}

int questIndex = 0;
QuestionsDb db = QuestionsDb();
int count = 0;

class CorrectAnswerScreenState extends State<CorrectAnswerScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    questIndex = widget.index;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Que- ${questIndex + 1}/${db.sortedQuestionsNotifier.value.length}',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: size.height * 0.65,
              width: size.width,
              // page view builder
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height * 0.65,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: widget.color.withOpacity(0.5),
                      border: Border.all(width: 1)),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        child: Container(
                          height: size.height * 0.25,
                          width: size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                db.sortedQuestionsNotifier.value[widget.index]
                                    .question,
                                style: const TextStyle(fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.all(8),
                        height: size.height * .06,
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                          color: widget.selectedAnswer[0] == null
                              ? const Color.fromARGB(255, 232, 232, 232)
                              : widget.selectedAnswer[0]!
                                  ? Colors.green
                                  : Colors.red,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.70,
                              child: Text(
                                  'A. ${db.sortedQuestionsNotifier.value[widget.index].answers[0]}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      overflow: TextOverflow.fade)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.all(8),
                        height: size.height * .06,
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                          color: widget.selectedAnswer[1] == null
                              ? const Color.fromARGB(255, 232, 232, 232)
                              : widget.selectedAnswer[1]!
                                  ? Colors.green
                                  : Colors.red,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.70,
                              child: Text(
                                  'B. ${db.sortedQuestionsNotifier.value[widget.index].answers[1]}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      overflow: TextOverflow.fade)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.all(8),
                        height: size.height * 0.06,
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                          color: widget.selectedAnswer[2] == null
                              ? const Color.fromARGB(255, 232, 232, 232)
                              : widget.selectedAnswer[2]!
                                  ? Colors.green
                                  : Colors.red,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.70,
                              child: Text(
                                  'C. ${db.sortedQuestionsNotifier.value[widget.index].answers[2]}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      overflow: TextOverflow.fade)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.all(8),
                        height: size.height * .06,
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                          color: widget.selectedAnswer[3] == null
                              ? const Color.fromARGB(255, 232, 232, 232)
                              : widget.selectedAnswer[3]!
                                  ? Colors.green
                                  : Colors.red,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.70,
                              child: Text(
                                  'D. ${db.sortedQuestionsNotifier.value[widget.index].answers[3]}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      overflow: TextOverflow.fade)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
