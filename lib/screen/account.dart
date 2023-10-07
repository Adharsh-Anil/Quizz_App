import 'package:flutter/material.dart';
import 'package:quiz_app/db/userdb.dart';
import 'package:quiz_app/screen/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({super.key});

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
              radius: 60,
              backgroundImage: AssetImage(
                'assets/images/front img.jpg',
              ),
            ),
          ),
          Text(
            UsersDb.currentUser.name,
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Totalscore",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          UsersDb.currentUser.totalScore.toString(),
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CategoryScore(
                      catogery: 'assets/images/atom.png',
                      score: UsersDb.currentUser.marks['physics'] ?? 0,
                      name: "Physics",
                    ),
                    CategoryScore(
                      catogery: 'assets/images/history-book.png',
                      score: UsersDb.currentUser.marks['history'] ?? 0,
                      name: 'History',
                    ),
                    CategoryScore(
                      catogery: 'assets/images/math.png',
                      score: UsersDb.currentUser.marks['mathematics'] ?? 0,
                      name: 'Mathematics',
                    ),
                    CategoryScore(
                      catogery: 'assets/images/biology.png',
                      score: UsersDb.currentUser.marks['biology'] ?? 0,
                      name: 'Biology',
                    ),
                    CategoryScore(
                      catogery: 'assets/images/chemistry.png',
                      score: UsersDb.currentUser.marks['chemistry'] ?? 0,
                      name: 'Chemistry',
                    ),
                    CategoryScore(
                      catogery: 'assets/images/sport-35488.png',
                      score: UsersDb.currentUser.marks['sports'] ?? 0,
                      name: 'Sports',
                    ),
                    CategoryScore(
                      catogery: 'assets/images/geography.png',
                      score: UsersDb.currentUser.marks['geography'] ?? 0,
                      name: 'Geography',
                    ),
                    CategoryScore(
                      catogery: 'assets/images/politics.png',
                      score: UsersDb.currentUser.marks['politics'] ?? 0,
                      name: 'Politics',
                    ),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Colors.purple),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
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
            ),
            
          ),
        ],
      ),
    );
  }
}

class CategoryScore extends StatelessWidget {
  const CategoryScore(
      {super.key,
      required this.catogery,
      required this.score,
      required this.name});

  final String catogery;
  final int score;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              catogery,
              width: 50,
              height: 50,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              name,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Spacer(),
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
