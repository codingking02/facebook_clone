import 'package:facebook_clone/home_screen.dart';
import 'package:facebook_clone/login.dart';
import 'package:facebook_clone/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FaceBook',
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (ctx) => const SplashScreen(),
        "login": (ctx) => const Login(),
        "home": (ctx) => const HomeScreen(),
      },
    );
  }
}
