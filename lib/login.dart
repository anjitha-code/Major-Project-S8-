import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Text(
        "Login ",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 40,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            color: Colors.white),
      ),
    );
  }
}
