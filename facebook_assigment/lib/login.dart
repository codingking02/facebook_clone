import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: getMediaQueryWidth(0.05, context),
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: getMediaQueryHeight(0.1, context),
            ),
            SvgPicture.asset(
              'assets/facebooklogo.svg',
            ),
            SizedBox(
              height: getMediaQueryHeight(0.05, context),
            ),
            myTextField(
              context,
              'Mobile Number Or Email Address',
              false,
            ),
            SizedBox(
              height: getMediaQueryHeight(0.02, context),
            ),
            myTextField(
              context,
              'Password',
              true,
            ),
            SizedBox(
              height: getMediaQueryHeight(0.07, context),
            ),
            loginButton(context),
            SizedBox(
              height: getMediaQueryHeight(0.02, context),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgotten Password?',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff898F9C),
                ),
              ),
            ),
            const Spacer(),
            createAccount(context),
            SizedBox(
              height: getMediaQueryHeight(0.02, context),
            ),
            SvgPicture.asset('assets/metalogo.svg'),
            SizedBox(
              height: getMediaQueryHeight(0.03, context),
            ),
          ],
        ),
      ),
    );
  }
}
