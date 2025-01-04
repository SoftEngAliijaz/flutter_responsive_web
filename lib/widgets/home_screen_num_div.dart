import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
    final isReponsive = ResponsiveBreakpoints.of(context).largerThan(TABLET);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Container(
        height: isReponsive ? 200.0 : 170.0,
        width: isReponsive ? 200.0 : 170.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
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
