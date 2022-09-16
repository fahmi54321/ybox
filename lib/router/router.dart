import 'package:cloud_storage/main.dart';
import 'package:cloud_storage/pages/form/add_transaction_page.dart';
import 'package:cloud_storage/pages/form/main_form_page.dart';
import 'package:cloud_storage/pages/form/track_form_page.dart';
import 'package:cloud_storage/pages/home/berhasil_page.dart';
import 'package:cloud_storage/pages/home/details/details_audio_page.dart';
import 'package:cloud_storage/pages/home/details/details_page.dart';
import 'package:cloud_storage/pages/home/details/details_track_page.dart';
import 'package:cloud_storage/pages/home/details/details_video_page.dart';
import 'package:cloud_storage/pages/home/home_page.dart';
import 'package:cloud_storage/pages/home/search_page.dart';
import 'package:cloud_storage/pages/login/login_page.dart';
import 'package:cloud_storage/pages/profil/profil_page.dart';
import 'package:cloud_storage/pages/profil/ubah_password_page.dart';
import 'package:cloud_storage/pages/splash_page.dart';
import 'package:cloud_storage/pages/upload/upload_album_page.dart';
import 'package:cloud_storage/pages/upload/upload_audio_page.dart';
import 'package:cloud_storage/pages/upload/upload_video_page.dart';
import 'package:cloud_storage/pages/walk_through_page/walk_through_page.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashPage.ROUTE:
      return MaterialPageRoute(builder: (context) => SplashPage());

    case WalkThrougPage.ROUTE:
      return MaterialPageRoute(builder: (context) => WalkThrougPage());

    case LoginPage.ROUTE:
      return MaterialPageRoute(builder: (context) => LoginPage());

    case HomePage.ROUTE:
      return MaterialPageRoute(builder: (context) => HomePage());

    case SearchPage.ROUTE:
      return MaterialPageRoute(builder: (context) => SearchPage());

    case UploadAlbumPage.ROUTE:
      return MaterialPageRoute(builder: (context) => UploadAlbumPage());

    case UploadAudioPage.ROUTE:
      return MaterialPageRoute(builder: (context) => UploadAudioPage());

    case UploadVideoPage.ROUTE:
      return MaterialPageRoute(builder: (context) => UploadVideoPage());

    case UbahPasswordPage.ROUTE:
      return MaterialPageRoute(builder: (context) => UbahPasswordPage());

    case ProfilPage.ROUTE:
      return MaterialPageRoute(builder: (context) => ProfilPage());

    case MainFormPage.ROUTE:
      return MaterialPageRoute(
          builder: (context) => MainFormPage(
                args: settings.arguments as ArgsMainFormPage,
              ));

    case CekPage.ROUTE:
      return MaterialPageRoute(builder: (context) => CekPage());

    case BerhasilPage.ROUTE:
      return MaterialPageRoute(
        builder: (context) => BerhasilPage(
          args: settings.arguments as ArgsBerhasilPage,
        ),
      );

    case DetailsPage.ROUTE:
      return MaterialPageRoute(
        builder: (context) => DetailsPage(
          id: settings.arguments as String,
        ),
      );

    case DetailsAudioPage.ROUTE:
      return MaterialPageRoute(
        builder: (context) => DetailsAudioPage(
          id: settings.arguments as String,
        ),
      );

    case DetailsVideoPage.ROUTE:
      return MaterialPageRoute(
        builder: (context) => DetailsVideoPage(
          id: settings.arguments as String,
        ),
      );

    case TrackFormPage.ROUTE:
      return MaterialPageRoute(
        builder: (context) => TrackFormPage(args: settings.arguments as ArgsTrackFormPage,),
      );

    case DetailsTrackPage.ROUTE:
      return MaterialPageRoute(
        builder: (context) => DetailsTrackPage(
          id: settings.arguments as String,
        ),
      );
    case AddTransactionPage.ROUTE:
      return MaterialPageRoute(
        builder: (context) => AddTransactionPage(),
      );

    default:
      //statements;
      return MaterialPageRoute(builder: (context) => SplashPage());
  }
}
