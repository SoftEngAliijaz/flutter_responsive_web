import 'package:flutter/material.dart';

class HomeScreenNumberDiv extends StatelessWidget {
  final String title;
  final String subtitle;
  const HomeScreenNumberDiv({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(5.0, 5.0),
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(title,
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(subtitle,
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
