import 'dart:js';

import 'package:flutter/material.dart';

import 'package:radhika_details/pages/onboarding_page.dart';
import 'package:radhika_details/pages/welcome.dart';
import 'package:radhika_details/screens/mainscreen.dart';
import 'package:radhika_details/screens/signin.dart';
import 'package:radhika_details/screens/signup.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => OnboardingPage(),
      '/welcome': (context) => MainPage(),
      '/mainscreen': (context) => WelcomeScreen(),
      '/signup': (context) => SignUpPage(),
      '/signin': (context) => SignInPage(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
