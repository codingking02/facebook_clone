import 'package:facebook_clone/widgets/posts.dart';
import 'package:facebook_clone/widgets/stories.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          title: SvgPicture.asset('assets/facebook.svg'),
          actions: [
            SvgPicture.asset('assets/plus.svg'),
            SizedBox(
              width: getMediaQueryWidth(0.02, context),
            ),
            SvgPicture.asset('assets/search.svg'),
            SizedBox(
              width: getMediaQueryWidth(0.02, context),
            ),
            SvgPicture.asset('assets/messenger.svg'),
            SizedBox(
              width: getMediaQueryWidth(0.02, context),
            ),
          ],
          bottom: TabBar(
            tabs: [
              SvgPicture.asset('assets/home.svg'),
              SvgPicture.asset('assets/watch.svg'),
              SvgPicture.asset('assets/store.svg'),
              SvgPicture.asset('assets/profile.svg'),
              SvgPicture.asset('assets/notification.svg'),
              Image.asset('assets/messiavatar.jpg'),
            ],
            labelPadding: EdgeInsets.symmetric(
              vertical: getMediaQueryHeight(0.01, context),
            ),
            dividerColor: const Color(0xff898F9C),
            dividerHeight: 1,
            indicatorColor: const Color(0xff1877F2),
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: getMediaQueryWidth(0.025, context),
                vertical: getMediaQueryHeight(0.025, context),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: getMediaQueryHeight(0.03, context),
                    backgroundImage:
                        const AssetImage('assets/messiworldcup.jpg'),
                  ),
                  SizedBox(
                    width: getMediaQueryWidth(0.02, context),
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: const Color(0xff898F9C),
                      decoration: InputDecoration(
                        hintText: 'What’s in Your Mind?',
                        hintStyle: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff898F9C),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: getMediaQueryWidth(0.02, context),
                    ),
                    child: SvgPicture.asset(
                      'assets/photos.svg',
                      width: getMediaQueryWidth(0.07, context),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 2,
              color: Color(0xff898F9C),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: getMediaQueryHeight(0.23, context),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: getMediaQueryWidth(0.03, context),
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: stories.length + 1,
                itemBuilder: (context, index) {
                  return index == 0
                      ? getAddStory(
                          context,
                        )
                      : getStory(
                          context,
                          stories[index - 1].mainImage,
                          stories[index - 1].secondoaryImage,
                        );
                },
              ),
            ),
            const Divider(
              thickness: 2,
              color: Color(0xff898F9C),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return getPost(
                    context,
                    posts[index].profile,
                    posts[index].image,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//reduced image height 
//managed to make a border around an image 
//managed index of stories 