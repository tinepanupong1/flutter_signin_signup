import 'package:flutter/material.dart';

class MyTextField1 extends StatelessWidget {
  const MyTextField1(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.labelText});

  final controller;
  final String hintText;
  final bool obscureText;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color.fromARGB(255, 130, 77, 43)),
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), 
            borderSide: const BorderSide(color: Color.fromARGB(255, 130, 77, 43)),
            gapPadding: 10,
          ),
          // เพิ่ม style สำหรับตัวอักษรด้านในช่อง input
          labelStyle: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0), 
          ),
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0), 
          ),
        ),
      ),
    );
  }
}
