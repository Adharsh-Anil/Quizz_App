import 'package:flutter/material.dart';
import 'package:quiz_app/constants/category_list.dart';
import 'package:quiz_app/db/db_functions/db_functions.dart';
import 'package:quiz_app/models/questionmodel.dart';

bool a = false;
bool b = false;
bool c = false;
bool d = false;

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  TextEditingController questionController = TextEditingController();

  TextEditingController answer0Controller = TextEditingController();

  TextEditingController answer1Controller = TextEditingController();

  TextEditingController answer2Controller = TextEditingController();

  TextEditingController answer3Controller = TextEditingController();

  TextEditingController checkController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String? selectedDifficulty;

  String? selectedCategory;

  // List<String> categoryItems = ['Physics', 'Maths', 'Chemistry', 'Sports'];

  List<String> difficultyItems = ['Easy', 'Medium', 'Hard'];

  bool isAtLeastOneCorrect = false;

  bool validateCorrectAnswer() {
    return (a || b || c || d) ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Questions'),
        backgroundColor: Colors.purple,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  maxLines: 6,
                  controller: questionController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Add question';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsets.symmetric(vertical: 80),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
              AnswerOption(isTrue: a, controller: answer0Controller, value: 0),
              AnswerOption(isTrue: b, controller: answer1Controller, value: 1),
              AnswerOption(isTrue: c, controller: answer2Controller, value: 2),
              AnswerOption(isTrue: d, controller: answer3Controller, value: 3),
              const SizedBox(
                height: 10,
              ),

              // Category Dropdown
              DropdownButton<String>(
                value: selectedCategory,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedCategory = newValue;
                  });
                },
                items: categoryItems.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                hint: const Text('Select Category'),
              ),

              DropdownButton<String>(
                value: selectedDifficulty,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedDifficulty = newValue;
                  });
                },
                items: difficultyItems.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                hint: const Text('Select Difficulty'),
              ),

              const SizedBox(height: 25),
              ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () async {
                  if (_formKey.currentState!.validate() &&
                      validateCorrectAnswer()) {
                    if (selectedCategory == null ||
                        selectedDifficulty == null) {
                      // Category and/or difficulty not selected, show an error message.
                      final ScaffoldMessengerState scaffoldMessenger =
                          ScaffoldMessenger.of(context);
                      scaffoldMessenger.showSnackBar(
                        const SnackBar(
                          content: Text(
                              'Please select both category and difficulty.'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                      return;
                    } else {
                      // Your form is valid, and at least one checkbox is selected as correct,
                      // and both dropdowns have valid selections.
                      Question question = Question(
                        question: questionController.text,
                        correctAnswer: correct!,
                        answers: [
                          answer0Controller.text,
                          answer1Controller.text,
                          answer2Controller.text,
                          answer3Controller.text
                        ],
                        category: selectedCategory!,
                        difficulty: selectedDifficulty!,
                      );
                      await QuestionsDb().addQuestions(question);
                      
                      questionController.clear();
                      answer0Controller.clear();
                      answer1Controller.clear();
                      answer2Controller.clear();
                      answer3Controller.clear();
                      a = false;
                      b = false;
                      c = false;
                      d = false;

                      selectedCategory = null;
                      selectedDifficulty = null;
                      setState(() {});
                    }
                  } else {
                    // Invalid form or no checkbox is selected as correct.
                    // Handle the error accordingly.
                  }
                },
                child: const Text('Add'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class AnswerOption extends StatefulWidget {
  AnswerOption(
      {required this.isTrue,
      required this.controller,
      super.key,
      required this.value});
  bool? isTrue;
  int value;
  TextEditingController controller;

  @override
  State<AnswerOption> createState() => _AnswerOptionState();
}

class _AnswerOptionState extends State<AnswerOption> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: widget.controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Add answer';
          }
          return null;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          suffixIcon: Checkbox(
              value: widget.isTrue,
              onChanged: (newBool) {
                widget.isTrue = newBool;
                checkCorrect() {
                  if (widget.isTrue == true && widget.value == 0) {
                    a = !a;
                    return 0;
                  } else if (widget.isTrue == true && widget.value == 1) {
                    b = !b;
                    return 1;
                  } else if (widget.isTrue == true && widget.value == 2) {
                    c = !c;
                    return 2;
                  } else {
                    d = !d;
                    return 3;
                  }
                }

                correct = checkCorrect();

                setState(() {});
              }),
        ),
      ),
    );
  }
}

int? correct;
