import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/widget/v_pop_up.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:cloud_storage/widget/v_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

Future<int> showContributors(BuildContext context) async {
  int indexs = 0;

  await popUpCustom(
    context: context,
    widget: StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vText(
                "Contributor 1",
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: 16),
              ExpandableNotifier(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.only(left: 4, right: 4, bottom: 4, top: 16),
                  decoration: boxDecorationWithShadow(
                      borderRadius: BorderRadius.circular(5),
                      backgroundColor: context.cardColor),
                  child: ScrollOnExpand(
                    child: ExpandablePanel(
                      theme: ExpandableThemeData(
                        expandIcon: Icons.arrow_drop_down,
                        collapseIcon: Icons.arrow_drop_up,
                        tapBodyToCollapse: false,
                        tapBodyToExpand: false,
                      ),
                      header: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Table(
                            columnWidths: const {
                              0: FractionColumnWidth(0.20),
                              1: FractionColumnWidth(0.40),
                              2: FractionColumnWidth(0.40),
                            },
                            children: [
                              TableRow(
                                children: [
                                  TableCell(
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: CPPrimaryColor,
                                      child: Icon(
                                        Icons.close,
                                        size: 10,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Column(
                                      children: [
                                        vText('Test'),
                                      ],
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Column(
                                      children: [
                                        vText('100 %'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      collapsed: Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, bottom: 4),
                        child: vText(
                          'Show more',
                          fontSize: 14,
                          maxLines: 1,
                          color: CPPrimaryColor,
                        ),
                      ),
                      expanded: buildFormContributor(),
                      builder: (_, collapsed, expanded) => Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        );
      },
    ),
  );

  return indexs;
}

Widget buildFormContributor() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        vText(
          'Contributor name',
          fontWeight: FontWeight.w500,
        ),
        VCustomBoxWidget(
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              vText('Test', fontSize: 12),
              Icon(Icons.keyboard_arrow_down, color: CPPrimaryColor),
            ],
          ),
          radius: 8,
          color: CPPrimaryColor.withOpacity(0.04),
          fontColor: Colors.black,
          paddingHorizontal: 15,
          paddingVertical: 15,
          borderColor: CPPrimaryColor.withOpacity(0.1),
        ),
        SizedBox(height: 8),
        vText(
          'Role',
          fontWeight: FontWeight.w500,
        ),
        VCustomBoxWidget(
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              vText('Test', fontSize: 12),
              Icon(Icons.keyboard_arrow_down, color: CPPrimaryColor),
            ],
          ),
          radius: 8,
          color: CPPrimaryColor.withOpacity(0.04),
          fontColor: Colors.black,
          paddingHorizontal: 15,
          paddingVertical: 15,
          borderColor: CPPrimaryColor.withOpacity(0.1),
        ),
        SizedBox(height: 8),
        vText(
          'Share',
          fontWeight: FontWeight.w500,
        ),
        VCustomBoxWidget(
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              vText('100', fontSize: 12),
              Icon(Icons.keyboard_arrow_down, color: CPPrimaryColor),
            ],
          ),
          radius: 8,
          color: CPPrimaryColor.withOpacity(0.04),
          fontColor: Colors.black,
          paddingHorizontal: 15,
          paddingVertical: 15,
          borderColor: CPPrimaryColor.withOpacity(0.1),
        ),
        SizedBox(height: 8),
        vText(
          'Publishing',
          fontWeight: FontWeight.w500,
        ),
        VCustomBoxWidget(
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              vText('Test', fontSize: 12),
              Icon(Icons.keyboard_arrow_down, color: CPPrimaryColor),
            ],
          ),
          radius: 8,
          color: CPPrimaryColor.withOpacity(0.04),
          fontColor: Colors.black,
          paddingHorizontal: 15,
          paddingVertical: 15,
          borderColor: CPPrimaryColor.withOpacity(0.1),
        ),
        SizedBox(height: 8),
      ],
    ),
  );
}
