import 'package:anurag_mechne_test/service/authService.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
        _user = event;
      });
    });
  }

  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: mq.height * .2,
          ),
          Text(
            'WELCOME',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: mq.height * .05,
          ),
          Center(
            child: Image.asset(
              'images/Sign-Up.png',
              height: mq.height * 0.3,
            ),
          ),
          SizedBox(
            height: mq.height * .09,
          ),
          SizedBox(
            height: mq.height * .06,
            width: mq.width * .6,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 205, 249, 155),
                    shape: StadiumBorder()),
                onPressed: () {
                  AuthService().googleSinIn(context);
                },
                icon: Image.asset(
                  'images/google.png',
                  height: mq.height * .03,
                ),
                label: RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        children: [
                      TextSpan(text: 'Sign In With '),
                      TextSpan(
                          text: 'Google',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]))),
          ),
          SizedBox(
            height: mq.height * .03,
          ),
          SizedBox(
            height: mq.height * .06,
            width: mq.width * .6,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 205, 249, 155),
                    shape: StadiumBorder()),
                onPressed: () {},
                icon: Image.asset(
                  'images/smartphone-call.png',
                  height: mq.height * .03,
                ),
                label: RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        children: [
                      TextSpan(text: 'Sign In With '),
                      TextSpan(
                          text: 'Phone',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]))),
          ),
        ],
      ),
    );
  }

  Widget _userInfo() {
    return SizedBox();
  }

  void _handleGoogleSignin() {
    try {
      GoogleAuthProvider _googleAuthProvider = GoogleAuthProvider();
      _auth.signInWithProvider(_googleAuthProvider);
    } catch (error) {
      print(error);
    }
  }
}
