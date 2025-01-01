import 'package:flutter/material.dart';

class DashboardActionButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;

  const DashboardActionButton({
    super.key,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
        backgroundColor: WidgetStateProperty.all(Colors.blue),
      ),
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
