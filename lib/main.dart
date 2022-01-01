import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_store_app/screens/homepage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent,),);
    return MaterialApp(
      title: "Game App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
