// import 'package:flutter/material.dart';
// import 'package:flutter_practice_sample/ui/views/homepageview.dart';

// class LoginView extends StatefulWidget {
//   const LoginView({super.key});

//   @override
//   State<LoginView> createState() => _LoginViewState();
// }

// class _LoginViewState extends State<LoginView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text('Login')),
//         body: SafeArea(
//           child: Container(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 const TextField(
//                   decoration: InputDecoration(labelText: "User Name"),
//                 ),
//                 const TextField(
//                   decoration: InputDecoration(labelText: "Password"),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     TextButton(
//                       onPressed: () {},
//                       style: ButtonStyle(
//                         foregroundColor:
//                             MaterialStateProperty.all<Color>(Colors.red),
//                       ),
//                       child: const Text('Forgot Password?'),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     ElevatedButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const Homepageview()));
//                         },
//                         child: const Text('Login')),
//                     // Spacer(),
//                     ElevatedButton(
//                         onPressed: () {}, child: const Text('Sign in'))
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_practice_sample/ui/views/homepageview.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/src/animation/tween.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>
    with SingleTickerProviderStateMixin {
  late AnimationController _loginButtonController;
  late AnimationController _signInButtonController;

  @override
  void initState() {
    super.initState();
    _loginButtonController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _signInButtonController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _loginButtonController.dispose();
    _signInButtonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // ... existing code for text fields and forgot password

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AnimatedBuilder(
                    animation: _loginButtonController,
                    builder: (context, child) {
                      return ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Homepageview()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            ColorTween(
                              begin: Colors.blue,
                              end: Colors.green,
                            ).evaluate(_loginButtonController),
                          ),
                        ),
                        style:ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(ColorTween(begin: Colors.amber,end: Colors.black26))))
                        child: const Text('Login'),
                      );
                    },
                  ),
                  AnimatedBuilder(
                    animation: _signInButtonController,
                    builder: (context, child) {
                      return ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            ColorTween(
                              begin: Colors.red,
                              end: Colors.orange,
                            ).evaluate(_signInButtonController),
                          ),
                        ),
                        child: const Text('Sign in'),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
