import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tinder_clone/data/explore_json.dart';
import 'package:tinder_clone/pages/account_page.dart';
import 'package:tinder_clone/pages/chat_page.dart';
import 'package:tinder_clone/pages/explore_page.dart';
import 'package:tinder_clone/pages/likes_page.dart';
import 'package:tinder_clone/theme/colors.dart';

import 'account_page.dart';
//import 'package:video_player/video_player.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int pageIndex = 0;
  //VideoPlayerController _controller;

  /*@override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }*/

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [ExplorePage(), LikesPage(), ChatPage(), AccountPage()],
    );
  }

  Widget getAppBar() {

    List appTopLogo = [];
    appTopLogo = explore_json;

    //itemLength = 10;
    List bottomItems = [
      pageIndex == 0
          ? "assets/images/logo/shu_c.svg"
          : "assets/images/logo/shu_g.svg",
      pageIndex == 1
          ? "assets/images/logo/good_c.svg"
          : "assets/images/logo/good_g.svg",
      pageIndex == 2
          ? "assets/images/logo/chat_c.svg"
          : "assets/images/logo/chat_g.svg",
      pageIndex == 3
          ? "assets/images/logo/profile_c.svg"
          : "assets/images/logo/profile_g.svg",
    ];
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          /*
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /*
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  color: green,
                  shape: BoxShape.circle),
            ),
            */

            SizedBox(
              width: 10,
            ),
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(assets/images/logo/profile_g.svg),
                    fit: BoxFit.cover),
              ),
            ),
            Icon(
                Icons.undo,
                size: 100 // アイコンの大きさを設定できる
            ),
            Text(
              "この企業に興味あり！",
              style: TextStyle(
                color: black,
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: 200,
            ),
            Text(
              "この企業は興味ないかなあ",
              style: TextStyle(
                color: black,
                fontSize: 16,
              ),
            ),
            Icon(
                Icons.redo,
                size: 100 // アイコンの大きさを設定できる
            ),

          ],
*/

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = index;
                });
              },
              icon: SvgPicture.asset(
                bottomItems[index],
              ),
            );
          }),

        ),
      ),
    );
  }
}
