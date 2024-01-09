import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showNextButton: false,
      pages: [
        PageViewModel(
            image: Image.asset(
              'assets/images/travel.png',
              width: 300,
            ),
            titleWidget: Text(
              'BookNow',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
            bodyWidget: Text(
              'Quick and easy to travel anywhere and anytime',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            decoration: PageDecoration(
              titleTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              titlePadding: EdgeInsets.all(0).copyWith(bottom: 0),
              bodyPadding: EdgeInsets.fromLTRB(40, 30, 40, 0),
            )),
        PageViewModel(
            title: 'Book your onlinebus ticket',
            body:
                'Book your ticket for a long journey in the comfort of your home,anytime,anywhere anyday',
            image: Image.asset(
              'assets/images/bus.jpg',
              width: 300,
            ),
            decoration: PageDecoration(
              titleTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              bodyTextStyle: TextStyle(fontSize: 15),
              titlePadding: EdgeInsets.all(0).copyWith(bottom: 0),
              bodyPadding: EdgeInsets.all(19).copyWith(bottom: 0),
            )),
      ],
      showSkipButton: true,
      skip: Text(
        'Skip',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      done: Text(
        'Done',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      onDone: () {
        Navigator.pushNamed(context, '/mainscreen');
      },
    );
  }
}
