import 'package:cloud_storage/pages/home/fragment/album_fragment.dart';
import 'package:cloud_storage/pages/home/fragment/audio_fragment.dart';
import 'package:cloud_storage/pages/home/fragment/home_fragment.dart';
import 'package:cloud_storage/pages/home/fragment/track_fragment.dart';
import 'package:cloud_storage/pages/home/fragment/transaction_fragment.dart';
import 'package:cloud_storage/pages/home/fragment/video_fragment.dart';
import 'package:cloud_storage/pages/home/home_state.dart';
import 'package:cloud_storage/pages/profil/profil_page.dart';
import 'package:cloud_storage/pages/upload/pop_up_pilih_form_kategori.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:flutter/material.dart';
import 'package:cloud_storage/main.dart';
import 'package:cloud_storage/utils/ShColors.dart';
import 'package:cloud_storage/utils/ShConstant.dart';
import 'package:cloud_storage/utils/ShImages.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const ROUTE = 'home_page';

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var homeFragment = HomeFragment();
  var albumFragment = AlbumFragment();
  var videoFragment = VideoFragment();
  var audioFragment = AudioFragment();
  var tracksFragment = TrackFragment();
  var transactionFragment = TransactionFragment();
  late var fragments;
  int selectedTab = 0;
  int selectedAudioFragment = 1;
  int selectedTracksFragment = 0;
  int selectedTransactionFragment = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    fragments = [
      homeFragment,
      albumFragment,
      videoFragment,
      (selectedAudioFragment == 1)
          ? audioFragment
          : (selectedTracksFragment == 1)
              ? tracksFragment
              : transactionFragment,
    ];

    var width = MediaQuery.of(context).size.width;

    return ChangeNotifierProvider(
      create: (_) => HomeState(context),
      child: Consumer(
        builder: (BuildContext context, HomeState state, _) {
          return Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: appStore.isDarkModeOn
                    ? Theme.of(context).colorScheme.onPrimary
                    : sh_textColorPrimary,
              ),
              title: vText('Home', fontSize: 22, fontWeight: FontWeight.w500),
            ),
            body: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                buildFragment(),
                buildBottomBar(width, context),
              ],
            ),
            drawer: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height,
              child: Drawer(
                elevation: 8,
                child: SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: appStore.isDarkModeOn
                        ? Colors.grey
                        : Theme.of(context).colorScheme.onPrimary,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Center(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 60, right: spacing_large),
                                  child: Column(
                                    children: <Widget>[
                                      Card(
                                        semanticContainer: true,
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        elevation: spacing_standard,
                                        margin: EdgeInsets.all(spacing_control),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0)),
                                        child: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: (state.urlImage.isEmpty)
                                              ? CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                    ic_user,
                                                  ),
                                                  radius: 55,
                                                )
                                              : CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                    state.urlImage,
                                                  ),
                                                  radius: 55,
                                                ),
                                        ),
                                      ),
                                      SizedBox(height: spacing_middle),
                                      vText(
                                        '${state.profileRes.firstName} ${state.profileRes.lastName}',
                                        color: appStore.isDarkModeOn
                                            ? Theme.of(context)
                                                .colorScheme
                                                .onPrimary
                                            : sh_textColorPrimary,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ],
                                  )),
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: spacing_standard_new, top: 30),
                                    child: Icon(Icons.clear)))
                          ],
                        ),
                        SizedBox(height: 20),
                        getDrawerItem(Icons.lock, 'Ubah Password',
                            Theme.of(context).colorScheme.primary,
                            callback: () {
                          Navigator.pushNamed(context, ProfilPage.ROUTE);
                        }),
                        getDrawerItem(Icons.logout, 'Keluar',
                            Theme.of(context).colorScheme.error, callback: () {
                          // ShSettingsScreen().launch(context);
                        }),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  buildFragment() {
    print('select tab : $selectedTab');
    return fragments[selectedTab];
  }

  Container buildBottomBar(double width, BuildContext context) {
    return Container(
      height: 58,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          Image.asset(
            bg_bottom_bar,
            width: width,
            height: double.infinity,
            fit: BoxFit.fill,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                tabItem(0, Icons.home_outlined),
                tabItem(1, Icons.image_outlined),
                tabItem(2, Icons.video_call_outlined),
                tabItem(3, Icons.list),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getDrawerItem(IconData icon, String? name, Color iconColor,
      {VoidCallback? callback}) {
    return InkWell(
      onTap: callback,
      child: Container(
        color: Theme.of(context).colorScheme.onPrimary,
        padding: EdgeInsets.fromLTRB(20, 14, 20, 14),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              size: 20,
              color: iconColor,
            ),
            SizedBox(width: 20),
            vText(
              name ?? '',
              color: appStore.isDarkModeOn
                  ? Theme.of(context).colorScheme.onPrimary
                  : sh_textColorPrimary,
            ),
          ],
        ),
      ),
    );
  }

  Widget tabItem(int pos, IconData icon) {
    return GestureDetector(
      onTap: () async {
        if (pos == 3) {
          final pilih = await showPilihKategoriForm(context);
          if (pilih == 1) {
            // fragment audio
            setState(() {
              selectedAudioFragment = 1;
              selectedTracksFragment = 0;
              selectedTransactionFragment = 0;
              selectedTab = pos;
            });
          } else if (pilih == 2) {
            // fragment tracks
            setState(() {
              selectedAudioFragment = 0;
              selectedTransactionFragment = 0;
              selectedTracksFragment = 1;
              selectedTab = pos;
            });
          } else if (pilih == 3) {
            // fragment tracks
            setState(() {
              selectedAudioFragment = 0;
              selectedTracksFragment = 0;
              selectedTransactionFragment = 1;
              selectedTab = pos;
            });
          }
        } else {
          selectedTab = pos;
          setState(() {});
        }
      },
      child: Container(
        width: 50,
        height: 50,
        alignment: Alignment.center,
        decoration: selectedTab == pos
            ? BoxDecoration(
                shape: BoxShape.circle, color: sh_colorPrimary.withOpacity(0.2))
            : BoxDecoration(),
        child: Icon(
          icon,
          size: 30,
          color: selectedTab == pos ? sh_colorPrimary : sh_textColorSecondary,
        ),
      ),
    );
  }
}
