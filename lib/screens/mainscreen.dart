import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Image.asset(
                'assets/images/fitnessimage.jpg',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(54, 0, 0, 0),
              child: OutlinedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 0, horizontal: 85))),
                  onPressed: () {},
                  child: Text('Continue With Google')),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(54, 0, 0, 0),
              child: OutlinedButton.icon(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 0, horizontal: 80))),
                  onPressed: () {},
                  icon: Icon(Icons.email_outlined),
                  label: Text('Sign Up With Email')),
            )
          ],
        ),
      ),
    );
  }
}
