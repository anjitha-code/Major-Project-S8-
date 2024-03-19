import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:google_fonts/google_fonts.dart';


class ChooseDomain extends StatefulWidget {
  const ChooseDomain({Key? key}) : super(key: key);

  @override
  _ChooseDomainState createState() => _ChooseDomainState();
}

class _ChooseDomainState extends State<ChooseDomain> {
  String dropdownValue = 'Grammar';
  bool isDropdownVisible = false;
  bool isMathVisible = false;
  bool isScienceVisible = false;

  double englishFontSize = 16.0;
  double optionFontSize = 14.0;
  Color buttonColor = const Color.fromARGB(70, 109, 109, 109);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 42),
                child: Image.asset(
                  'assets/logo_gamify.png',
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Choose a ',
                            style: GoogleFonts.montserrat(
                              fontSize: 30.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          GradientText(
                            'Domain',
                            style: GoogleFonts.montserrat(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w500,
                            ),
                            colors: const [
                              Color.fromRGBO(255, 33, 113, 20),
                              Color.fromRGBO(101, 40, 247, 20)
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isDropdownVisible = !isDropdownVisible;
                            isMathVisible = false;
                            isScienceVisible = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(200, 60),
                          backgroundColor: buttonColor,
                          elevation: 10,
                          shadowColor: const Color.fromARGB(255, 0, 0, 0),
                          side: const BorderSide(
                              color: Color.fromARGB(33, 255, 255, 255),
                              width: 1),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                        child: Text(
                          'English',
                          style:
                              GoogleFonts.montserrat(fontSize: englishFontSize),
                        ),
                      ),
                      if (isDropdownVisible) ...[
                        const SizedBox(height: 40),
                        SizedBox(
                          width: 200,
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    dropdownValue = 'Grammar';
                                    isDropdownVisible = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(200, 40),
                                  backgroundColor: buttonColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  'Grammar',
                                  style: GoogleFonts.montserrat(
                                    fontSize: optionFontSize,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    dropdownValue = 'Vocabulary';
                                    isDropdownVisible = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(200, 40),
                                  backgroundColor: buttonColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  'Vocabulary',
                                  style: GoogleFonts.montserrat(
                                    fontSize: optionFontSize,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    dropdownValue = 'Pronunciation';
                                    isDropdownVisible = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(200, 40),
                                  backgroundColor: buttonColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  'Pronunciation',
                                  style: GoogleFonts.montserrat(
                                    fontSize: optionFontSize,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isMathVisible = !isMathVisible;
                            isDropdownVisible = false;
                            isScienceVisible = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(200, 60),
                          backgroundColor: buttonColor,
                          elevation: 10,
                          shadowColor: const Color.fromARGB(255, 0, 0, 0),
                          side: const BorderSide(
                              color: Color.fromARGB(33, 255, 255, 255),
                              width: 1),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                        child: Text(
                          'Mathematics',
                          style:
                              GoogleFonts.montserrat(fontSize: englishFontSize),
                        ),
                      ),
                      if (isMathVisible) ...[
                        const SizedBox(height: 40),
                        SizedBox(
                          width: 200,
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Handle Mathematics options
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(200, 40),
                                  backgroundColor: buttonColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  'Algebra',
                                  style: GoogleFonts.montserrat(
                                    fontSize: optionFontSize,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  // Handle Mathematics options
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(200, 40),
                                  backgroundColor: buttonColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  'Calculus',
                                  style: GoogleFonts.montserrat(
                                    fontSize: optionFontSize,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  // Handle Mathematics options
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(200, 40),
                                  backgroundColor: buttonColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  'Trignometry',
                                  style: GoogleFonts.montserrat(
                                    fontSize: optionFontSize,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isScienceVisible = !isScienceVisible;
                            isDropdownVisible = false;
                            isMathVisible = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(200, 60),
                          backgroundColor: buttonColor,
                          elevation: 10,
                          shadowColor: const Color.fromARGB(255, 0, 0, 0),
                          side: const BorderSide(
                              color: Color.fromARGB(33, 255, 255, 255),
                              width: 1),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                        child: Text(
                          'Science',
                          style:
                              GoogleFonts.montserrat(fontSize: englishFontSize),
                        ),
                      ),
                      if (isScienceVisible) ...[
                        const SizedBox(height: 40),
                        SizedBox(
                          width: 200,
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Handle Science options
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(200, 40),
                                  backgroundColor: buttonColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  'Physics',
                                  style: GoogleFonts.montserrat(
                                    fontSize: optionFontSize,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  // Handle Science options
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(200, 40),
                                  backgroundColor: buttonColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  'Chemistry',
                                  style: GoogleFonts.montserrat(
                                    fontSize: optionFontSize,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  // Handle Science options
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(200, 40),
                                  backgroundColor: buttonColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  'Biology',
                                  style: GoogleFonts.montserrat(
                                    fontSize: optionFontSize,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        );
  }
}

// class CommonNavigation extends StatefulWidget {
//   final int initialIndex;
//   final Function(int) onItemSelected;

//   const CommonNavigation({
//     Key? key,
//     required this.initialIndex,
//     required this.onItemSelected,
//   }) : super(key: key);

//   @override
//   _CommonNavigationState createState() => _CommonNavigationState();
// }

// class _CommonNavigationState extends State<CommonNavigation> {
//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return CurvedNavigationBar(
//       key: _bottomNavigationKey,
//       index: widget.initialIndex,
//       height: 60.0,
//       items: const <Widget>[
//         Icon(
//           Icons.home,
//           size: 30,
//           color: Colors.white,
//         ),
//         Icon(
//           Icons.assignment,
//           size: 30,
//           color: Colors.white,
//         ),
//         Icon(
//           Icons.event,
//           size: 30,
//           color: Colors.white,
//         ),
//         Icon(
//           Icons.group,
//           size: 30,
//           color: Colors.white,
//         ),
//         Icon(
//           Icons.person,
//           size: 30,
//           color: Colors.white,
//         ),
//       ],
//       color: const Color.fromARGB(70, 109, 109, 109),
//       buttonBackgroundColor: const Color.fromARGB(70, 109, 109, 109),
//       backgroundColor: Colors.transparent,
//       animationDuration: const Duration(milliseconds: 300),
//       onTap: widget.onItemSelected,
//       letIndexChange: (index) => true,
//     );
//   }
// }
