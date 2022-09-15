import 'package:cloud_storage/controllers/amount_controller.dart';
import 'package:cloud_storage/models/grafik/grafik_res.dart';
import 'package:cloud_storage/network/http_dashoboard.dart';
import 'package:cloud_storage/network/http_grafik.dart';
import 'package:cloud_storage/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as gets;

class DataGrafik {
  String name;
  List<int> data;

  DataGrafik({required this.name, required this.data});
}

class HomeFragmentStates extends ChangeNotifier {
  BuildContext context;
  bool isLoadingGrafik = false;
  List<DataSeries> listDataGrafik = [];

  DataGrafik dataGrafikAlbum = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikAlbumJanJun = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikAlbumJulDes = DataGrafik(name: '', data: []);

  DataGrafik dataGrafikTrack = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikTrackJanJun = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikTrackJulDes = DataGrafik(name: '', data: []);

  DataGrafik dataGrafikRingtone = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikRingtoneJanJun = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikRingtoneJulDes = DataGrafik(name: '', data: []);

  DataGrafik dataGrafikVideo = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikVideoJanJun = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikVideoJulDes = DataGrafik(name: '', data: []);

  DataGrafik dataGrafik = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikJanJun = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikJulDes = DataGrafik(name: '', data: []);

  //filter
  List<String> kategoriList = ["Album", "Track", "Ringtone", "Video"];
  List<String> periodeList = ["Jan-Jun", "Jul-Des"];
  String selectKategori = 'Album';
  String selectPeriode = 'Jan-Jun';

  //
  int jmlAlbum = 0;
  int jmlVideo = 0;
  int jmlAudio = 0;
  int jmlTrack = 0;
  int jmlSetup = 0;
  bool isLoadingJmlAlbum = false;
  bool isLoadingJmlVideo = false;
  bool isLoadingJmlAudio = false;
  bool isLoadingJmlTrack = false;
  bool isLoadingJmlSetup = false;

  final getAmount = gets.Get.find<AmountController>();

  HomeFragmentStates(this.context) {
    init();
  }

  void init() {
    getGrafik();
    getJmlAlbum();
    getJmlVideo();
    getJmlAudio();
    getJmlTrack();
    getJmlAmount();
    getJmlSetup();
  }

  void getGrafik() async {
    isLoadingGrafik = true;
    notifyListeners();

    final resStep1 = await HTTPGrafik().getGrafik();
    isLoadingGrafik = false;

    notifyListeners();
    resStep1.fold(
      (e) async {
        isLoadingGrafik = false;
        notifyListeners();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Login Failed!",
          message: e,
        );
      },
      (cat) async {
        listDataGrafik = cat;

        for (var data in cat) {
          if (data.name.toLowerCase() == 'album') {
            dataGrafikAlbum.name = data.name;
            for (var grafik in data.data) {
              dataGrafikAlbum.data.add(grafik);
            }
          } else if (data.name.toLowerCase() == 'track') {
            dataGrafikTrack.name = data.name;
            for (var grafik in data.data) {
              dataGrafikTrack.data.add(grafik);
            }
          } else if (data.name.toLowerCase() == 'Ringtone') {
            dataGrafikRingtone.name = data.name;
            for (var grafik in data.data) {
              dataGrafikRingtone.data.add(grafik);
            }
          } else if (data.name.toLowerCase() == 'Video') {
            dataGrafikVideo.name = data.name;
            for (var grafik in data.data) {
              dataGrafikVideo.data.add(grafik);
            }
          }
        }

        notifyListeners();

        initDataPerPeriode();
        initAwalDataGrafik();
      },
    );
  }

  void getJmlAlbum() async {
    isLoadingJmlAlbum = true;
    notifyListeners();

    final resStep1 = await HTTPDashboard().countAlbum();
    isLoadingJmlAlbum = false;

    notifyListeners();
    resStep1.fold(
      (e) async {
        isLoadingJmlAlbum = false;
        notifyListeners();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Login Failed!",
          message: e,
        );
      },
      (cat) async {
        jmlAlbum = cat;
        isLoadingJmlAlbum = false;
        notifyListeners();
      },
    );
  }

  void getJmlVideo() async {
    isLoadingJmlVideo = true;
    notifyListeners();

    final resStep1 = await HTTPDashboard().countVideo();
    isLoadingJmlVideo = false;

    notifyListeners();
    resStep1.fold(
      (e) async {
        isLoadingJmlVideo = false;
        notifyListeners();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Login Failed!",
          message: e,
        );
      },
      (cat) async {
        jmlVideo = cat;
        isLoadingJmlVideo = false;
        notifyListeners();
      },
    );
  }

  void getJmlAudio() async {
    isLoadingJmlAudio = true;
    notifyListeners();

    final resStep1 = await HTTPDashboard().countAudio();
    isLoadingJmlAudio = false;

    notifyListeners();
    resStep1.fold(
          (e) async {
        isLoadingJmlAudio = false;
        notifyListeners();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Login Failed!",
          message: e,
        );
      },
          (cat) async {
        jmlVideo = cat;
        isLoadingJmlAudio = false;
        notifyListeners();
      },
    );
  }

  void getJmlTrack() async {
    isLoadingJmlTrack = true;
    notifyListeners();

    final resStep1 = await HTTPDashboard().countTrack();
    isLoadingJmlTrack = false;

    notifyListeners();
    resStep1.fold(
          (e) async {
        isLoadingJmlTrack = false;
        notifyListeners();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Login Failed!",
          message: e,
        );
      },
          (cat) async {
        jmlTrack = cat;
        isLoadingJmlTrack = false;
        notifyListeners();
      },
    );
  }

  void getJmlAmount() async {
    getAmount.getJmlAmount(context);
  }

  void getJmlSetup() async {
    isLoadingJmlSetup = true;
    notifyListeners();


    final resStep1 = await HTTPDashboard().countSetup();
    isLoadingJmlSetup = false;

    notifyListeners();
    resStep1.fold(
          (e) async {
        isLoadingJmlSetup = false;
        notifyListeners();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Login Failed!",
          message: e,
        );
      },
          (cat) async {
        jmlSetup = cat;
        isLoadingJmlSetup = false;
        notifyListeners();
      },
    );
  }

  initDataPerPeriode() async {
    //album
    if (dataGrafikAlbum.data.isNotEmpty) {
      dataGrafikAlbumJanJun.name = 'Album';
      dataGrafikAlbumJulDes.name = 'Album';
      for (int i = 0; i < 6; i++) {
        dataGrafikAlbumJanJun.data.add(dataGrafikAlbum.data[i]);
      }
      for (int i = 6; i < 12; i++) {
        dataGrafikAlbumJulDes.data.add(dataGrafikAlbum.data[i]);
      }
    }

    //track
    if (dataGrafikTrack.data.isNotEmpty) {
      dataGrafikTrackJanJun.name = 'Track';
      dataGrafikTrackJulDes.name = 'Track';
      for (int i = 0; i < 6; i++) {
        dataGrafikTrackJanJun.data.add(dataGrafikTrack.data[i]);
      }
      for (int i = 6; i < 12; i++) {
        dataGrafikTrackJulDes.data.add(dataGrafikTrack.data[i]);
      }
    }

    //ringtone
    if (dataGrafikRingtone.data.isNotEmpty) {
      dataGrafikRingtoneJanJun.name = 'Ringtone';
      dataGrafikRingtoneJulDes.name = 'Ringtone';
      for (int i = 0; i < 6; i++) {
        dataGrafikRingtoneJanJun.data.add(dataGrafikRingtone.data[i]);
      }
      for (int i = 6; i < 12; i++) {
        dataGrafikRingtoneJulDes.data.add(dataGrafikRingtone.data[i]);
      }
    }

    //video
    if (dataGrafikVideo.data.isNotEmpty) {
      dataGrafikVideoJanJun.name = 'Video';
      dataGrafikVideoJulDes.name = 'Video';
      for (int i = 0; i < 6; i++) {
        dataGrafikVideoJanJun.data.add(dataGrafikVideo.data[i]);
      }
      for (int i = 6; i < 12; i++) {
        dataGrafikVideoJulDes.data.add(dataGrafikVideo.data[i]);
      }
    }
  }

  initAwalDataGrafik() async {
    dataGrafik = dataGrafikAlbumJanJun;

    isLoadingGrafik = false;
    notifyListeners();
  }

  bool checkListGrafikJanJun(List<int> data) {
    bool adaData = false;

    for (var value in data) {
      if (value != 0) {
        adaData = true;
        break;
      } else {
        adaData = false;
      }
    }

    return adaData;
  }

  void filter({required String kategori, required String periode}) {
    // isLoadingGrafik = true;
    // notifyListeners();

    if (kategori == 'Album') {
      if (periode == 'Jan-Jun') {
        dataGrafik = dataGrafikAlbumJanJun;
        isLoadingGrafik = false;
        notifyListeners();
      } else if (periode == 'Jul-Des') {
        dataGrafik = dataGrafikAlbumJulDes;
        isLoadingGrafik = false;
        notifyListeners();
      }
    } else if (kategori == 'Track') {
      if (periode == 'Jan-Jun') {
        dataGrafik = dataGrafikTrackJanJun;
        isLoadingGrafik = false;
        notifyListeners();
      } else if (periode == 'Jul-Des') {
        dataGrafik = dataGrafikTrackJulDes;
        isLoadingGrafik = false;
        notifyListeners();
      }
    } else if (kategori == 'Video') {
      if (periode == 'Jan-Jun') {
        dataGrafik = dataGrafikVideoJanJun;
        isLoadingGrafik = false;
        notifyListeners();
      } else if (periode == 'Jul-Des') {
        dataGrafik = dataGrafikVideoJulDes;
        isLoadingGrafik = false;
        notifyListeners();
      }
    } else if (kategori == 'Ringtone') {
      if (periode == 'Jan-Jun') {
        dataGrafik = dataGrafikRingtoneJanJun;
        isLoadingGrafik = false;
        notifyListeners();
      } else if (periode == 'Jul-Des') {
        dataGrafik = dataGrafikRingtoneJulDes;
        isLoadingGrafik = false;
        notifyListeners();
      }
    } else {
      dataGrafik.name = '';
      dataGrafik.data = [];
      isLoadingGrafik = false;
      notifyListeners();
    }
  }
}
