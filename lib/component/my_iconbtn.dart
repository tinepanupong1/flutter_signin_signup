import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({super.key,
  required this.imagPath,});

  final String imagPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border:Border.all(color:Color.fromARGB(255, 0, 0, 0)),
        borderRadius: BorderRadius.circular(16),
        color:const Color.fromARGB(255, 255, 255, 255),
      ),
      child: Image.asset(
        imagPath,
        height: 70,
       
      ),
    );
  }
}