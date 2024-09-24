import 'package:flutter/material.dart';
import 'package:flutter_application_2/SignupScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 7,
                child: Image.asset(
                  'assets/STONKS.png',
                  fit: BoxFit.cover,
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
                  const SizedBox(height: 50.0),
                  const Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'sans-serif',
                      color: Color.fromARGB(255, 17, 5, 90),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 32.0),
                  const Text (
                    'E-mail',
                    style: TextStyle(
                      fontFamily: 'sans-serif',
                    )
                  ),
                  const SizedBox(height: 5.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8, 
                    height: 40.0, 
                    child: TextField(
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
                        fontFamily: 'sans-serif',
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text (
                    'Password',
                    style: TextStyle(
                      fontFamily: 'sans-serif',
                    )
                  ),
                  const SizedBox(height: 5.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 40.0,
                    child: TextField(
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
                        contentPadding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 15.0),
                      ),
                      style: const TextStyle(
                        color: Colors.blueAccent,
                        fontFamily: 'sans-serif',
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _rememberMe = !_rememberMe;
                            });
                          },
                          child: Container(
                            width: 20, 
                            height: 20, 
                            decoration: BoxDecoration(
                              color: _rememberMe ? Colors.blue : Colors.transparent, 
                              borderRadius: BorderRadius.circular(6.0), 
                              border: Border.all(
                                color: _rememberMe ? Colors.blue : Colors.grey, 
                                width: 2, 
                              ),
                            ),
                            child: _rememberMe
                                ? const Icon(Icons.check, color: Colors.white, size: 16) 
                                : null, 
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          'Remember me',
                          style: TextStyle(
                            fontFamily: 'sans-serif',
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontFamily: 'sans-serif',
                          color: Color.fromARGB(255, 105, 105, 105),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32.0),
                Container(
                  padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      minimumSize: const Size(110, 10),
                      backgroundColor: const Color.fromARGB(255, 98, 0, 255),
                    ),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'sans-serif',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32.0),
                RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'sans-serif',
                    ),
                    children: [
                      WidgetSpan(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const SignUpScreen()),
                            );
                          },
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'sans-serif',
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
      ),
    );
  }
}
