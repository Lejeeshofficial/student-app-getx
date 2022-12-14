import 'package:flutter/material.dart';
import 'package:student_app/constants/size/sizedBox.dart';
import 'package:student_app/constants/style/style.dart';
import 'package:student_app/view/bottomNav/bottom_nav.dart';
import 'package:student_app/view/bottomNav/bottom_nav1.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/images.png',
            ),
          ),
        ],
      ),
    );
  }

  navigate() async {
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: ((context) => BottomNav()),
      ),
    );
  }
}
