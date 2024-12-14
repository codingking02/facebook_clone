import 'package:facebook_clone/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FaceBook',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      // routes: {
      //   "/": (ctx) => const SplashScreen(),
      //   "login": (ctx) => const Login(),
      //   "home": (ctx) => const HomeScreen(),
      // },
    );
  }
}
