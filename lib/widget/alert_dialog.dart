import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:cloud_storage/widget/v_widgets.dart';
import 'package:flutter/material.dart';

class DefaultAlertDialog extends StatelessWidget {
  final void Function()? onPressed;
  String title, description;
  BuildContext context;

  DefaultAlertDialog(this.context, this.title, this.description,
      {this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3),
      ),
      elevation: 0.0,
      backgroundColor: Colors.white,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 155,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          vText(title,
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 17,
              align: TextAlign.left),
          SizedBox(
            height: 5,
          ),
          Flexible(
            fit: FlexFit.tight,
            child: vText(
              this.description,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 16,
              align: TextAlign.left,
              overflow: TextOverflow.visible,
              maxLines: 2,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: VCustomBox(
                    onTap: onPressed ?? () => Navigator.pop(context),
                    label: "Oke",
                    radius: 12,
                    color:  Theme.of(context).colorScheme.primary,
                    fontColor: Colors.white,
                    fontWeight: FontWeight.w700,
                    borderColor:  Theme.of(context).colorScheme.primary,
                    fontSize: 12,
                    paddingHorizontal: 16,
                    paddingVertical: 8),
              ),
              // )
            ],
          )
        ],
      ),
    );
  }
}
