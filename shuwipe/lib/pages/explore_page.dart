import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:tinder_clone/data/explore_json.dart';
import 'package:tinder_clone/data/icons.dart';
import 'package:tinder_clone/theme/colors.dart';
import 'package:video_player/video_player.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

//class VideoPlayerPage extends StatefulWidget {
//  @override
//  _VideoPlayerPageState createState() => _VideoPlayerPageState();
//}

//class _VideoPlayerPageState extends State< VideoPlayerpage > {
//  late
//}

class _ExplorePageState extends State<ExplorePage>
    with TickerProviderStateMixin {

  CardController controller;
  VideoPlayerController _controller;

  List itemsTemp = [];
  int itemLength = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //ビデオ流したい
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
    _controller.initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
      //最初のフレームを描画するため初期化後に更新
      _controller.play();
      _controller.setLooping(true);
      setState(() {});
      });

    @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }

    setState(() {
      itemsTemp = explore_json;
      itemLength = explore_json.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
      bottomSheet: getBottomSheet(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 120),
      child: Container(
        height: size.height,
        child: TinderSwapCard(
          totalNum: itemLength,
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height * 0.75,
          minWidth: MediaQuery.of(context).size.width * 0.75,
          minHeight: MediaQuery.of(context).size.height * 0.6,
          cardBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: grey.withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 2),
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  /*AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    // 動画を表示
                    child: VideoPlayer(_controller),
                  ),
                  */
                 Container(
                    width: size.width,
                    height: size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(itemsTemp[index]['img']),
                          fit: BoxFit.cover),
                    ),
                  )
                  /*
                Container(
                FittedBox(
                      fit: BoxFit.cover,
                      child: SizedBox(
                        width: _controller.value.size?.width ?? 0,
                        height: _controller.value.size?.height ?? 0,
                        child: VideoPlayer(_controller),
                      ),
                    ),
            ),*/

                    //)
                   // width: size.width,
                   //height: size.height,
                    //hild: VideoPlayer(_controller),
/*
                  Container(
                    width: size.width,
                    height: size.height,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          black.withOpacity(0.25),
                          black.withOpacity(0),
                        ],
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Container(
                                width: size.width * 0.72,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          itemsTemp[index]['name'],
                                          style: TextStyle(
                                              color: white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          itemsTemp[index]['company'],
                                          style: TextStyle(
                                            color: white,
                                            fontSize: 22,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          height: 10,
                                          decoration: BoxDecoration(
                                              color: green,
                                              shape: BoxShape.circle),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Recently Active",
                                          style: TextStyle(
                                            color: white,
                                            fontSize: 16,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: List.generate(
                                          itemsTemp[index]['likes'].length,
                                          (indexLikes) {
                                        if (indexLikes == 0) {
                                          return Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: white, width: 2),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  color:
                                                      white.withOpacity(0.4)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 3,
                                                    bottom: 3,
                                                    left: 10,
                                                    right: 10),
                                                child: Text(
                                                  itemsTemp[index]['likes']
                                                      [indexLikes],
                                                  style:
                                                      TextStyle(color: white),
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: white.withOpacity(0.2)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 3,
                                                  bottom: 3,
                                                  left: 10,
                                                  right: 10),
                                              child: Text(
                                                itemsTemp[index]['likes']
                                                    [indexLikes],
                                                style: TextStyle(color: white),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: size.width * 0.2,
                                  child: Center(
                                    child: Icon(
                                      Icons.info,
                                      color: white,
                                      size: 28,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                //LIKE　ULIKEの判別をしたい
                  //if (isUserInFocus) buildLikeBadge(swipingDirection)
                 // if( align.x < 0 ) rightBudge()//左にスワイプしたらLIKEバッチを呼び出したい
                    //else if( align.x > 0 )//関数名　みぎのとき
                  //rightBudge()

               */ ],
              ),
            ),
          ),
          cardController: controller = CardController(),
          swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
            /// Get swiping card's alignment 角度によってやること変える
            if (align.x < 0)  rightBudge();//左にスワイプしたらLIKEバッチを呼び出したい
   /* {
              //Card is LEFT swiping
              //左側に傾いているとき、文字を出したい
                  child: Text(
                      'LIKE',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    );

                  /*
              Container(
                child: Padding(
                  child:
                  Text("Left/興味がない企業さん",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36))
            ),
            );*/
              //print("left");

            }*/ else if (align.x > 0) {
              //Card is RIGHT swiping
            }
            // print(itemsTemp.length);
          },
          swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
            /// Get orientation & index of swiped card!
            if (index == (itemsTemp.length - 1)) {
              setState(() {
                itemLength = itemsTemp.length - 1;
              });
            }
          },
        ),
      ),
    );
  }

  Widget rightBudge( ) {
    //final isSwipingRight = swipingDirection == SwipingDirection.right;
    //final color = isSwipingRight ? Colors.green : Colors.pink;
    final color = Colors.green;
    //final angle = isSwipingRight ? -0.5 : 0.5;

   return Positioned(
        top: 20,
        //right: align.x ? null : 20,
        //left: isSwipingRight ? 20 : null,
        child: Transform.rotate(
          //angle: angle,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: color, width: 2),
            ),
            child: Text(
              'LIKE',
              style: TextStyle(
                color: color,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
  }

  Widget getBottomSheet() {
    var size = MediaQuery.of( context ).size;
    return Container(
      width: size.width,
      height: 120,
      decoration: BoxDecoration(color: white),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(item_icons.length, (index) {
            return Container(
              width: item_icons[index]['size'],
              height: item_icons[index]['size'],
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 10,
                      // changes position of shadow
                    ),
                  ]),
              child: Center(
                child: SvgPicture.asset(
                  item_icons[index]['icon'],
                  width: item_icons[index]['icon_size'],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
