import 'package:app_flare/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  RiveAnimationController _controller = SimpleAnimation('slowDance');

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5)).then(
        (value) => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomePage(),
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Flare',
                style: TextStyle(fontSize: 30),
              ),
              Container(
                  height: 300,
                  width: 300,
                  child: RiveAnimation.asset(
                    'assets/2063-4080-flutter-puzzle-hack-project.riv',
                    animations: ['idle', 'slowDance'],
                    controllers: [_controller],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
