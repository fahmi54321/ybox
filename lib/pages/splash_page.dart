import 'dart:async';

import 'package:cloud_storage/pages/walk_through_page/walk_through_page.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:flutter/material.dart';
import 'package:cloud_storage/utils/ShColors.dart';
import 'package:cloud_storage/utils/ShImages.dart';
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
    Navigator.pushNamedAndRemoveUntil(context, WalkThrougPage.ROUTE, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width + width * 0.4,
        child: Stack(
          children: <Widget>[
            Image.asset(
              splash_bg,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: -width * 0.2,
              left: -width * 0.2,
              child: Container(
                width: width * 0.65,
                height: width * 0.65,
                decoration: BoxDecoration(shape: BoxShape.circle, color: sh_colorPrimary.withOpacity(0.3)),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(ic_app_icon, width: width * 0.3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      vText('Cloud',fontSize: 30,fontWeight: FontWeight.bold,color: sh_textColorPrimary),
                      vText('storage',fontSize: 30,fontWeight: FontWeight.bold,color: sh_colorPrimary),
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: -width * 0.2,
                    right: -width * 0.2,
                    child: Container(
                      width: width * 0.65,
                      height: width * 0.65,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: sh_colorPrimary.withOpacity(0.3)),
                    ),
                  ),
                ],
              ),
            ),
            Align(alignment: Alignment.bottomRight, child: Image.asset(splash_img, width: width * 0.5, height: width * 0.5))
          ],
        ),
      ),
    );
  }
}
