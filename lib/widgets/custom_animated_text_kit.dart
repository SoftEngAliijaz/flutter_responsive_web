import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CustomAnimatedTextKit extends StatelessWidget {
  const CustomAnimatedTextKit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
            speed: const Duration(milliseconds: 50),
            textStyle: const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.normal),
            'Welcome to TechSolNexa!'),
        TypewriterAnimatedText(
            speed: const Duration(milliseconds: 50),
            textStyle: const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.normal),
            'Master Flutter with us.'),
        TypewriterAnimatedText(
            speed: const Duration(milliseconds: 50),
            textStyle: const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.normal),
            'Explore Riverpod for state management.'),
        TypewriterAnimatedText(
            speed: const Duration(milliseconds: 50),
            textStyle: const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.normal),
            'Learn how to build responsive UIs.'),
        TypewriterAnimatedText(
            speed: const Duration(milliseconds: 50),
            textStyle: const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.normal),
            'Boost productivity with best coding practices.'),
        TypewriterAnimatedText(
            speed: const Duration(milliseconds: 50),
            textStyle: const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.normal),
            'Check out our tutorials on GitHub integration.'),
        TypewriterAnimatedText(
            speed: const Duration(milliseconds: 50),
            textStyle: const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.normal),
            'Discover advanced Dart programming tips.'),
        TypewriterAnimatedText(
            speed: const Duration(milliseconds: 50),
            textStyle: const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.normal),
            'Stay tuned for more tech insights.'),
        TypewriterAnimatedText(
            speed: const Duration(milliseconds: 50),
            textStyle: const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.normal),
            'Subscribe for coding content!'),
      ],
    );
  }
}
