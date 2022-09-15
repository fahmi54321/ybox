import 'package:flutter/material.dart';

Future popUpCustom({
  required BuildContext context,
  required Widget widget,
}) async {
  await showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(16.0), topLeft: Radius.circular(16.0)),
    ),
    backgroundColor: Theme.of(context).colorScheme.onPrimary,
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Container(
        constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.25,
            maxHeight: MediaQuery.of(context).size.height * 0.75),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: widget,
        ),
      );
    },
  );
}
