import 'package:flutter/material.dart';
import 'package:graduation_project/constants/colors.dart';
import 'package:graduation_project/view/registaration_pages/onboardin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const OnBoarding()));
      context;
      MaterialPageRoute(builder: (context) => const OnBoarding());
    });
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "LOGO",
            style: TextStyle(color: Main_color, fontSize: 30),
          ),
        ],
      ),
    ),
  );
}
