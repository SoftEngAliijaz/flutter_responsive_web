import 'package:flutter/material.dart';

class DashboardTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;

  const DashboardTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
      ),
    );
  }
}
