// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:lottie/lottie.dart';

import 'Theme.dart';
import 'constant.dart';

class SplashScreen extends StatefulWidget {
  final double duration;
  final Widget nextScreen;

  const SplashScreen({
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
      backgroundColor: AppTheme.isDark ? cDark : cLight,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/images/animation_lkfd3ir9.json', width: 250),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Travel Guide',
              style: TextStyle(
                  fontSize: 27,
                  color: cLightColor,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1),
              textDirection: TextDirection.ltr,
            ),
          ],
        ),
      ),
    );
  }
}
