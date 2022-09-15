import 'package:cloud_storage/widget/v_text.dart';
import 'package:cloud_storage/widget/v_widgets.dart';
import 'package:flutter/material.dart';

Future<int> showPilihKategoriForm(BuildContext context) async {
  int indexs = 0;
  await showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(2.0), topLeft: Radius.circular(2.0)),
      ),
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext bc) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.close)),
                        Expanded(
                          child: Center(
                            child: vText(
                              'Pilihan lain',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    VCustomBoxWidget(
                      widget: Row(
                        children: [
                          Icon(
                            Icons.audiotrack,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          SizedBox(width: 14),
                          Expanded(
                            child:
                                vText('Ringtone', fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      radius: 15,
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontColor: Theme.of(context).colorScheme.onPrimary,
                      borderColor: Theme.of(context).colorScheme.onPrimary,
                      paddingHorizontal: 8,
                      paddingVertical: 5,
                      onTap: () {
                        setState(() {
                          indexs = 1;
                        });
                        Navigator.of(context).pop(indexs);
                      },
                    ),
                    SizedBox(height: 10),
                    VCustomBoxWidget(
                      widget: Row(
                        children: [
                          Icon(Icons.art_track, color: Colors.green),
                          SizedBox(width: 14),
                          Expanded(
                            child: vText(
                              'Tracks',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      radius: 15,
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontColor: Theme.of(context).colorScheme.onPrimary,
                      borderColor: Theme.of(context).colorScheme.onPrimary,
                      paddingHorizontal: 8,
                      paddingVertical: 5,
                      onTap: () {
                        setState(() {
                          indexs = 2;
                        });
                        Navigator.of(context).pop(indexs);
                      },
                    ),
                    SizedBox(height: 10),
                    VCustomBoxWidget(
                      widget: Row(
                        children: [
                          Icon(Icons.money, color: Colors.blue),
                          SizedBox(width: 14),
                          Expanded(
                            child: vText(
                              'Transaction',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      radius: 15,
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontColor: Theme.of(context).colorScheme.onPrimary,
                      borderColor: Theme.of(context).colorScheme.onPrimary,
                      paddingHorizontal: 8,
                      paddingVertical: 5,
                      onTap: () {
                        setState(() {
                          indexs = 3;
                        });
                        Navigator.of(context).pop(indexs);
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        });
      });

  return indexs;
}
