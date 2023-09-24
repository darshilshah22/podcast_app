import 'package:flutter/material.dart';
import 'package:podcast_app/constants/constants.dart';
import 'package:podcast_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
            (route) => false);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Podcast App",
              style: customStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              "Listen your favourite podcast here.",
              style: customStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      )),
    );
  }
}
