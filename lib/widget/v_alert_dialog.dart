import 'package:flutter/material.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:cloud_storage/widget/v_widgets.dart';

class VDefaultAlertDialog extends StatelessWidget {
  final void Function()? onPressed;
  String title, description;
  BuildContext context;

  VDefaultAlertDialog(this.context, this.title, this.description,
      {this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
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
              color: CPScaffoldDarkColor,
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
              color: CPBorderText,
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
                // width: double.infinity,
                child: VCustomBox(
                    // onTap: () {
                    //   print("OKE TUTUP !");
                    //   callback(true);
                    // },
                    onTap: onPressed ?? () => Navigator.pop(context),
                    label: "Oke",
                    radius: 12,
                    color: CPContainerBgColor,
                    fontColor: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w700,
                    borderColor: Theme.of(context).colorScheme.primary,
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
