import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/root_app.dart';

//downloadしてから書いてあったやつ
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RootPage(),
  ));
}

/*
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
//class RootPage extends StatelessWidget{
  @override
  Widget build( BuildContext context ){
    return MaterialApp{
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyhomePage(title: 'FlutterD Demo Home Page'),
    }
  }
}
*/