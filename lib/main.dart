import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:megha1_parmacy/my_website.dart';
import 'package:metaballs/dart_ui_real.dart';
import 'package:metaballs/metaballs.dart';

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

  final List<Widget> imageList = [
    Image.asset('assets/image1.jpg'),
    Image.asset('assets/image2.jpg'),
    Image.asset('assets/image3.jpg'),
    // Add more images as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Add Metaballs as the background
          const Metaballs(
            color: Color.fromARGB(209, 255, 208, 113),
            child: SizedBox.expand(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Use a Container with background color for transparency
              Container(
                color: const Color.fromARGB(255, 255, 232, 128)
                    .withOpacity(0.3), // Adjust opacity as needed
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: const Text(
                    " Megha1 ",
                    style: TextStyle(
                      fontSize: 50,
                      color: Color.fromARGB(255, 226, 173, 0),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              CarouselSlider(
                items: imageList,
                options: CarouselOptions(
                  height: 400,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyWebSite(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  shadowColor: const Color.fromARGB(232, 0, 0, 0),
                  foregroundColor: const Color.fromARGB(255, 255, 236, 184),
                  backgroundColor: const Color.fromARGB(255, 226, 173, 0),
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 65),
                  textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text("Start"),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
        height: 45,
        color: Color.fromARGB(255, 255, 248, 224),
        child: Padding(
          padding: EdgeInsets.all(1.0),
          child: Center(
            child: Text(
              "Powered by Talentfort",
              style: TextStyle(
                color: Color.fromARGB(255, 226, 173, 0),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
