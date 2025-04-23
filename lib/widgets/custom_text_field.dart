import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.maxLines,
  });

  final String hintText;
  final int? maxLines;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
