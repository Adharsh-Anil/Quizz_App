import 'package:flutter/material.dart';
import 'package:quiz_app/db/db_functions/db_functions.dart';
import 'package:quiz_app/db/userdb.dart';
import 'package:quiz_app/screen/congrats.dart';
import 'package:quiz_app/screen/select.dart';
import 'package:timer_count_down/timer_count_down.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({Key? key, required this.color, required this.index})
      : super(key: key);

  final Color color;
  final int index;
  List<bool> selectedAnswer = [false, false, false, false];

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

int questIndex = 0;
QuestionsDb db = QuestionsDb();
int count = 0;

class _QuestionScreenState extends State<QuestionScreen> {
  markInitaly() {
    if (db.answers[questIndex] != null) {
      widget.selectedAnswer[db.answers[questIndex]!] = true;
    }
  }

  markAnswer(int index) {
    for (int i = 0; i < 4; i++) {
      if (i == index) {
        widget.selectedAnswer[i] = !widget.selectedAnswer[i];
        if (widget.selectedAnswer[i]) {
          db.answers[questIndex] = i;
        } else {
          db.answers[questIndex] = null;
        }
      } else {
        widget.selectedAnswer[i] = false;
      }
    }
    print(db.answers);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    questIndex = widget.index;
    markInitaly();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            const SizedBox(
              height: double.infinity,
              width: double.infinity,
              // child: Image.asset(
              //   'assets/images/mat.jpg',
              //   fit: BoxFit.cover,
              // ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 188, 187, 187)),
                      height: size.height * 0.03,
                      width: size.width * 0.15,
                      child: Center(
                        child: Countdown(
                          // controller: _controller,
                          seconds: 30,
                          build: (_, double time) => Text(
                            time.toString(),
                            style: const TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          interval: const Duration(seconds: 1),
                          onFinished: () {
                            navigateToNext();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Time is up!'),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Text(
                      'Que- ${questIndex + 1}/${db.sortedQuestionsNotifier.value.length}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                selectScreen(color: widget.color),
                          ),
                        );
                      },
                      icon: const Icon(Icons.list),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 580,
                  width: 400,
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
                              height: 250,
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
                                    db.sortedQuestionsNotifier
                                        .value[widget.index].question,
                                    style: const TextStyle(fontSize: 25),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () => markAnswer(0),
                            child: Container(
                              padding: const EdgeInsets.only(left: 20),
                              margin: const EdgeInsets.all(8),
                              height: 50,
                              width: size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black),
                                color: widget.selectedAnswer[0]
                                    ? Colors.grey
                                    : const Color.fromARGB(255, 232, 232, 232),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.84,
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
                          ),
                          InkWell(
                            onTap: () => markAnswer(1),
                            child: Container(
                              padding: const EdgeInsets.only(left: 20),
                              margin: const EdgeInsets.all(8),
                              height: 50,
                              width: size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black),
                                color: widget.selectedAnswer[1]
                                    ? Colors.grey
                                    : const Color.fromARGB(255, 232, 232, 232),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.84,
                                    child: Text(
                                      'B. ${db.sortedQuestionsNotifier.value[widget.index].answers[1]}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          overflow: TextOverflow.fade),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => markAnswer(2),
                            child: Container(
                              padding: const EdgeInsets.only(left: 20),
                              margin: const EdgeInsets.all(8),
                              height: 50,
                              width: size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black),
                                color: widget.selectedAnswer[2]
                                    ? Colors.grey
                                    : const Color.fromARGB(255, 232, 232, 232),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.84,
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
                          ),
                          InkWell(
                            onTap: () => markAnswer(3),
                            child: Container(
                              padding: const EdgeInsets.only(left: 20),
                              margin: const EdgeInsets.all(8),
                              height: 50,
                              width: size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black),
                                color: widget.selectedAnswer[3]
                                    ? Colors.grey
                                    : const Color.fromARGB(255, 232, 232, 232),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.84,
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (questIndex > 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuestionScreen(
                                    color: widget.color,
                                    index: widget.index - 1),
                              ));
                        } else {
                          // Handle reaching the end of questions
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          side: const BorderSide(width: 1)),
                      label: const Text('Previous'),
                      icon: const Icon(Icons.arrow_back),
                    ),
                    const Spacer(),
                    ElevatedButton.icon(
                      onPressed: () {
                        navigateToNext();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          side: const BorderSide(width: 1)),
                      icon: const Text('Next'),
                      label: const Icon(Icons.arrow_forward),
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  navigateToNext() async {
    if (questIndex < db.sortedQuestionsNotifier.value.length - 1) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                QuestionScreen(color: widget.color, index: widget.index + 1),
          ));
    } else {
      // Handle reaching the end of questions
      UsersDb.addTotal();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => CongratsScreen(
                  color: widget.color,
                )),
      );
    }
  }
}
