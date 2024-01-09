import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
        child: Column(
          children: [
            Text('Welcome Back'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text('Email'),
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.zero)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text('Password'),
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.zero)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              width: 330,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/welcome');
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?'),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text(
                      'Register now',
                      style: TextStyle(color: Colors.blue.shade500),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
