import 'dart:io';

import 'package:cloud_storage/main.dart';
import 'package:cloud_storage/models/general/genre_res.dart';
import 'package:cloud_storage/models/general/label_res.dart';
import 'package:cloud_storage/models/general/language_res.dart';
import 'package:cloud_storage/models/general/publishing_res.dart';
import 'package:cloud_storage/models/general/roles_res.dart';
import 'package:cloud_storage/network/http_album.dart';
import 'package:cloud_storage/network/http_general.dart';
import 'package:cloud_storage/network/http_ringtone.dart';
import 'package:cloud_storage/network/http_track.dart';
import 'package:cloud_storage/network/http_video.dart';
import 'package:cloud_storage/pages/form/main_info_page.dart';
import 'package:cloud_storage/pages/form/publishing_page.dart';
import 'package:cloud_storage/pages/form/publishing_track_page.dart';
import 'package:cloud_storage/pages/form/track_page.dart';
import 'package:cloud_storage/pages/form/track_with_audio_page.dart';
import 'package:cloud_storage/utils/utils.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:image_picker/image_picker.dart';

class AlbumSave {
  File? coverImage;
  String languageId;
  String releaseTitle;
  String titleVersion;
  String artist;
  String spotify;
  String itunes;
  String genre;
  String genre2;
  String pCopy;
  String cCopy;
  String release;
  String label;
  String releaseId;
  String upc;
  PlatformFile? audio;
  String languageTrackId;
  String trackTitle;
  String titleVersionTrack;
  String artistTrack;
  String spotifyTrack;
  String itunesTrack;
  String isrc;
  String rdolyrics;
  String rdothisTrack;
  String genreInfo;
  String genre2Info;
  String pCopyInfo;
  String startTime;
  String labelInfo;
  String trackIdInfo;
  String lirik;
  String conName;
  String roleTrack;
  String share;
  String publishing;

  AlbumSave({
    required this.coverImage,
    required this.languageId,
    required this.releaseTitle,
    required this.titleVersion,
    required this.artist,
    required this.spotify,
    required this.itunes,
    required this.genre,
    required this.genre2,
    required this.pCopy,
    required this.cCopy,
    required this.release,
    required this.label,
    required this.releaseId,
    required this.upc,
    required this.audio,
    required this.languageTrackId,
    required this.trackTitle,
    required this.titleVersionTrack,
    required this.artistTrack,
    required this.spotifyTrack,
    required this.itunesTrack,
    required this.isrc,
    required this.rdolyrics,
    required this.rdothisTrack,
    required this.genreInfo,
    required this.genre2Info,
    required this.pCopyInfo,
    required this.startTime,
    required this.labelInfo,
    required this.trackIdInfo,
    required this.lirik,
    required this.conName,
    required this.roleTrack,
    required this.share,
    required this.publishing,
  });
}

class TrackFormState extends ChangeNotifier {
  BuildContext context;

  //save
  bool isValidateMain = false;
  AlbumSave albumSave = AlbumSave(
    coverImage: null,
    languageId: '',
    releaseTitle: '',
    titleVersion: '',
    artist: '',
    spotify: '',
    itunes: '',
    genre: '',
    genre2: '',
    pCopy: '',
    cCopy: '',
    release: '',
    label: '',
    releaseId: '',
    upc: '',
    audio: null,
    languageTrackId: '',
    trackTitle: '',
    titleVersionTrack: '',
    artistTrack: '',
    spotifyTrack: '',
    itunesTrack: '',
    isrc: '',
    rdolyrics: '',
    rdothisTrack: '',
    genreInfo: '',
    genre2Info: '',
    pCopyInfo: '',
    startTime: '',
    labelInfo: '',
    trackIdInfo: '',
    lirik: '',
    conName: '',
    roleTrack: '',
    share: '',
    publishing: '',
  );

  File? coverImage;
  PlatformFile? audio;
  String fileNameImage = '';
  String fileNameAudio = '';
  String sizeImage = '';
  String sizeAudio = '';
  int currentStep = 0;
  bool isCompleted = false;
  bool isLoadingLanguage = false;
  bool isLoadingGenre = false;
  bool isLoadingLabel = false;
  bool isLoadingRole = false;
  bool isLoadingPublishing = false;
  List<String> rulesOfImage = [
    'File format: PNG, GIF, BMP, TIF, JPG or JPEG.',
    'Color space: RGB.',
    'Minimum dimensions: 1400x1400 pixels, but recommend 3000x3000 pixels',
    'Square image: width and height must be the same.',
    'Images may not contain more than 50 megapixels or be larger than 10 Mb.',
    'Your image cannot be stretched, upscaled, or appear to be low-resolution.',
    'The information on your cover art must match your album title and artist name.',
    'Website addresses, social media links and contact information are not permitted on album artwork.',
    'Your cover art may not include sexually explicit imagery.',
    'Your cover art cannot be misleading by figuring another artists name more prominently than yours.',
    'You may not use a third-party logo or trademark without the express written permission from the trademark holder.',
  ];

  List<LanguageRes> listLanguage = [];
  List<GenreRes> listGenre = [];
  List<LabelRes> listLabel = [];
  List<RolesRes> listRole = [];
  List<PublishingRes> listPublishing = [];

  TextEditingController inputRecordLabel = TextEditingController();
  TextEditingController inputPrevReleased = TextEditingController();
  TextEditingController inputLabelName = TextEditingController();
  TextEditingController inputReleaseId = TextEditingController();
  TextEditingController inputUpc = TextEditingController();
  int yesInputPrevRelease = 1;
  int yesInputLabel = 1;
  int yesInputUPC = 1;
  int noInputPrevRelease = 0;
  int noInputLabel = 0;
  int noInputUPC = 0;
  int selectInputPrevRelease = 0;
  int selectInputLabel = 0;
  int selectInputUPC = 0;

  //tracks
  GenreRes? genreRes1Tracks;
  GenreRes? genreRes2Tracks;
  String languageTracks = 'Select language';
  LanguageRes? languageResTrack;

  //title
  TextEditingController tracksInputTitleRelease = TextEditingController();
  TextEditingController tracksInputTitleVersion = TextEditingController();

  //artist
  TextEditingController tracksInputArtist = TextEditingController();
  int tracksYesInputArtistSpotify = 1;
  int tracksYesInputArtistApple = 1;
  int tracksNoInputArtistSpotify = 0;
  int tracksNoInputArtistApple = 0;
  int tracksSelectInputArtistSpotify = 0;
  int tracksSelectInputArtistApple = 0;
  TextEditingController tracksInputArtistSpotify = TextEditingController();
  TextEditingController tracksInputArtistApple = TextEditingController();

  // additional info
  int tracksYesInputIsrcCode = 1;
  int tracksPublicSong = 1;
  int tracksYesInputExplicitLyrics = 1;
  int tracksNoInputIsrcCode = 0;
  int tracksOriginSong = 0;
  int tracksNoInputExplicitLyrics = 0;
  int tracksSelectInputIsrcCode = 0;
  int tracksSelectInputExplicitLyrics = 0;
  int tracksSelectInputTrackSong = 0;
  TextEditingController tracksInputIsrcCode = TextEditingController();
  TextEditingController tracksInputExplicitLyrics = TextEditingController();
  String tracksGenre1 = 'Select genre';
  String tracksGenre2 = 'Select genre';
  String tracksLabel = 'Select label';
  TextEditingController tracksInputCopyrightP = TextEditingController();
  TextEditingController tracksInputCopyrightC = TextEditingController();
  TextEditingController tracksInputInternalTracksId = TextEditingController();
  TextEditingController tracksInputLyrics = TextEditingController();

  //publishing
  String pubRole = 'Select role';
  RolesRes? pubRoles;
  String pubPublishing = 'Select publishing';
  PublishingRes? pubPublishings;
  TextEditingController tracksInputContributorName = TextEditingController();
  TextEditingController tracksInputShare = TextEditingController();

  bool isLoading = false;

  TrackFormState(
    this.context,
  ) {
    init();
  }

  init() {
    getLanguage();
    getGenre();
    getLabel();
    getRoles();
    getPublishing();
  }

  List<Step> listSteps() {
    return [
      Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
        title: vText(
          'Tracks',
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
        content: TrackWithAudioPage(
          state: this,
        ),
      ),
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: vText(
          'Publishing',
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
        content: PublishingTrackPage(state: this),
      ),
    ];
  }

  Future<File?> pilihFoto() async {
    final picker = ImagePicker();
    File? _pickedImage;

    final pickedImage = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedImage != null) {
      final pickedImageFile = File(pickedImage!.path);
      _pickedImage = pickedImageFile;
      return _pickedImage;
    } else {
      return null;
    }
  }

  Future<PlatformFile?> pilihAudio() async {
    final result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['mp3']);
    if (result == null) {
      return null;
    }

    PlatformFile file = result.files.first;

    return file;
  }

  void getLanguage() async {
    isLoadingLanguage = true;
    notifyListeners();

    final resStep1 = await HTTPGeneral().getLanguage();
    isLoadingLanguage = false;

    notifyListeners();
    resStep1.fold(
      (e) async {
        isLoadingLanguage = false;
        notifyListeners();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Login Failed!",
          message: e,
        );
      },
      (cat) async {
        listLanguage = cat;
        languageResTrack = cat[0];
        isLoadingLanguage = false;
        notifyListeners();
      },
    );
  }

  void getGenre() async {
    isLoadingLanguage = true;
    notifyListeners();

    final resStep1 = await HTTPGeneral().getGenre();
    isLoadingGenre = false;

    notifyListeners();
    resStep1.fold(
      (e) async {
        isLoadingGenre = false;
        notifyListeners();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Login Failed!",
          message: e,
        );
      },
      (cat) async {
        listGenre = cat;
        genreRes1Tracks = cat[0];
        genreRes2Tracks = cat[0];
        isLoadingGenre = false;
        notifyListeners();
      },
    );
  }

  void getLabel() async {
    isLoadingLabel = true;
    notifyListeners();

    final resStep1 = await HTTPGeneral().getLabel();
    isLoadingLabel = false;

    notifyListeners();
    resStep1.fold(
      (e) async {
        isLoadingLabel = false;
        notifyListeners();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Login Failed!",
          message: e,
        );
      },
      (cat) async {
        listLabel = cat;
        tracksLabel = cat[0].nama;
        isLoadingLabel = false;
        notifyListeners();
      },
    );
  }

  void getRoles() async {
    isLoadingRole = true;
    notifyListeners();

    final resStep1 = await HTTPGeneral().getRoles();
    isLoadingRole = false;

    notifyListeners();
    resStep1.fold(
      (e) async {
        isLoadingRole = false;
        notifyListeners();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Login Failed!",
          message: e,
        );
      },
      (cat) async {
        listRole = cat;
        pubRole = cat[0].name;
        pubRoles = cat[0];
        isLoadingRole = false;
        notifyListeners();
      },
    );
  }

  void getPublishing() async {
    isLoadingPublishing = true;
    notifyListeners();

    final resStep1 = await HTTPGeneral().getPublishing();
    isLoadingPublishing = false;

    notifyListeners();
    resStep1.fold(
      (e) async {
        isLoadingPublishing = false;
        notifyListeners();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Login Failed!",
          message: e,
        );
      },
      (cat) async {
        listPublishing = cat;
        pubPublishing = cat[0].name;
        pubPublishings = cat[0];
        isLoadingPublishing = false;
        notifyListeners();
      },
    );
  }

  void cekValidasiAlbumForm() async {
    isLoading = true;
    notifyListeners();

    print('masuk sini');

    List<String> listErrValidate = [];

    // cover image
    if (coverImage == null) {
      isValidateMain = false;
      listErrValidate.add('Images tidak boleh kosong');
    }
    if (audio == null) {
      isValidateMain = false;
      listErrValidate.add('Audio tidak boleh kosong');
    }

    albumSave.coverImage = coverImage;
    albumSave.release = inputPrevReleased.text;
    albumSave.label = inputLabelName.text;
    albumSave.releaseId = inputReleaseId.text;
    albumSave.upc = inputUpc.text;
    albumSave.audio = audio;
    albumSave.languageTrackId = languageResTrack?.id.toString() ?? '0';
    albumSave.trackTitle = tracksInputTitleRelease.text;
    albumSave.titleVersionTrack = tracksInputTitleVersion.text;
    albumSave.artistTrack = tracksInputArtist.text;
    albumSave.spotifyTrack = tracksInputArtistSpotify.text;
    albumSave.itunesTrack = tracksInputArtistApple.text;
    albumSave.isrc = tracksInputIsrcCode.text;
    albumSave.rdolyrics = tracksSelectInputExplicitLyrics.toString();
    albumSave.rdothisTrack = tracksSelectInputTrackSong.toString();
    albumSave.genreInfo = genreRes1Tracks?.id.toString() ?? '0';
    albumSave.genre2Info = genreRes2Tracks?.id.toString() ?? '0';
    albumSave.pCopyInfo = tracksInputCopyrightP.text;
    albumSave.startTime = tracksInputCopyrightC.text;
    albumSave.labelInfo = tracksLabel;
    albumSave.trackIdInfo = tracksInputInternalTracksId.text;
    albumSave.lirik = tracksInputLyrics.text;
    albumSave.conName = tracksInputContributorName.text;
    albumSave.roleTrack = pubRoles?.id.toString() ?? '0';
    albumSave.share = tracksInputShare.text;
    albumSave.publishing = pubPublishings?.id.toString() ?? '0';

    notifyListeners();

    if (listErrValidate.isNotEmpty) {
      isLoading = false;
      notifyListeners();

      print(albumSave.languageId);
      print(albumSave.audio);

      showFlushBar(listErrValidate);
    } else {
      isLoading = true;
      notifyListeners();

      var formData = FormData.fromMap(
        {
          "cover_albums": await MultipartFile.fromFile(
            albumSave.coverImage?.path ?? '',
            filename: albumSave.coverImage?.path
                .split('/')
                .last,
          ),
          "file_track": await MultipartFile.fromFile(
            albumSave.audio?.path ?? '',
            filename: albumSave.audio?.path,
          ),
          "lang_track": albumSave.languageTrackId,
          "track_title": albumSave.trackTitle,
          "title_version_track": albumSave.titleVersionTrack,
          "artis_track": albumSave.artistTrack,
          "spotify_track": albumSave.spotifyTrack,
          "itunes_track": albumSave.itunesTrack,
          "isrc": albumSave.isrc,
          "rdolyrics": albumSave.rdolyrics,
          "rdothis_track": albumSave.rdothisTrack,
          "genre_info": albumSave.genreInfo,
          "genre2_info": albumSave.genre2Info,
          "p_copy_info": albumSave.pCopyInfo,
          "start_time": albumSave.startTime,
          "label_info": albumSave.labelInfo,
          "track_ID_info": albumSave.trackIdInfo,
          "lirik": albumSave.lirik,
          "con_name": albumSave.conName,
          "role_track": albumSave.roleTrack,
          "share": albumSave.share,
          "publishing": albumSave.publishing,
        },
      );

      saveTrack(formData);
    }
  }

  void saveTrack(FormData formData) async {
    isLoading = true;
    notifyListeners();

    final resStep1 = await HTTPTrack().uploadTrack(
      data: formData,
    );

    resStep1.fold(
          (e) async {
        isLoading = false;
        notifyListeners();
        showFlushBar([e]);
      },
          (cat) async {
        isLoading = false;
        isCompleted = true;
        notifyListeners();
      },
    );
    isLoading = false;
    notifyListeners();
  }

  void showSnackbar(String message) {
    SnackBar snackBar = SnackBar(content: Text(message));
    snackbarKey.currentState?.showSnackBar(snackBar);
  }

  void showFlushBar(List<String> message) {
    Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Theme.of(context).colorScheme.error,
      duration: Duration(seconds: 3),
      titleText: Row(
        children: [
          Icon(
            Icons.add_alert_rounded,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          SizedBox(width: 5),
          vText(
            "Oops...",
            fontSize: 20,
            color: Theme.of(context).colorScheme.onPrimary,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
      messageText: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: message.length,
          itemBuilder: (context, index) {
            String msg = message[index];

            return Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: vText(
                msg,
                fontSize: 16,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            );
          }),
    )..show(context);
  }
}
