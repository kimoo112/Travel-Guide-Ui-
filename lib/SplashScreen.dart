import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  final double duration;
  final Widget nextScreen;

  SplashScreen({
    Key? key,
    required this.duration,
    required this.nextScreen,
    required double seconds,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: widget.duration.toInt()), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => widget.nextScreen),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 240, 240),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Splash.gif',
              width: 400,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Travel Guide',
              style: TextStyle(
                  fontSize: 27,
                  color: Colors.purple,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 4),
              textDirection: TextDirection.ltr,
            ),
          ],
        ),
      ),
    );
  }
}
