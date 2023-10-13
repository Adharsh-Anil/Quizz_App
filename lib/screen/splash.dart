// ignore_for_file: use_key_in_widget_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:quiz_app/db/userdb.dart';
import 'package:quiz_app/screen/catogery.dart';
import 'package:quiz_app/screen/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Image.asset(
                  'assets/images/front img.jpg',
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'QUIZ. WORLD...',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 75,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 340,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(0),
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)))),
                    onPressed: () async {
                      final pref = await SharedPreferences.getInstance();
                      bool log = pref.getBool('Login') ?? false;
                      if (log) {
                        await UsersDb.getCurrentUser();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const GridScreen()),
                        );
                      } else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      }
                    },
                    child: const Text('Get Started'),
                  ),
                ),
                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
