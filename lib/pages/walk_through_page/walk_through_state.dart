import 'package:cloud_storage/utils/ShImages.dart';
import 'package:flutter/material.dart';

class WalkThroughState extends ChangeNotifier {
  BuildContext context;

  List<String> listSlider = <String>[ic_walk_1, ic_walk_2, ic_walk_3];
  List<String> listTitle = <String>["Title 1", "Title 2", "Title 3"];
  List<String> listSubTitle = <String>[
    "Subtitle 1",
    "Subtitle 2",
    "Subtitle 3"
  ];
  int position = 0;

  WalkThroughState(this.context);

}
