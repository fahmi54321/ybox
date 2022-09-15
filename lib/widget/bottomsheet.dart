import 'package:cloud_storage/widget/v_text.dart';
import 'package:flutter/material.dart';

Future<bool> showDialogWidget(
    {required BuildContext context,
    required Widget child,
    required String title,
    double height = 200}) async {
  await showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
      ),
      backgroundColor: Colors.white,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext bc) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Container(
            height: height,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.close)),
                      Expanded(
                          child: Center(
                              child: vText(title,
                                  fontWeight: FontWeight.w700, fontSize: 14)))
                    ],
                  ),
                  Expanded(child: child)
                ],
              ),
            ),
          );
        });
      });

  return true;
}
