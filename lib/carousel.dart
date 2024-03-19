import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WordCarouselPage extends StatelessWidget {
  final DateTime selectedDate;

  const WordCarouselPage({Key? key, required this.selectedDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Dummy data
    List<String> words = ['Word1', 'Word2', 'Word3'];
    List<String> meanings = ['Meaning1', 'Meaning2', 'Meaning3'];
    List<String> examples = [
      'Example sentence 1',
      'Example sentence 2',
      'Example sentence 3'
    ];

    // Format the selected date to dd/mm/yy
    String formattedDate = DateFormat('dd/MM/yy').format(selectedDate);

    // Calculate the card width based on screen width and margin
    double cardWidth =
        MediaQuery.of(context).size.width - 60; // 30 margin on each side

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,
              color: Color.fromARGB(255, 201, 201, 201)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          formattedDate,
          style: const TextStyle(
            fontSize: 18,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Daily",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        colors: [
                          Color.fromRGBO(255, 33, 113, 1.0),
                          Color.fromRGBO(101, 40, 247, 1.0),
                        ],
                      ).createShader(bounds);
                    },
                    child: const Text(
                      " Challenges",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Center(
                child: Text(
                  " Learn and memorize  the words displayed in the flash cards .",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 218, 218, 218),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
            SizedBox(
              width: double.infinity,
              child: CarouselSlider(
                items: List.generate(
                  words.length,
                  (index) => Card(
                    margin: EdgeInsets.zero,
                    color:
                        const Color.fromARGB(59, 145, 145, 145), // Changed card color
                    child: SizedBox(
                      width: cardWidth,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              words[index],
                              style: const TextStyle(
                                fontSize: 18,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 218, 218, 218),
                              ),
                            ),
                            Text(
                              meanings[index],
                              style: const TextStyle(
                                fontSize: 18,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 218, 218, 218),
                              ),
                            ),
                            Text(
                              examples[index],
                              style: const TextStyle(
                                fontSize: 18,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 218, 218, 218),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                options: CarouselOptions(
                  height: 400.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
