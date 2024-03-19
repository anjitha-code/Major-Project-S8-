import 'package:flutter/material.dart';

class Mode extends StatefulWidget {
  const Mode({super.key});

  @override
  State<Mode> createState() => _ModeState();
}

class _ModeState extends State<Mode> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Text(
        "Choose Mode ",
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
