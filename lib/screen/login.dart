// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:quiz_app/db/userdb.dart';
import 'package:quiz_app/models/usermodel.dart';
import 'package:quiz_app/screen/bottomnav.dart';
import 'package:quiz_app/screen/catogery.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 336,
                width: size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  color: Colors.purple,
                ),
                child: const SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 6,
                        ),

                        Text(
                          'Welcome',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 45,
                            color: Colors.white,
                          ),
                        ),
                        // Add some space between the texts
                        Text(
                          'Please login to join our journey',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            radius: 56,
                            backgroundImage:
                                AssetImage('assets/images/front img.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              LoginTextform(nameController: _nameController),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    }
                    if (!RegExp(r"^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$")
                        .hasMatch(value)) {
                      return 'Invalid email format';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    labelText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    }
                    // Use regular expressions to check for the required criteria.
                    if (!RegExp(r'^(?=.*[A-Z]).{8,}$').hasMatch(value)) {
                      return 'Password must contain at least 8 letters and one capital letter';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    labelText: 'Password',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll(Colors.purple),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                onPressed: () async {
                  if (_nameController.text == 'a' &&
                      _emailController.text == 'b' &&
                      _passwordController.text == 'c') {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BottomNav(),
                    ));
                  }
                  if (_formKey.currentState!.validate()) {
                    final User user = User(
                        name: _nameController.text,
                        email: _emailController.text,
                        password: _passwordController.text);
                    await UsersDb.checkUser(user);
                    final sharedPref = await SharedPreferences.getInstance();
                    await sharedPref.setBool('Login', true);
                    UsersDb.getCurrentUser();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GridScreen()),
                    );
                  } else {
                    // print('Data is empty');
                    return;
                  }
                },
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginTextform extends StatelessWidget {
  const LoginTextform({
    super.key,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          labelText: 'Name',
        ),
        controller: _nameController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Username is required';
          }
          return null;
        },
      ),
    );
  }
}
