import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  String? validateEmail(value) {
    if (value!.isEmpty) {
      return 'Please Enter An Email';
    }
    RegExp emailRegExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!emailRegExp.hasMatch(value)) {
      return 'please Enter A Valid Email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
        child: Form(
          key: _formkey,
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
                  controller: emailController,
                  decoration: InputDecoration(
                    label: Text('Email'),
                    border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                  ),
                  validator: validateEmail,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                      label: Text('Password'),
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.zero)),
                  validator: (value) {
                    if (value!.length < 3) {
                      return 'Password Is Too Short';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextFormField(
                  obscureText: true,
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                    label: Text('Confirm Password'),
                    border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                  ),
                  validator: (value) {
                    if (value!.length < 3) {
                      return 'Password Is Too Short';
                    } else if (value != passwordController.text) {
                      return 'Enter Correct Password';
                    }
                    return null;
                  },
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
                    if (_formkey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/signin');
                    }
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
      ),
    );
  }
}
