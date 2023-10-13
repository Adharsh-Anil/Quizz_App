import 'package:flutter/material.dart';
import 'package:quiz_app/db/db_functions/db_functions.dart';
import 'package:quiz_app/screen/que_edit.dart';

class AdminQuesList extends StatelessWidget {
  const AdminQuesList({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionsDb().getAllQuestions();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Question List'),
      ),
      body: ValueListenableBuilder(
        valueListenable: questionListNotifier,
        builder: (context, queList, _) {
          return ListView.separated(
            itemCount: queList.length,
            separatorBuilder: (context, index) => const Divider(
              thickness: 2,
            ),
            itemBuilder: (context, index) {
              final question = queList[index];
              return ListTile(
                title: Text(
                  question.question,
                  style: const TextStyle(fontSize: 18),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                QueEditScreen(question: question, index: index),
                          ),
                        );
                      },
                      icon: const Icon(Icons.edit),
                    ),
                    IconButton(
                      onPressed: () {
                        QuestionsDb().deleteDB(index);
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
