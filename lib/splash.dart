import 'dart:async';
import 'package:flutter/material.dart';
import 'package:spotify/mainscreen.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds:2), () {
     Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) =>const Mainscreen() ));

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset("assets/images/SplashscreenMain.jpg",fit: BoxFit.cover,),
      ),
    );
  }
}
