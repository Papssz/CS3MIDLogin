import 'package:flutter/material.dart';
import 'package:cs3midLogin/HomeScreen.dart';
import 'package:cs3midLogin/LoginScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 7,
                child: Image.asset(
                  'assets/STONKS.png',
                  fit: BoxFit.fill,
                  height: double.infinity,
                ),
              ),
            ],
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.8 - 270,
            right: 0,
            top: MediaQuery.of(context).size.height * 0.23,
            child: Container(
              width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width * 0.7,
              height: 575,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.8 - 240,
            right: 0,
            top: MediaQuery.of(context).size.height * 0.23,
            child: Container(
              width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width * 0.7,
              height: 590,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.8 - 290,
            right: 0,
            top: MediaQuery.of(context).size.height * 0.23,
            child: Container(
              width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width * 0.7,
              height: 560,
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'TruenoRound',
                      color: Color.fromARGB(255, 17, 5, 90),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 29.0),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'First Name',
                                style: TextStyle(
                                  fontFamily: 'TruenoRound',
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              TextField(
                                cursorColor: Colors.blue,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color.fromARGB(255, 1, 31, 58),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(color: Colors.transparent),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(color: Colors.blue),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                                ),
                                style: const TextStyle(
                                  color: Colors.blueAccent,
                                  fontFamily: 'TruenoRound',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Last Name',
                                style: TextStyle(
                                  fontFamily: 'TruenoRound',
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              TextField(
                                cursorColor: Colors.blue,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color.fromARGB(255, 1, 31, 58),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(color: Colors.transparent),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(color: Colors.blue),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                                ),
                                style: const TextStyle(
                                  color: Colors.blueAccent,
                                  fontFamily: 'TruenoRound',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Email Address',
                                style: TextStyle(
                                  fontFamily: 'TruenoRound',
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              TextField(
                                cursorColor: Colors.blue,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color.fromARGB(255, 1, 31, 58),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(color: Colors.transparent),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(color: Colors.blue),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                                ),
                                style: const TextStyle(
                                  color: Colors.blueAccent,
                                  fontFamily: 'TruenoRound',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Username',
                                style: TextStyle(
                                  fontFamily: 'TruenoRound',
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              TextField(
                                cursorColor: Colors.blue,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color.fromARGB(255, 1, 31, 58),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(color: Colors.transparent),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(color: Colors.blue),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                                ),
                                style: const TextStyle(
                                  color: Colors.blueAccent,
                                  fontFamily: 'TruenoRound',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Password',
                                style: TextStyle(
                                  fontFamily: 'TruenoRound',
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              TextField(
                                obscureText: true,
                                cursorColor: Colors.blue,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color.fromARGB(255, 1, 31, 58),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(color: Colors.transparent),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(color: Colors.blue),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                                ),
                                style: const TextStyle(
                                  color: Colors.blueAccent,
                                  fontFamily: 'TruenoRound',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0.1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Confirm Password',
                                style: TextStyle(
                                  fontFamily: 'TruenoRound',
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              TextField(
                                obscureText: true,
                                cursorColor: Colors.blue,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color.fromARGB(255, 1, 31, 58),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(color: Colors.transparent),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(color: Colors.blue),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                                ),
                                style: const TextStyle(
                                  color: Colors.blueAccent,
                                  fontFamily: 'TruenoRound',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    padding: const EdgeInsets.only(left: 105.0, right: 15.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const LoginScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        minimumSize: const Size(110, 10),
                        backgroundColor: const Color.fromARGB(255, 98, 0, 255),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'TruenoRound',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const Divider(  
                    color: Colors.grey,
                    thickness: 1, 
                  ),
                  const SizedBox(height: 5.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                      );
                    },
                    icon: const Icon(
                      FontAwesomeIcons.google,
                      color: Colors.black,
                    ),
                    label: const Text(
                      'Continue with Google',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'TruenoRound',
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 59, 58, 61),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: const BorderSide(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'TruenoRound',
                      ),
                      children: [
                        WidgetSpan(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const LoginScreen()),
                              );
                            },
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'TruenoRound',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        )
      ),
    );
  }
}
