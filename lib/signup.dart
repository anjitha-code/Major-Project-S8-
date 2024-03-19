import 'package:flutter/material.dart';
import 'button.dart';
import 'choose_mode.dart';
import 'dart:ui';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: Center(
              child: OverflowBox(
                maxWidth: double.infinity,
                child: Transform.translate(
                  offset: const Offset(350, 150),
                  child: Image.asset('assets/images/bg.png', fit: BoxFit.cover),
                ),
              ),
            ),
          ),

          SafeArea(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 300,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 150),
                    Center(
                      child: ElevatedButton(
                        style: buttonPrimary,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Mode()),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
