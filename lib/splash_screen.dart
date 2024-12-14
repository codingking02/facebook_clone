import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
    ).then(
      (value) {
        if (mounted) {
          Navigator.pushReplacementNamed(context, "login");
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height * 0.35,
            child: SvgPicture.asset('assets/facebooklogo.svg'),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.02,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'From',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff898F9C),
                  ),
                ),
                SvgPicture.asset('assets/metalogo.svg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
