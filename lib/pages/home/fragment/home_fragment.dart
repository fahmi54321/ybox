import 'package:cloud_storage/main.dart';
import 'package:cloud_storage/pages/home/fragment/WAColors.dart';
import 'package:cloud_storage/pages/home/fragment/grafik.dart';
import 'package:cloud_storage/pages/home/fragment/home_fragment_state.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

class HomeFragment extends StatefulWidget {
  static String tag = '/HomeFragment';

  @override
  HomeFragmentState createState() => HomeFragmentState();
}

class HomeFragmentState extends State<HomeFragment> {
  late HomeFragmentStates state;
  int touchedGroupIndex = -1;

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeFragmentStates(context),
      child: Consumer(
        builder: (BuildContext context, HomeFragmentStates state, _) {
          this.state = state;
          return SafeArea(
            child: Scaffold(
              body: Container(
                padding: EdgeInsets.only(top: 10, bottom: 50),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //titile
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: buildTitleHome(
                                    total: state.jmlAlbum.toString(),
                                    nama: "Album",
                                    icon: Icons.photo_album_sharp,
                                    isLoading: state.isLoadingJmlAlbum,
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: buildTitleHome(
                                    total: state.jmlVideo.toString(),
                                    nama: "Video",
                                    icon: Icons.video_call,
                                    isLoading: state.isLoadingJmlVideo,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Expanded(
                                  child: buildTitleHome(
                                    total: state.jmlAudio.toString(),
                                    nama: "Ringtone",
                                    icon: Icons.audiotrack,
                                    isLoading: state.isLoadingJmlAudio,
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: buildTitleHome(
                                    total: state.jmlTrack.toString(),
                                    nama: "Track",
                                    icon: Icons.art_track,
                                    isLoading: state.isLoadingJmlTrack,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Expanded(
                                  child: buildTitleHome(
                                    total: state.getAmount.jmlAmount.toString(),
                                    nama: "Amount balance",
                                    icon: Icons.money,
                                    isLoading: state.getAmount.isLoadingJmlAmount,
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: buildTitleHome(
                                    total: state.jmlSetup.toString(),
                                    nama: "Progress",
                                    icon: (state.jmlSetup < 100) ? Icons.report_gmailerrorred_rounded : Icons.done_outline_outlined,
                                    isLoading: state.isLoadingJmlSetup,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      //filter
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            vText(
                              'Grafik',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: DropdownButtonFormField(
                                    value: state.periodeList[0],
                                    isExpanded: true,
                                    decoration: waInputDecoration(
                                        bgColor: Colors.white,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8)),
                                    items: state.periodeList.map((String? value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: vText(
                                          value ?? '-',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        state.selectPeriode = value.toString();
                                      });

                                      print('periode : ${state.selectPeriode}');

                                      state.filter(
                                        kategori: state.selectKategori,
                                        periode: state.selectPeriode,
                                      );

                                    },
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: DropdownButtonFormField(
                                    value: state.kategoriList[0],
                                    isExpanded: true,
                                    decoration: waInputDecoration(
                                        bgColor: Colors.white,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8)),
                                    items: state.kategoriList.map((String? value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: vText(
                                          value ?? '-',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        state.selectKategori = value.toString();
                                      });

                                      print('kategori : ${state.selectKategori}');

                                      state.filter(
                                        kategori: state.selectKategori,
                                        periode: state.selectPeriode,
                                      );

                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      //chart
                      BarChartHome(state: state,),

                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildTitleHome({
    required String nama,
    required String total,
    required IconData icon,
    required bool isLoading,
  }) {
    return Container(
      decoration: boxDecorationRoundedWithShadow(
        12,
        backgroundColor: appStore.isDarkModeOn ? scaffoldDarkColor : white,
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            decoration: boxDecorationWithRoundedCorners(
              backgroundColor:
                  Theme.of(context).colorScheme.primary.withOpacity(0.1),
            ),
            height: 45,
            width: 45,
            padding: EdgeInsets.all(12),
            child: Icon(
              icon,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          SizedBox(width: 8),
          (isLoading == true) ? Center(child: SizedBox(height: 15,width: 15,child: CircularProgressIndicator())) : Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                vText(total,
                    fontSize: 14, fontWeight: FontWeight.w700, maxLines: 1),
                SizedBox(height: 4),
                vText(nama, fontSize: 12, maxLines: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration waInputDecoration(
      {IconData? prefixIcon,
      String? hint,
      Color? bgColor,
      Color? borderColor,
      EdgeInsets? padding}) {
    return InputDecoration(
      contentPadding:
          padding ?? EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      counter: Offstage(),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: borderColor ?? WAPrimaryColor)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
      ),
      fillColor: bgColor ?? WAPrimaryColor.withOpacity(0.04),
      hintText: hint,
      prefixIcon:
          prefixIcon != null ? Icon(prefixIcon, color: WAPrimaryColor) : null,
      hintStyle: secondaryTextStyle(),
      filled: true,
    );
  }
}
