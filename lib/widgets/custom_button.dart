import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final void Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
        backgroundColor: WidgetStateProperty.all(Colors.blue),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
