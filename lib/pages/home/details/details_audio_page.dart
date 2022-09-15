import 'package:cloud_storage/pages/home/details/details_audio_state.dart';
import 'package:cloud_storage/resource/strings.dart';
import 'package:cloud_storage/utils/utils.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:cloud_storage/widget/v_widgets.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:cloud_storage/utils/ShConstant.dart';
import 'package:provider/provider.dart';

class DetailsAudioPage extends StatefulWidget {
  String id;
  static const String ROUTE = 'details_audio_page';

  DetailsAudioPage({
    required this.id,
  });

  @override
  DetailsAudioPageState createState() => DetailsAudioPageState();
}

class DetailsAudioPageState extends State<DetailsAudioPage> {
  late DetailsAudioState state;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return ChangeNotifierProvider(
      create: (_) => DetailsAudioState(
        context: context,
        id: widget.id,
      ),
      child: Consumer(
        builder: (BuildContext context, DetailsAudioState state, _) {
          this.state = state;

          return DefaultTabController(
            length: 2,
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
          SingleChildScrollView(child: buildDetailsOverview(context)),
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
          Tab(text: 'OVERVIEW'),
          Tab(text: 'TRACKS'),
        ],
        indicatorColor: Theme.of(context).colorScheme.primary,
        unselectedLabelColor: Colors.black,
        labelColor: Colors.black,
      ),
    );
  }

  Widget buildDetailsOverview(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 20, right: 16),
      child: Column(
        children: <Widget>[
          buildItemOverview(
            context: context,
            title: 'Title version',
            nama: state.audioRes?.titleVersion ?? '-',
          ),
          8.height,
          buildItemOverview(
            context: context,
            title: 'UPC',
            nama: state.audioRes?.upc.toString() ?? '-',
          ),
          8.height,
          buildItemOverview(
            context: context,
            title: 'Label name',
            nama: state.audioRes?.labelName ?? '-',
          ),
          8.height,
          buildItemOverview(
            context: context,
            title: '(P)',
            nama: state.audioRes?.pCopyright ?? '-',
          ),
          8.height,
          buildItemOverview(
            context: context,
            title: '(C)',
            nama: state.audioRes?.cCopyright ?? '-',
          ),
          8.height,
          buildItemOverview(
            context: context,
            title: 'Release date',
            nama: state.audioRes?.released ?? '-',
          ),
          8.height,
          buildItemOverview(
            context: context,
            title: 'Genre',
            nama:
                '${state.audioRes?.genre1?.name ?? '-'},${state.audioRes?.genre2?.name ?? '-'}',
          ),
          8.height,
          buildItemOverview(
            context: context,
            title: 'Language',
            nama: state.audioRes?.langId?.name ?? '-',
          ),
        ],
      ),
    );
  }

  Widget buildItemOverview({
    required BuildContext context,
    required String title,
    required String nama,
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
          child: Container(
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
          ),
        )
      ],
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
                            List<String> audioListName =
                                state.audioRes?.trackId?.cover.split('/') ?? [];
                            String audioName = audioListName.last;

                            String audio =
                                state.audioRes?.trackId?.cover.replaceAll(
                                      'public',
                                      'storage',
                                    ) ??
                                    '';
                            String urlAudio = APP_URL + audio;

                            await state.downloadFile(
                              urlAudio: urlAudio,
                              audioName: audioName,
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
            nama: state.audioRes?.trackId?.trackTitle ?? '-',
            isAudioItem: false,
          ),
          8.height,
          buildItemTracks(
            context: context,
            title: 'Artist',
            nama: state.audioRes?.trackId?.artisName ?? '-',
            isAudioItem: false,
          ),
          8.height,
          buildItemTracks(
            context: context,
            title: 'ISRC',
            nama: state.audioRes?.trackId?.isrc?.toString() ?? '-',
            isAudioItem: false,
          ),
          8.height,
          buildItemTracks(
            context: context,
            title: 'Audio',
            nama: state.audioRes?.trackId?.cover ?? '',
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
            title: 'Release',
            name: state.audioRes?.released ?? '-',
          ),
          8.height,
          buildItemGeneral(
            title: 'By',
            name:
                '${state.audioRes?.user?.firstName ?? '-'} ${state.audioRes?.user?.lastName ?? '-'}',
          ),
          8.height,
          buildItemGeneral(
            title: 'Added on',
            name: Utils.dateToString(
              DateTime.parse(state.audioRes?.trackId?.createdAt ?? ''),
              Utils.DISPLAY_DATE_FORMAT2,
            ),
          ),
          8.height,
          buildItemGeneral(
            title: 'UPC',
            name: state.audioRes?.upc.toString() ?? '-',
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
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Image.asset(
        "images/shophop/ic_walk.jpeg",
        width: width,
        height: width * 1.05,
        fit: BoxFit.cover,
      ),
    );
  }
}
