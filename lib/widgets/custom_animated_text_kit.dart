import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CustomAnimatedTextKit extends StatelessWidget {
  final bool isHomePage;

  const CustomAnimatedTextKit({
    super.key,
    required this.isHomePage,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: isHomePage

          /// Content For Home Page
          ? [
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'Welcome to TechSolNexa!'),
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'Master Flutter with us.'),
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'Explore Riverpod for state management.'),
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'Learn how to build responsive UIs.'),
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'Boost productivity with best coding practices.'),
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'Check out our tutorials on GitHub integration.'),
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'Discover advanced Dart programming tips.'),
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'Stay tuned for more tech insights.'),
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'Subscribe for coding content!'),
            ]
          : [
              // Content for About Page
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'At TechSolNexa, we embrace innovation!'),
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'Transforming ideas into reality with cutting-edge solutions.'),
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'We believe in the power of technology to solve complex problems.'),
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'Delivering impactful results that drive growth for our clients.'),
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'Our mission is to lead the future of tech with integrity and passion.'),
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'We thrive on creating innovative solutions for today’s challenges.'),
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'Partner with us to revolutionize your business through technology.'),
              TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      color: isHomePage ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal),
                  'We are TechSolNexa – Innovating, delivering, and transforming!'),
            ],
    );
  }
}
