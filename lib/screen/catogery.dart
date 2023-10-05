import 'package:flutter/material.dart';
import 'package:quiz_app/constants/category_list.dart';
import 'package:quiz_app/screen/account.dart';
import 'package:quiz_app/screen/questionLevel.dart';

final List<GridItem> gridItems = [
  GridItem(categoryItems[0], 'assets/images/atom.png', Colors.red),
  GridItem(categoryItems[1], 'assets/images/history-book.png', Colors.amber),
  GridItem(categoryItems[2], 'assets/images/math.png', Colors.red),
  GridItem(categoryItems[3], 'assets/images/biology.png', Colors.brown),
  GridItem(categoryItems[4], 'assets/images/chemistry.png', Colors.yellow),
  GridItem(categoryItems[5], 'assets/images/sport-35488.png', Colors.blue),
  GridItem(categoryItems[6], 'assets/images/geography.png', Colors.teal),
  GridItem(categoryItems[7], 'assets/images/politics.png', Colors.lightBlue),
];

class GridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Hi John',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => const AccountScreen()),
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
              child: const Center(
                child: Text(
                  'score : 789',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 2
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
                              color: Color.fromARGB(21, 109, 108, 109),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                gridItems[index].imagePath,
                                width: 130,
                                height: 120,
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
