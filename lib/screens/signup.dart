import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
        child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Let's Create An Account For You",
              style: TextStyle(fontSize: 16),
            ),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text('Confirm Password'),
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.zero)),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 40,
              width: 330,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signin');
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 17, color: Colors.white),
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
                Text('Already Have An Account?'),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signin');
                    },
                    child: Text(
                      'Login Now',
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
