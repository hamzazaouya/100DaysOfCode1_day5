import 'package:day5/auth/login.dart';
import 'package:day5/auth/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Login(),
      routes: {
        "login": (context) => const Login(),
        "signup": (context) => const SignUp()
      },
      theme: ThemeData(
        primaryColor: Colors.blue,
        textTheme: const TextTheme(
          headline3: TextStyle(color: Colors.white, fontSize: 18)
        )
      ),
    );
  }
}
