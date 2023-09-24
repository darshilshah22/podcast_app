import 'package:flutter/material.dart';
import 'package:podcast_app/screens/splash_screen.dart';
import 'package:podcast_app/size_config.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    sizeConfig.getDimension(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: Theme.of(context).copyWith(
          appBarTheme: Theme.of(context)
              .appBarTheme
              .copyWith(backgroundColor: Colors.white)),
    );
  }
}
