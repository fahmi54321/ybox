import 'dart:async';

import 'package:cloud_storage/main.dart';
import 'package:flutter/material.dart';
import 'package:cloud_storage/utils/ShWidget.dart';


class SplashPage extends StatefulWidget {
  static String tag = '/ShophopSplash';
  static const ROUTE = 'splash_page';

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    changeStatusColor(Colors.transparent);
    startTime();
  }

  startTime() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushNamedAndRemoveUntil(context, CekPage.ROUTE, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Image.asset(
        'images/splash.jpg',
        width: width,
        height: height,
        fit: BoxFit.fill,
      ),
    );
  }
}
