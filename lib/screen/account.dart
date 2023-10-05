import 'package:flutter/material.dart';
import 'package:quiz_app/db/userdb.dart';
import 'package:quiz_app/screen/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          const Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/account.png'),
            ),
          ),
          const Text(
            'John',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height * 0.55,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.purple,
              ),
              child: const Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Totalscore",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          '789',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CategoryScore(catogery: 'physics Score', score: 10),
                    CategoryScore(catogery: 'History Score', score: 20),
                    CategoryScore(catogery: 'Mathematics Score', score: 20),
                    CategoryScore(catogery: 'Biology Score', score: 20),
                    CategoryScore(catogery: 'Chemistry Score', score: 20),
                    CategoryScore(catogery: 'sports Score', score: 20),
                    CategoryScore(catogery: 'Chemistry Score', score: 20),
                    CategoryScore(catogery: 'Chemistry Score', score: 20),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: const ButtonStyle(),
            onPressed: () async {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                  (route) => false);
              final pref = await SharedPreferences.getInstance();
              pref.clear();
              await UsersDb.clearLogin();
            },
            child: const Text(
              'Logout',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryScore extends StatelessWidget {
  const CategoryScore({
    super.key,
    required this.catogery,
    required this.score,
  });

  final String catogery;
  final int score;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              catogery,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              score.toString(),
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
