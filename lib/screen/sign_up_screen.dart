import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/component/my_button.dart';
import 'package:onboarding_screen/component/my_textfield.dart';
import 'package:onboarding_screen/screen/home_Screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("images/g16.png"), // เปลี่ยนเป็นตำแหน่งของรูปภาพของคุณ
        fit: BoxFit.cover,
      ),
    ),
    child: Form(
      
        child: Column(
          children: [
            const Spacer(),
            Text(
              'Welcome to our community',
              style: GoogleFonts.domine(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),
            ),
            Text(
              '\nTo get started,please provide your information and create an account.\n',
              style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displaySmall,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                controller: nameController,
                hintText: 'Enter your name.',
                obscureText: false,
                labelText: 'Name'
                ),
              const SizedBox(height: 20,),
            MyTextField(
                controller: emailController,
                hintText: 'Enter your Email.',
                obscureText: false,
                labelText: 'Email'),
                const SizedBox(height: 20,),
            MyTextField(
                controller: passwordController,
                hintText: 'Enter your password.',
                obscureText: true,
                labelText: 'Password'),
                const SizedBox(height: 20,),
            MyTextField(
                controller: repasswordController,
                hintText: 'Enter your password again.',
                obscureText: true,
                labelText: 'Re-password'),   
                const SizedBox(height: 20,),
            MyButton(onTap: (){
              

            }, hintText: 'Sign up'),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have a member?',
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  TextButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      )
                      );
                  }, child: Text(
                    'Sign in.',
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displaySmall,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: const Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                  ),
                ],
              ),
            const Spacer(),
          ],
        ),
      ),
    ),);
  }
}
