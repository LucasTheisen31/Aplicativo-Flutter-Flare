
import 'package:app_flare/pages/home_page.dart';
import 'package:app_flare/pages/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Flare',
      home: Splash(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.blueGrey,
        )
      ),
    );
  }
}
