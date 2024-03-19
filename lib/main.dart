import 'package:flutter/material.dart';
import 'dart:ui';
import 'button.dart';
import 'package:splash_screen/signup.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gamify',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({super.key});

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
                padding: const EdgeInsets.fromLTRB(50, 150, 50, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: SizedBox(
                        width: 300,
                        child: Text(
                          "You can now Learn Faster",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 40,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
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
                                builder: (context) => const SignUp()),
                          );
                        },
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 200),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an account ?',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          const SizedBox(width: 10.0),
                          GestureDetector(
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFFF2171),
                              ),
                            ),
                            onTap: () {
                              // Navigate to the login page
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                              );
                            },
                          ),
                        ],
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
