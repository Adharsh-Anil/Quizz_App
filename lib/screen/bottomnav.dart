import 'package:flutter/material.dart';
import 'package:quiz_app/screen/admin.dart';
import 'package:quiz_app/screen/adminQueList.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _ScreenHmeState();
}

class _ScreenHmeState extends State<BottomNav> {
  var bottomList = [const AdminScreen(), const AdminQuesList()];

  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: bottomList[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'homes'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'list')
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.purple,
        onTap: (value) {
          setState(() {
            selectedindex = value;
          });
        },
      ),
    );
  }
}
