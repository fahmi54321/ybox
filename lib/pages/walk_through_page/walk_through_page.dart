import 'package:cloud_storage/pages/login/login_page.dart';
import 'package:cloud_storage/pages/walk_through_page/walk_through_state.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:flutter/material.dart';
import 'package:cloud_storage/utils/ShColors.dart';
import 'package:cloud_storage/utils/ShConstant.dart';
import 'package:cloud_storage/utils/ShStrings.dart';
import 'package:cloud_storage/utils/dots_indicator/src/dots_decorator.dart';
import 'package:cloud_storage/utils/dots_indicator/src/dots_indicator.dart';
import 'package:cloud_storage/utils/widgets/ShSliderWidget.dart';
import 'package:provider/provider.dart';

class WalkThrougPage extends StatefulWidget {
  static const ROUTE = 'walk_throug_page';

  @override
  _WalkThrougPageState createState() => _WalkThrougPageState();
}

class _WalkThrougPageState extends State<WalkThrougPage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    width = width - 50;
    return ChangeNotifierProvider(
      create: (_) => WalkThroughState(context),
      child: Consumer(
        builder: (BuildContext context, WalkThroughState state, _) {
          return Scaffold(
            body: Container(
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(height: 24),
                    buildHeading(state),
                    buildSlider(context, state, width),
                    buildFooter(state),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildFooter(WalkThroughState state) {
    return Padding(
      padding: const EdgeInsets.all(spacing_large),
      child: Column(
        children: <Widget>[
          buildIndicator(state),
          SizedBox(height: 16),
          buildTombol(),
          SizedBox(height: 16),
          buildTextSign(),
        ],
      ),
    );
  }

  Widget buildTextSign() {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, LoginPage.ROUTE);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          vText(sh_lbl_already_have_a_account, color: Colors.grey),
          vText(
            sh_lbl_sign_in,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }

  Widget buildTombol() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: MaterialButton(
        padding: EdgeInsets.all(spacing_standard),
        child: Text(sh_text_start_to_shopping, style: TextStyle(fontSize: 18)),
        textColor: sh_white,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(40.0)),
        color: sh_colorPrimary,
        onPressed: () {
          // finish(context);
          // ShHomeScreen().launch(context);
        },
      ),
    );
  }

  DotsIndicator buildIndicator(WalkThroughState state) {
    return DotsIndicator(
      dotsCount: 3,
      position: state.position,
      decorator: DotsDecorator(
        color: sh_view_color,
        activeColor: sh_colorPrimary,
        activeSize: Size.square(14.0),
        spacing: EdgeInsets.all(spacing_control),
      ),
    );
  }

  ShCarouselSlider buildSlider(
      BuildContext context, WalkThroughState state, double width) {
    return ShCarouselSlider(
      viewportFraction: 0.8,
      height: MediaQuery.of(context).size.height * 0.5,
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
      items: state.listSlider.map(
        (slider) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: width * 0.9,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular(spacing_standard))),
                margin: EdgeInsets.all(spacing_standard_new),
                child: Center(
                  child: Image.asset(
                    slider,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        },
      ).toList(),
      onPageChanged: (index) {
        state.position = index;
        state.notifyListeners();
      },
    );
  }

  Widget buildHeading(WalkThroughState state) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        spacing_large,
        spacing_large,
        spacing_large,
        spacing_standard_new,
      ),
      child: Column(
        children: <Widget>[
          buildTitle(state),
          SizedBox(height: 16),
          buildSubtitle(state),
        ],
      ),
    );
  }

  Widget buildSubtitle(WalkThroughState state) {
    return vText(
      'Subtitle',
      maxLines: 3,
      align: TextAlign.center,
      fontSize: 16,
    );
  }

  Widget buildTitle(WalkThroughState state) {
    return vText(
      'Title',
      fontWeight: FontWeight.bold,
      fontSize: 24,
    );
  }
}
