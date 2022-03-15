import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/presentation/ui_views/auth/loginboard.dart';
import 'package:voting_app/presentation/ui_views/auth/onboarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const OnboardingOne(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: <Widget>[
              Container(color: Colors.white70),
              Positioned(
                left: 20.w,
                top: 70.h,
                child: const Image(
                  image: AssetImage("assets/images/ball.png"),
                ),
              ),
              Positioned(
                left: 91.w,
                top: 390.h,
                child: Container(
                  height: 48.h,
                  width: 48.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/ball.png"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 190.h,
                child: const Image(
                  image: AssetImage("assets/images/ball2.png"),
                ),
              ),
              const Positioned(
                left: 0,
                bottom: 0,
                child: Image(
                  image: AssetImage("assets/images/ball3.png"),
                ),
              ),
              Positioned(
                left: 80.h,
                top: 410.h,
                child: const Image(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
