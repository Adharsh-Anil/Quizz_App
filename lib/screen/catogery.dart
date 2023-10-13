import 'package:flutter/material.dart';
import 'package:quiz_app/constants/category_list.dart';
import 'package:quiz_app/db/userdb.dart';
import 'package:quiz_app/screen/account.dart';
import 'package:quiz_app/screen/question_level.dart';

final List<GridItem> gridItems = [
  GridItem(categoryItems[0], 'assets/images/atom.png', Colors.red),
  GridItem(categoryItems[1], 'assets/images/history-book.png', Colors.amber),
  GridItem(categoryItems[2], 'assets/images/math.png', Colors.red),
  GridItem(categoryItems[3], 'assets/images/biology.png', Colors.deepPurple),
  GridItem(categoryItems[4], 'assets/images/chemistry.png', Colors.yellow),
  GridItem(categoryItems[5], 'assets/images/sport-35488.png', Colors.blue),
  GridItem(categoryItems[6], 'assets/images/geography.png', Colors.teal),
  GridItem(categoryItems[7], 'assets/images/politics.png', Colors.lightBlue),
];

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: size.width * 0.12,
                      width: size.width * 0.70,
                      child: FittedBox(
                        child: Text(
                          'Hi, ${UsersDb.currentUser.name}',
                          style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (contex) => const AccountScreen()),
                    );
                  },
                  icon: const Icon(
                    Icons.account_circle,
                    size: 35,
                  ),
                )
              ],
            ),
            const Column(
              children: [
                Text(
                  'Lets make the day productive',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black),
                  color: const Color.fromARGB(255, 207, 206, 205)),
              child: Center(
                child: Text(
                  'score : ${UsersDb.currentUser.totalScore}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 8, 87, 152)),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 2,
                    //   Number of columns in the grid
                  ),
                  itemCount: gridItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuestionLevelScreen(
                                category: gridItems[index].title,
                                color: gridItems[index].color),
                          ),
                        );
                      },
                      child: GridTile(
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(21, 109, 108, 109),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                gridItems[index].imagePath,
                                fit: BoxFit.cover,
                                width: 110,
                                height: 110,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                gridItems[index].title,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridItem {
  final String title;
  final String imagePath;
  final Color color;

  GridItem(this.title, this.imagePath, this.color);
}
