
import 'package:flutter/material.dart';
import 'package:quiz_app/constants/category_list.dart';
import 'package:quiz_app/db/db_functions/db_functions.dart';
import 'package:quiz_app/models/questionmodel.dart'; 

List<bool> checkboxStates = [false, false, false, false]; // Track checkbox states

class QueEditScreen extends StatefulWidget {
  const QueEditScreen({Key? key, required this.question, required this.index})
      : super(key: key);
  final Question question;
  final int index;

  @override
  State<QueEditScreen> createState() => _QueEditScreenState();
}

class _QueEditScreenState extends State<QueEditScreen> {
  TextEditingController questionController = TextEditingController();
  TextEditingController answer0Controller = TextEditingController();
  TextEditingController answer1Controller = TextEditingController();
  TextEditingController answer2Controller = TextEditingController();
  TextEditingController answer3Controller = TextEditingController();
  TextEditingController checkController = TextEditingController();
  int? correctAnswer;

  initialize() {
    questionController.text = widget.question.question;
    answer0Controller.text = widget.question.answers[0];
    answer1Controller.text = widget.question.answers[1];
    answer2Controller.text = widget.question.answers[2];
    answer3Controller.text = widget.question.answers[3];
    selectedCategory = widget.question.category;
    selectedDifficulty = widget.question.difficulty;
    correctAnswer = widget.question.correctAnswer;
    checkboxStates = [false, false, false, false]; // Reset checkbox states
    if (correctAnswer != null) {
      checkboxStates[correctAnswer!] = true; // Set the correct checkbox
    }
  }

  final _formKey = GlobalKey<FormState>();
  String? selectedDifficulty;
  String? selectedCategory;
  List<String> difficultyItems = ['Easy', 'Medium', 'Hard'];
  bool isAtLeastOneCorrect = false;

  bool validateCorrectAnswer() {
    return checkboxStates.contains(true);
  }

  @override
  void initState() {
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Questions'),
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
                  controller: questionController,
                  maxLines: 6,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Add question';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
              EditOption(
                isChecked: checkboxStates[0],
                controller: answer0Controller,
                
                onChanged: (isChecked) {
                  setState(() {
                    checkboxStates[0] = isChecked!;
                  });
                },
              ),
              EditOption(
                isChecked: checkboxStates[1],
                controller: answer1Controller, 
                onChanged: (isChecked) {
                  setState(() {
                    checkboxStates[1] = isChecked!;
                  });
                },
              ),
              EditOption(
                isChecked: checkboxStates[2],
                controller: answer2Controller, 
                onChanged: (isChecked) {
                  setState(() {
                    checkboxStates[2] = isChecked!;
                  });
                },
              ),
              EditOption(
                isChecked: checkboxStates[3],
                controller: answer3Controller, 
                onChanged: (isChecked) {
                  setState(() {
                    checkboxStates[3] = isChecked!;
                  });
                },
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
              // Difficulty Dropdown
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
              ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () async {
                  if (_formKey.currentState!.validate() &&
                      validateCorrectAnswer()) {
                    if (selectedCategory == null ||
                        selectedDifficulty == null) {
                      print('add dropdown field');
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
                        correctAnswer: checkboxStates.indexOf(true),
                        answers: [
                          answer0Controller.text,
                          answer1Controller.text,
                          answer2Controller.text,
                          answer3Controller.text,
                        ],
                        category: selectedCategory!,
                        difficulty: selectedDifficulty!,
                      );
                      await QuestionsDb().updateObject(
                        index: widget.index,
                        question: question,
                      );
                      print(question.question);
                      print(question.answers);
                      print(question.correctAnswer);
                      print(question.difficulty);
                      print(question.category);
                      questionController.clear();
                      answer0Controller.clear();
                      answer1Controller.clear();
                      answer2Controller.clear();
                      answer3Controller.clear();
                      checkboxStates = [false, false, false, false];
                      selectedCategory = null;
                      selectedDifficulty = null;
                      setState(() {});
                    }
                  } else {
                    // Invalid form or no checkbox is selected as correct.
                    // Handle the error accordingly.
                    print(
                        'Validation failed: At least one checkbox must be selected as correct.');
                  }
                },
                child: const Text('save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditOption extends StatefulWidget {
  EditOption({
    Key? key,
    required this.isChecked,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);

  bool isChecked;
  TextEditingController controller;
  ValueChanged<bool?> onChanged;

  @override
  State<EditOption> createState() => _EditOptionState();
}

class _EditOptionState extends State<EditOption> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
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
                value: widget.isChecked,
                onChanged: widget.onChanged,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
