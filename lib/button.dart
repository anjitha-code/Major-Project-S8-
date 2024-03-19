import 'package:flutter/material.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  minimumSize: const Size(200, 60),
  backgroundColor: const Color.fromARGB(70, 109, 109, 109),
  elevation: 10,
  shadowColor: const Color.fromARGB(255, 0, 0, 0),
  side: const BorderSide(color: Color.fromARGB(33, 255, 255, 255),width: 1),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(50),
    ),
  ),
);
