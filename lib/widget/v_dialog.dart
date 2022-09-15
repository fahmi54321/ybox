import 'package:flutter/material.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/widget/v_alert_dialog.dart';
import 'package:get/get.dart' as get_package;

class VDialog {
  static showDefaultDialog(BuildContext context,
      {required String title, required String message, onPressed}) {
    get_package.Get.defaultDialog(
        title: title,
        middleText: message,
        barrierDismissible: false,
        actions: [
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "OK",
              style: TextStyle(color: Colors.white),
            ),
            color: CPPrimaryColor,
          )
        ]);
  }

  static showDefaultAlertDialog(BuildContext context,
      {required String title, required String message, onPressed}) {
    showDialog(
        context: context,
        builder: (BuildContext context) => VDefaultAlertDialog(
              context,
              title,
              message,
              onPressed: onPressed,
            ));
  }

  static showAlertDialog(BuildContext context,
      {required String title, required String message, onPressed}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(title),
          content: new Text(message),
          actions: <Widget>[
            new FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class VDialogCustom extends StatelessWidget {
  Color backgroundColor;
  double radius;
  double paddingHorizontal;
  double paddingVertikal;
  Widget widget;

  VDialogCustom({
    Key? key,
    this.backgroundColor = Colors.white,
    this.radius = 4,
    this.paddingVertikal = 15,
    this.paddingHorizontal = 20,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: paddingVertikal, horizontal: paddingHorizontal),
        child: widget,
      ),
    );
  }
}
