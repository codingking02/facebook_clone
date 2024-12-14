import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

getMediaQueryWidth(double number, BuildContext context) {
  return MediaQuery.of(context).size.width * number;
}

getMediaQueryHeight(double number, BuildContext context) {
  return MediaQuery.of(context).size.height * number;
}

Widget myTextField(
  BuildContext context,
  String hinttext,
  bool isPassword,
) {
  return SizedBox(
    width: double.infinity,
    height: getMediaQueryHeight(0.06, context),
    child: TextField(
      style: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: const Color(0xff898F9C),
      ),
      cursorColor: const Color(0xff898F9C),
      obscureText: isPassword ? true : false,
      decoration: InputDecoration(
        fillColor: const Color.fromRGBO(214, 223, 241, 0.47),
        filled: true,
        hintText: hinttext,
        hintStyle: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: const Color(0xff898F9C),
        ),
        suffixIcon: isPassword
            ? const Icon(
                Icons.visibility_off,
                color: Color.fromRGBO(137, 143, 156, 1),
              )
            : const Text(''),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          borderSide: BorderSide(
            width: 1,
            color: Color(0xff898F9C),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          borderSide: BorderSide(
            width: 1,
            color: Color(0xff898F9C),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          borderSide: BorderSide(
            width: 1,
            color: Color(0xff898F9C),
          ),
        ),
      ),
    ),
  );
}

Widget loginButton(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    height: getMediaQueryHeight(0.06, context),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff1877F2),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
      child: Text(
        'Login',
        style: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}

Widget createAccount(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    height: getMediaQueryHeight(0.06, context),
    child: OutlinedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color(0xff1877F2),
        side: const BorderSide(
          width: 1,
          color: Color(0xff1877F2),
          strokeAlign: BorderSide.strokeAlignInside,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
      child: Text(
        'Create Account',
        style: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}

Widget getAddStory(
  BuildContext context,
) {
  return Stack(
    children: [
      Container(
        width: getMediaQueryWidth(0.3, context),
        height: getMediaQueryHeight(0.23, context),
        decoration: const BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            ClipRect(
              child: Align(
                heightFactor: 0.9,
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/messiworldcup.jpeg',
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        left: 0,
        right: 0,
        bottom: getMediaQueryHeight(0.01, context),
        child: Text(
          'Create a\nStory',
          style: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
      Positioned(
        bottom: getMediaQueryHeight(0.05, context),
        left: 0,
        right: 0,
        child: CircleAvatar(
          radius: 14,
          backgroundColor: const Color(0xffFFFFFF),
          child: SvgPicture.asset('assets/addstory.svg'),
        ),
      ),
    ],
  );
}

Widget getStory(BuildContext context, String mainImage, String secondaryImage) {
  return Stack(
    children: [
      Container(
        width: getMediaQueryWidth(0.3, context),
        height: getMediaQueryHeight(0.23, context),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image.asset(
          mainImage,
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        top: getMediaQueryHeight(0.01, context),
        left: getMediaQueryWidth(0.01, context),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xff1877F2),
            ),
          ),
          child: ClipOval(
            child: Image.asset(
              secondaryImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget getPost(
  BuildContext context,
  String profile,
  String image,
) {
  return SizedBox(
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: getMediaQueryHeight(0.035, context),
                    backgroundImage: AssetImage(profile),
                  ),
                  SizedBox(
                    width: getMediaQueryWidth(0.02, context),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Route',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff242527),
                        ),
                      ),
                      SizedBox(
                        height: getMediaQueryHeight(0.012, context),
                      ),
                      Row(
                        children: [
                          Text(
                            '8h .',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff898F9C),
                            ),
                          ),
                          SvgPicture.asset('assets/earth.svg'),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SvgPicture.asset(
                'assets/menu.svg',
              ),
            ],
          ),
        ),
        Image.asset(image),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Wrap(
                    spacing: getMediaQueryWidth(0.02, context),
                    children: [
                      SvgPicture.asset('assets/heart.svg'),
                      SvgPicture.asset('assets/chatdots.svg'),
                      SvgPicture.asset('assets/paperplane.svg'),
                    ],
                  )
                ],
              ),
              SvgPicture.asset('assets/bookmark.svg'),
            ],
          ),
        ),
        const Divider(
          color: Color(0xff000000),
          thickness: 1,
        ),
      ],
    ),
  );
}
