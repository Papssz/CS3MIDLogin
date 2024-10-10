import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Screen',
          style: TextStyle(
            color: Colors.white,
          )
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            ),
          onPressed: () {
            Navigator.of(context).pop(
            );
          },
        ),
        backgroundColor: const Color(0xFF000B30), 
      ),
      body: Center(
        child: Image.asset(
          'assets/STOONKS.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
