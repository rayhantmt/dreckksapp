import 'dart:async';

import 'package:dreckks/widgets/login_page.dart';
import 'package:flutter/material.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {

   @override
  void initState() {
    super.initState();
    // Simulate some startup delay
    Timer(const Duration(seconds: 3), () {
      // Navigate to home screen after 3 seconds
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const LoginPage())
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3F6F85),
      body: Center(
       child: Image.asset('assets/images/spalsh.png'),
      ),
    
    );
  }
}