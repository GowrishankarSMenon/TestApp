import 'package:flutter/material.dart';

class SplashSCreen extends StatefulWidget {
  final Widget? child;
  const SplashSCreen({super.key, this.child});

  @override
  State<SplashSCreen> createState() => _SplashSCreenState();
}

class _SplashSCreenState extends State<SplashSCreen> {

  @override
  void initState() {
    super.initState(); // Call the superclass's initState method

    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => widget.child!),
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Welcome to flutter firebase",
          style: TextStyle(
            color: Colors.blue[300],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
