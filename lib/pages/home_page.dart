import 'package:app_flare/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:rive/rive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  RiveAnimationController _controller = SimpleAnimation('Iddle');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AppFlare"),
          centerTitle: true,
        ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: RiveAnimation.asset('assets/dog.riv',
          animations: ['Iddle'],
          controllers: [_controller],),
        ),
      ),
      );
  }
}
