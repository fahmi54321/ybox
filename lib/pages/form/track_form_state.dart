import 'dart:developer';
import 'dart:io';

import 'package:cloud_storage/main.dart';
import 'package:cloud_storage/models/general/genre_res.dart';
import 'package:cloud_storage/models/general/label_res.dart';
import 'package:cloud_storage/models/general/language_res.dart';
import 'package:cloud_storage/models/general/publishing_res.dart';
import 'package:cloud_storage/models/general/roles_res.dart';
import 'package:cloud_storage/models/track/track_res.dart';
import 'package:cloud_storage/network/http_general.dart';
import 'package:cloud_storage/network/http_track.dart';
import 'package:cloud_storage/pages/form/publishing_track_page.dart';
import 'package:cloud_storage/pages/form/track_with_audio_page.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/resource/strings.dart';
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
  LabelRes? tracksLabel;
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

  // edit
  DataTrackRes? dataTrackRes;
  String coverImageEdit = '';
  String audioEdit = '';
  bool isEdit = false;

  TrackFormState({
    required this.context,
    this.dataTrackRes,
  }) {
    initEditAudio();
    init();
  }

  init() {
    getLanguage();
    getGenre();
    getLabel();
    getRoles();
    getPublishing();
  }

  initEditAudio() {
    if (dataTrackRes != null) {
      isEdit = true;

      // main
      coverImageEdit = dataTrackRes?.image ?? '';

      //tracks
      audioEdit = dataTrackRes?.cover ?? '';
      tracksInputInternalTracksId.text =
          dataTrackRes?.internalTrackId?.toString() ?? '';
      tracksInputTitleRelease.text = dataTrackRes?.trackTitle ?? '';
      tracksInputTitleVersion.text = dataTrackRes?.trackVersion ?? '';
      tracksInputArtist.text = dataTrackRes?.artisName ?? '';

      if ((dataTrackRes?.spotify ?? '').isNotEmpty) {
        tracksInputArtistSpotify.text = dataTrackRes?.spotify ?? '';
        tracksYesInputArtistSpotify = 1;
        tracksSelectInputArtistSpotify = 1;
      } else {
        tracksNoInputArtistSpotify = 0;
        tracksSelectInputArtistSpotify = 0;
      }

      if ((dataTrackRes?.itunes ?? '').isNotEmpty) {
        tracksInputArtistApple.text = dataTrackRes?.itunes ?? '';
        tracksYesInputArtistApple = 1;
        tracksSelectInputArtistApple = 1;
      } else {
        tracksNoInputArtistApple = 0;
        tracksSelectInputArtistApple = 0;
      }

      if (dataTrackRes?.isrc != 0) {
        tracksInputIsrcCode.text = dataTrackRes?.isrc.toString() ?? '';
        tracksYesInputIsrcCode = 1;
        tracksSelectInputIsrcCode = 1;
      } else {
        tracksNoInputIsrcCode = 0;
        tracksSelectInputIsrcCode = 0;
      }

      if (dataTrackRes?.explisitLyric != 0) {
        tracksInputExplicitLyrics.text =
            dataTrackRes?.explisitLyric.toString() ?? '';
        tracksYesInputExplicitLyrics = 1;
        tracksSelectInputExplicitLyrics = 1;
      } else {
        tracksNoInputExplicitLyrics = 0;
        tracksSelectInputExplicitLyrics = 0;
      }

      if (dataTrackRes?.thisTrackIs == 0) {
        tracksOriginSong = 0;
        tracksSelectInputTrackSong = 0;
      } else {
        tracksPublicSong = 1;
        tracksSelectInputTrackSong = 1;
      }

      tracksInputCopyrightP.text = dataTrackRes?.pCopyright ?? "";
      tracksInputCopyrightC.text =
          dataTrackRes?.previewsStartTime?.toString() ?? '';
      tracksInputLyrics.text = dataTrackRes?.lyric ?? '';

      //publishing

      tracksInputContributorName.text =
          dataTrackRes?.contributor?.name ?? '';
      tracksInputShare.text =
          dataTrackRes?.contributor?.share?.toString() ?? '';

      notifyListeners();
    }
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
        if (dataTrackRes != null) {
          // edit
          if (dataTrackRes?.lang != null) {
            languageResTrack = LanguageRes(
              id: dataTrackRes?.lang?.id ?? 0,
              name: dataTrackRes?.lang?.name ?? '',
            );
          } else {
            languageResTrack = cat[0];
          }
        } else {
          languageResTrack = cat[0];
        }
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
        if (dataTrackRes != null) {

          if (dataTrackRes?.genre1 != null) {
            genreRes1Tracks = GenreRes(
              id: dataTrackRes?.genre1?.id ?? 0,
              name: dataTrackRes?.genre1?.name ?? '',
            );
          } else {
            genreRes1Tracks = cat[0];
          }

          if (dataTrackRes?.genre2 != null) {
            genreRes2Tracks = GenreRes(
              id: dataTrackRes?.genre2?.id ?? 0,
              name: dataTrackRes?.genre2?.name ?? '',
            );
          } else {
            genreRes2Tracks = cat[0];
          }
        } else {
          genreRes1Tracks = cat[0];
          genreRes2Tracks = cat[0];
        }
        isLoadingGenre = false;
        notifyListeners();
      },
    );
  }

  void getLabel() async {
    isLoadingLabel = true;
    notifyListeners();

    final resStep1 = await HTTPGeneral().getLabelReq();
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
        if (dataTrackRes?.labelName!=null) {
          log('ada label');
          log('${dataTrackRes?.labelName ?? ''}');
          tracksLabel = dataTrackRes?.labelName;
        } else {
          log('tidak ada label');
          log('${cat[0].nama}');
          tracksLabel = cat[0];
        }
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
        if (dataTrackRes?.contributor?.roleTrack != null) {
          pubRoles = dataTrackRes?.contributor?.roleTrack;
        } else {
          pubRoles = cat[0];
        }
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
        if (dataTrackRes?.contributor?.publising != null) {
          pubPublishings = dataTrackRes?.contributor?.publising;
        } else {
          pubPublishings = cat[0];
        }
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
    if(isEdit == false) {
      if (coverImage == null) {
        isValidateMain = false;
        listErrValidate.add('Images tidak boleh kosong');
      }
    }

    if(isEdit == false) {
      if (audio == null) {
        isValidateMain = false;
        listErrValidate.add('Audio tidak boleh kosong');
      }
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
    albumSave.labelInfo = tracksLabel?.labelCode.toString()??'0';
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

      if(isEdit == false) {
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
      }else{
        var formData = FormData.fromMap(
          {
            "_method": 'PUT',
            "cover_albums": (albumSave.coverImage == null)
                ? null
                : await MultipartFile.fromFile(
              albumSave.coverImage?.path ?? '',
              filename: albumSave.coverImage?.path.split('/').last,
            ),
            "file_track": (albumSave.audio == null)
                ? null
                : await MultipartFile.fromFile(
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

        editTrack(formData);
      }
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

  void editTrack(FormData formData) async {
    isLoading = true;
    notifyListeners();

    final resStep1 = await HTTPTrack().editTrack(
      id: dataTrackRes?.id??0,
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

  Widget buildCoverImage({
    required String editCover,
    required File? inputCover,
  }) {
    if (editCover.isNotEmpty && inputCover == null) {
      String image = editCover.replaceAll('public', 'storage');
      String urlImage = '${APP_URL + image}';

      return Container(
        height: 100,
        decoration: BoxDecoration(
          color: CPPrimaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: NetworkImage(
              urlImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
      );
    } else {
      if (inputCover == null) {
        return Container(
          height: 100,
          decoration: BoxDecoration(
            color: CPPrimaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(
            Icons.add,
            size: 30,
            color: CPPrimaryColor,
          ),
        );
      } else {
        return Container(
          height: 100,
          decoration: BoxDecoration(
            color: CPPrimaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: FileImage(
                inputCover,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      }
    }
  }

  Widget buildAudio(
      {required String editAudio, required PlatformFile? fileAudio}) {
    if (editAudio.isNotEmpty && fileAudio != null) {
      return Container(
        height: 50,
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: CPPrimaryColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: vText(
            '.mp3',
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      );
    } else {
      return Container(
        height: 50,
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: CPPrimaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Icon(
          Icons.add,
          size: 30,
          color: CPPrimaryColor,
        ),
      );
    }
  }

  String setTextButton({
    required bool isLastStep,
    required bool isLoading,
    required DataTrackRes? dataTrack,
  }) {
    if (isLastStep == true) {
      if (isLoading == true) {
        return 'Loading...';
      } else {
        if (dataTrack != null) {
          return 'Edit Track';
        } else {
          return 'Approve';
        }
      }
    } else {
      return 'Selanjutnya';
    }
  }
}
