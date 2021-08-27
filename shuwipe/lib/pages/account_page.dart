import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:tinder_clone/data/account_json.dart';
import 'package:tinder_clone/theme/colors.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,//下の方にoverflow bottom みたいなので挿入した
        backgroundColor: grey.withOpacity(0.2),
      body: getBody(),
    );
  }

//  SingleChildScrollView({
  Widget getBody() {
    var size = MediaQuery.of(context).size;
    //A RenderFlex overflowed by 207 pixels on the bottom.エラー回避したい

    //return ClipPath(
    return ClipPath( //くりぬいている
      clipper: OvalBottomBorderClipper(),
      //
      //SingleChildScrollView(
      child: Container(
        width: size.width,
        height: size.height * 0.60,
        decoration: BoxDecoration(color: white, boxShadow: [
          BoxShadow(
            color: grey.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 10,
            // changes position of shadow
          ),
        ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 140,
                height: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        //image: AssetImage(account_json[0]['img']),
                        image: AssetImage(account_json[1]['img']),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                //account_json[0]['name'] + ", " + account_json[0]['age'],
                account_json[1]['name'] + " ( "+ account_json[1]['furi'] +" )",
                textAlign: TextAlign.center, //文字を中央揃えにする
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text(
                //account_json[0]['name'] + ", " + account_json[0]['age'],
                "\n[　プロフィール　]",
                //"\n▶　プロフィール　◀,
                textAlign: TextAlign.center, //文字を中央揃えにする
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                //account_json[0]['name'] + ", " + account_json[0]['age'],
                account_json[1]['age'] + " ( "+ account_json[1]['birth'] + " )\n" + account_json[1]['number'],
                textAlign: TextAlign.center, //文字を中央揃えにする
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Text(
                //account_json[0]['name'] + ", " + account_json[0]['age'],
                "\n[　希望職種　]",
                textAlign: TextAlign.center, //文字を中央揃えにする
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                //account_json[0]['name'] + ", " + account_json[0]['age'],
                "エンジニア職／デザイナー職",
                textAlign: TextAlign.center, //文字を中央揃えにする
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Text(
                //account_json[0]['name'] + ", " + account_json[0]['age'],
                "\n[　学歴情報　]",
                //"\n▶　プロフィール　◀,
                textAlign: TextAlign.center, //文字を中央揃えにする
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                //account_json[0]['name'] + ", " + account_json[0]['age'],
                "北陸先端科学技術大学院　知識科学系　修士課程1年　Yamanoue.Inc　ハッカソン初挑戦！",
                textAlign: TextAlign.center, //文字を中央揃えにする
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              //image: AssetImage(account_json[0]['img']),
                            image: AssetImage(account_json[2]['img']),
                            fit: BoxFit.cover)),
                        /*
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                color: grey.withOpacity(0.1),
                                spreadRadius: 10,
                                blurRadius: 15,
                                // changes position of shadow
                              ),
                            ]),
                        child: Icon(
                          Icons.settings,
                          size: 35,
                          color: grey.withOpacity(0.5),
                        ),
                        */
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "DART",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: grey.withOpacity(0.8)),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                //image: AssetImage(account_json[0]['img']),
                                  image: AssetImage(account_json[3]['img']),
                                  fit: BoxFit.cover)),
                          /*
                          child: Stack(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      colors: [primary_one, primary_two],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: grey.withOpacity(0.1),
                                        spreadRadius: 10,
                                        blurRadius: 15,
                                        // changes position of shadow
                                      ),
                                    ]),
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 45,
                                  color: white,
                                ),
                              ),
                              Positioned(
                                bottom: 8,
                                right: 0,
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: grey.withOpacity(0.1),
                                          spreadRadius: 10,
                                          blurRadius: 15,
                                          // changes position of shadow
                                        ),
                                      ]),
                                  child: Center(
                                    child: Icon(Icons.add, color: primary),
                                  ),
                                ),
                              )
                            ],
                          ),
                          */
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "PYTHON",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: grey.withOpacity(0.8)),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              //image: AssetImage(account_json[0]['img']),
                                image: AssetImage(account_json[4]['img']),
                                fit: BoxFit.cover)),
                        /*
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                color: grey.withOpacity(0.1),
                                spreadRadius: 10,
                                blurRadius: 15,
                                // changes position of shadow
                              ),
                            ]),
                        child: Icon(
                          Icons.edit,
                          size: 35,
                          color: grey.withOpacity(0.5),
                        ),
                        */
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "HTML",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: grey.withOpacity(0.8)),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
//})
