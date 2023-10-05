import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:megha1_parmacy/my_website.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // List of images for the slider
  final List<Widget> imageList = [
    Image.asset('assets/image1.jpg'),
    Image.asset('assets/image2.jpg'),
    Image.asset('assets/image3.jpg'),
    // Add more images as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(239, 255, 241, 214),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image slider
          const Text(
            " Megha1 ",
            style: TextStyle(
              fontSize: 50,
              color: Color.fromARGB(255, 226, 173, 0),
              fontWeight: FontWeight.w900,
              // backgroundColor: Color.fromRGBO(255, 226, 173, 0.651),
            ),
          ),
          CarouselSlider(
            items: imageList,
            options: CarouselOptions(
              height: 400, // Set the desired height of the slider
              autoPlay: true, // Enable auto-play
              enlargeCenterPage: true, // Make the center item larger
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyWebSite()),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              shadowColor: const Color.fromARGB(232, 0, 0, 0),
              foregroundColor: const Color.fromARGB(255, 255, 231, 163),
              backgroundColor: const Color.fromARGB(
                  255, 226, 173, 0), // Change the text color
              padding: const EdgeInsets.symmetric(
                  vertical: 25, horizontal: 65), // Set button padding
              textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold), // Set text font size
            ),
            child: const Text("Start"),
          ),
        ],
      ),
    );
  }
}
