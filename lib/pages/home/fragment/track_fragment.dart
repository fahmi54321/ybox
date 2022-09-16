import 'package:cloud_storage/models/track/track_res.dart';
import 'package:cloud_storage/pages/form/track_form_page.dart';
import 'package:cloud_storage/pages/home/details/details_track_page.dart';
import 'package:cloud_storage/pages/home/fragment/track_fragment_state.dart';
import 'package:cloud_storage/pages/listener_navigation.dart';
import 'package:cloud_storage/resource/strings.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:flutter/material.dart';
import 'package:cloud_storage/main.dart';
import 'package:cloud_storage/utils/ShColors.dart';
import 'package:cloud_storage/utils/ShConstant.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class TrackFragment extends StatefulWidget {
  @override
  TrackFragmentState createState() => TrackFragmentState();
}

class TrackFragmentState extends State<TrackFragment> {
  late TracksFragmentStates state;

  void isKeluarPage({
    required bool isDidPushNext,
    required bool isDidPop,
    required bool isDidPopNext,
  }) {
    print(
        'Nav isDidPushNext : $isDidPushNext , isDidPop : $isDidPop, isDidPopNext : $isDidPopNext');

    if (isDidPopNext == true) {
      state.pullRefresh();
    }
  }

  void isMasukPage({
    required bool isDidPush,
  }) {
    print('Nav isDidPush : $isDidPush');
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var width = MediaQuery.of(context).size.width;

    return ChangeNotifierProvider(
      create: (_) => TracksFragmentStates(context: context),
      child: Consumer(
        builder: (BuildContext context, TracksFragmentStates state, _) {
          this.state = state;

          return ListenerNavigation(
            onKeluarPage: isKeluarPage,
            onMasukPage: isMasukPage,
            routeName: 'TrackFragment',
            child: Scaffold(
              body: RefreshIndicator(
                onRefresh: state.pullRefresh,
                child: PagedListView(
                  padding: EdgeInsets.only(bottom: spacing_xxxLarge),
                  pagingController: state.pagingController,
                  builderDelegate: PagedChildBuilderDelegate<DataTrackRes>(
                      itemBuilder: (context, item, index) {
                    String image = item.image.replaceAll('public', 'storage');
                    String urlImage = '${APP_URL + image}';

                    return Container(
                      color: theme.colorScheme.onPrimary,
                      margin: EdgeInsets.only(
                          left: spacing_standard_new,
                          right: spacing_standard_new,
                          top: spacing_standard_new),
                      child: IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              width: width * 0.32,
                              height: width * 0.37,
                              padding: EdgeInsets.all(10),
                              child: Image.network(
                                urlImage,
                                fit: BoxFit.cover,
                                errorBuilder: (
                                  BuildContext context,
                                  Object exception,
                                  StackTrace? stackTrace,
                                ) {
                                  return SizedBox(
                                    width: width * 0.32,
                                    height: width * 0.37,
                                    child: Icon(
                                      Icons.broken_image,
                                      size: 80,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withOpacity(0.5),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                        context,
                                        DetailsTrackPage.ROUTE,
                                        arguments: item.id.toString(),
                                      );
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 8),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16),
                                          child: vText(
                                            'Track name',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16.0),
                                          child: vText(
                                            (item.trackTitle.isEmpty)
                                                ? '-'
                                                : item.trackTitle,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16),
                                          child: vText(
                                            'Artist name',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16.0),
                                          child: vText(
                                            (item.artisName.isEmpty)
                                                ? '-'
                                                : item?.artisName ?? '-',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Divider(
                                    height: 1,
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            if (item.isCheck == 1) {
                                              state.showFlushBar([
                                                'Data sudah di approved',
                                                'Tidak bisa melakukan edit data',
                                              ]);
                                            } else {
                                              Navigator.pushNamed(
                                                context,
                                                TrackFormPage.ROUTE,
                                                arguments: ArgsTrackFormPage(
                                                  dataTrackRes: item,
                                                ),
                                              );
                                            }
                                          },
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.edit,
                                                color: appStore.isDarkModeOn
                                                    ? Colors.grey
                                                    : sh_textColorPrimary,
                                                size: 16,
                                              ),
                                              SizedBox(width: 4),
                                              vText('Edit',
                                                  fontWeight: FontWeight.w500,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                          ),
                                        ),
                                      ),
                                      Container(
                                          width: 1,
                                          color: sh_view_color,
                                          height: 35),
                                      Expanded(
                                        child: Row(
                                          children: [
                                            state.getIconStatus(item.isCheck),
                                            SizedBox(width: 4),
                                            vText(
                                              state.getTextStatus(item.isCheck),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              floatingActionButton: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: FloatingActionButton.small(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      TrackFormPage.ROUTE,
                      arguments: ArgsTrackFormPage(),
                    );
                  },
                  backgroundColor: sh_colorPrimary,
                  child: Icon(
                    Icons.add,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
