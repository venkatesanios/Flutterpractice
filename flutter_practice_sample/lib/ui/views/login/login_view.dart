import 'package:flutter/material.dart';
import 'package:flutter_practice_sample/ui/views/createAccount/createAccount.dart';
import 'package:flutter_practice_sample/ui/views/home/homepageview.dart';
import 'package:flutter_practice_sample/ui/views/test.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(labelText: "User Name"),
                ),
                const TextField(
                  decoration: InputDecoration(labelText: "Password"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      child: const Text('Forgot Password?'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homepageview()));
                        },
                        child: const Text('Login')),
                    // Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CreateAccount()));
                        },
                        child: const Text('Sign in')),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
