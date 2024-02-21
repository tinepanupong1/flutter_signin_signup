import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'You can dive and see coral reefs.',
      body:
          'Here you can snorkel. and see many aquatic animals according to your happiness.',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 8,
          ),
          onPressed: () {},
          child: const Text("Let's Go"),
        ),
      ),
      image: Image.network(
          'https://scontent.fbkk5-3.fna.fbcdn.net/v/t1.15752-9/426172112_424767590118750_9070893258547382775_n.png?_nc_cat=105&ccb=1-7&_nc_sid=8cd0a2&_nc_eui2=AeFNKs2xgNhmczejC31t2oI0yLT3v4R4xFTItPe_hHjEVJFX25CFfmw7nGbE0TTK4Skd6jB6kB2H9KuzrafaTYYh&_nc_ohc=yyUhZfebpJMAX9lj04E&_nc_ht=scontent.fbkk5-3.fna&oh=03_AdSYVW4U_kyWPp7EQbElWy2mrqq5RZRJ0qENWTNG7N6XTw&oe=65EAEB2F'),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'But be careful of drowning !',
      body:
          'Here you can snorkel or swim. But you also have to be careful of drowning. Otherwise, you may die.',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 8,
          ),
          onPressed: () {},
          child: const Text("I Know"),
        ),
      ),
      image: Image.network(
          'https://scontent.fbkk5-8.fna.fbcdn.net/v/t1.15752-9/426490683_247685575047746_4399835266154208292_n.png?_nc_cat=106&ccb=1-7&_nc_sid=8cd0a2&_nc_eui2=AeHmhppY6OHiEmiJhLmgJtw9Bwnvf8BSw2gHCe9_wFLDaHQE6FZ06akgJPWI3CwDg-JDDD6jHqeibqe1dtyXPgD4&_nc_ohc=Y7M3kQiLrxwAX-86GRc&_nc_ht=scontent.fbkk5-8.fna&oh=03_AdRAbupKrbrHUUiUqnU-CkrgiINJsZxBHBh0CkmIQ33pgg&oe=65EC4F00'),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Viewing nature in the ocean',
      body:
          'Here you can relax and admire the beauty of the ocean. And beauty is as beautiful as our land.',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 8,
          ),
          onPressed: () {},
          child: const Text("Love this"),
        ),
      ),
      image: Image.network(
          'https://scontent.fbkk5-1.fna.fbcdn.net/v/t1.15752-9/423036486_1443155679884653_8529016928567619595_n.png?_nc_cat=109&ccb=1-7&_nc_sid=8cd0a2&_nc_eui2=AeFzxbuUXSXymOwsOjfQ6hGMKc_y8QCWsBUpz_LxAJawFcZ0mKVE7FKtv-t-zoVIZmxL3bd0Owv9fV_8XPdaRnoM&_nc_ohc=VfcBqId3iiMAX9RHsHU&_nc_ht=scontent.fbkk5-1.fna&oh=03_AdQp9vcEWhScAy4sQpbIP8CHLSOj1BtohqrwHUBtUr5rsw&oe=65EC4376'),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 109, 189, 255),
        title: const Text(
          'In The Vast Ocean',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 28,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: IntroductionScreen(
        globalBackgroundColor: Color.fromRGBO(135, 207, 246, 1),
        pages: pages,
        showSkipButton: true,
        skip: const Text('Skip'),
        showDoneButton: true,
        done: const Text('Done'),
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          size: 25,
        ),
        onDone: () => onDone(context),
        curve: Curves.bounceOut,
        dotsDecorator: const DotsDecorator(
          size: Size(15, 15),
          color: Colors.blue,
          activeColor: Colors.orange,
          activeSize: Size.square(20),
        ),
      ),
    );
  }

  void onDone(context) async { 
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false); //set ให้เป็นค่า false จะได้ไม่ต้องโชว์ ON_BOARDING อีก
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>  HomeScreen(),
      ),
    );
  }
}
