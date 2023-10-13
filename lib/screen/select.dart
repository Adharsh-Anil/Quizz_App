import 'package:flutter/material.dart';
import 'package:quiz_app/db/db_functions/db_functions.dart';
import 'package:quiz_app/screen/question.dart';

class SelectScreen extends StatelessWidget {
  SelectScreen({super.key, required this.color});

  final QuestionsDb db = QuestionsDb();
  final Color color;

  int noOfAnswers() {
    int result = 0;
    for (var element in db.answers) {
      element != null ? result++ : result;
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    int answered = noOfAnswers();
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Questions',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '$answered out of ${db.answers.length}',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              height: 300,
              width: double.infinity,
              child: Center(
                child: SizedBox(
                  height: 50,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuestionScreen(
                                  index: index,
                                  color: color,
                                ),
                              ));
                        },
                        child: OptionSelection(
                          numbers: (index + 1).toString(),
                          ifNull: db.answers[index] == null,
                        )),
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 20,
                    ),
                    itemCount: db.answers.length,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class OptionSelection extends StatelessWidget {
  const OptionSelection(
      {super.key,
      required this.numbers,
      this.wright = false,
      this.ifNull = false,
      this.toCongrats = true});
  final String numbers;
  final bool? wright;
  final bool? toCongrats;
  final bool ifNull;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 60,
      decoration: BoxDecoration(
        color: toCongrats! || ifNull
            ? const Color.fromARGB(255, 200, 197, 197)
            : wright!
                ? Colors.green
                : Colors.redAccent,
        border: Border.all(width: .2),
      ),
      child: Center(child: Text(numbers)),
    );
  }
}
