import 'package:flutter/material.dart';

class MyTextFields extends StatelessWidget {
  const MyTextFields(
      {super.key,
      required this.hintText,
      required this.obscureText,
      required this.controller});

  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),
          fillColor: Colors.grey.shade200,
          filled: true,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
              focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
              
              ),
    );
  }
}
