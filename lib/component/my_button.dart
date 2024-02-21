import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key, 
    required this.onTap, 
    required this.hintText
    });

  final Function()? onTap;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: onTap,
      child:Container(
        padding:const EdgeInsets.all(25.0) ,
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child:Text(
            hintText,
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.titleLarge,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color:Colors.white,
            ),
            
          ),
           ),
      ) ,
    );
  }
}
