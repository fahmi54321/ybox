import 'package:cloud_storage/pages/home/details/details_audio_state.dart';
import 'package:cloud_storage/pages/home/details/details_track_state.dart';
import 'package:cloud_storage/resource/strings.dart';
import 'package:cloud_storage/utils/utils.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:cloud_storage/widget/v_widgets.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:cloud_storage/utils/ShConstant.dart';
import 'package:provider/provider.dart';

class DetailsTrackPage extends StatefulWidget {
  String id;
  static const String ROUTE = 'details_track_page';

  DetailsTrackPage({
    required this.id,
  });

  @override
  DetailsTrackPageState createState() => DetailsTrackPageState();
}

class DetailsTrackPageState extends State<DetailsTrackPage> {
  late DetailsTracksState state;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return ChangeNotifierProvider(
      create: (_) => DetailsTracksState(
        context: context,
        id: widget.id,
      ),
      child: Consumer(
        builder: (BuildContext context, DetailsTracksState state, _) {
          this.state = state;

          return DefaultTabController(
            length: 1,
            child: Scaffold(
              body: (state.isLoading == true)
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      children: [
                        buildImageCover(width),
                        buildDetailsGeneral(),
                        buildTabbar(context),
                        buildTabbarView(),
                      ],
                    ),
            ),
          );
        },
      ),
    );
  }

  Widget buildTabbarView() {
    return Expanded(
      child: TabBarView(
        // controller: state.tabController,
        children: [
          SingleChildScrollView(child: buildDetailsTracks(context)),
        ],
      ),
    );
  }

  Widget buildTabbar(BuildContext context) {
    return Material(
      elevation: 2.0,
      child: TabBar(
        // controller: state.tabController,
        // tabs: state.myTabs,
        tabs: [
          Tab(text: 'TRACKS'),
        ],
        indicatorColor: Theme.of(context).colorScheme.primary,
        unselectedLabelColor: Colors.black,
        labelColor: Colors.black,
      ),
    );
  }

  Widget buildItemTracks({
    required BuildContext context,
    required String title,
    required String nama,
    required bool isAudioItem,
  }) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(
              top: spacing_control,
              bottom: spacing_control,
            ),
            color: context.cardColor,
            child: vText(
              title,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          child: isAudioItem == false
              ? Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    top: spacing_control,
                    bottom: spacing_control,
                    left: spacing_large,
                  ),
                  color: context.cardColor,
                  child: vText(
                    nama,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: VButtonRectangle(
                    (state.isLoadingButton == true)
                        ? 'Loading...'
                        : 'Download file',
                    width: MediaQuery.of(context).size.width,
                    onTap: (state.isLoadingButton == true)
                        ? null
                        : () async {
                            List<String> trackListName =
                                state.trackRes?.cover.split('/') ?? [];
                            String trackName = trackListName.last;

                            String track = state.trackRes?.cover.replaceAll(
                                  'public',
                                  'storage',
                                ) ??
                                '';
                            String urlAudio = APP_URL + track;

                            await state.downloadFile(
                              urlTrack: urlAudio,
                              trackName: trackName,
                            );
                          },
                    trailing: (state.isLoadingButton == true)
                        ? SizedBox(
                            height: 15,
                            width: 15,
                            child: CircularProgressIndicator(),
                          )
                        : null,
                  ),
                ),
        )
      ],
    );
  }

  Widget buildDetailsTracks(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 20, right: 16),
      child: Column(
        children: <Widget>[
          buildItemTracks(
            context: context,
            title: 'Tracks name',
            nama: state.trackRes?.trackTitle ?? '-',
            isAudioItem: false,
          ),
          8.height,
          buildItemTracks(
            context: context,
            title: 'Artist',
            nama: state.trackRes?.artisName ?? '-',
            isAudioItem: false,
          ),
          8.height,
          buildItemTracks(
            context: context,
            title: 'ISRC',
            nama: state.trackRes?.isrc?.toString() ?? '-',
            isAudioItem: false,
          ),
          8.height,
          buildItemTracks(
            context: context,
            title: 'Audio',
            nama: state.trackRes?.cover ?? '',
            isAudioItem: true,
          ),
        ],
      ),
    );
  }

  Widget buildDetailsGeneral() {
    return Padding(
      padding: EdgeInsets.all(14),
      child: Column(
        children: [
          buildItemGeneral(
            title: 'By',
            name:
                '${state.trackRes?.user?.firstName ?? '-'} ${state.trackRes?.user?.lastName ?? '-'}',
          ),
          8.height,
        ],
      ),
    );
  }

  Widget buildItemGeneral({required String title, required String name}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        vText(title, fontSize: 14, fontWeight: FontWeight.w700),
        vText(name,
            color: Theme.of(context).colorScheme.primary,
            fontSize: 12,
            maxLines: 1)
      ],
    );
  }

  Widget buildImageCover(double width) {
    return state.buildCoverImage(
      urlImages: state.trackRes?.image??'',
      width: width,
    );
  }
}
