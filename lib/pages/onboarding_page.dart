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
            title: 'Train Your Body \n And Mind',
            body:
                'Fitness is not about being better than someone else. It’s about being better than you used to be.',
            image: Image.asset(
              'assets/images/fitnessimage5.jpg',
              width: 300,
            ),
            decoration: PageDecoration(
              titleTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              bodyTextStyle: TextStyle(fontSize: 15),
              titlePadding: EdgeInsets.all(0).copyWith(bottom: 0),
              bodyPadding: EdgeInsets.all(19).copyWith(bottom: 0),
            )),
        PageViewModel(
            title: 'Train Your Body \n And Mind',
            body:
                'Fitness is not about being better than someone else. It’s about being better than you used to be.',
            image: Image.asset(
              'assets/images/fitnessimage5.jpg',
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
