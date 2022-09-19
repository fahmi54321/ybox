import 'dart:developer';
import 'dart:io';

import 'package:cloud_storage/main.dart';
import 'package:cloud_storage/models/album/album_res.dart';
import 'package:cloud_storage/models/audio/audio_res.dart';
import 'package:cloud_storage/models/general/genre_res.dart' as genre;
import 'package:cloud_storage/models/general/label_res.dart';
import 'package:cloud_storage/models/general/language_res.dart';
import 'package:cloud_storage/models/general/publishing_res.dart';
import 'package:cloud_storage/models/general/roles_res.dart';
import 'package:cloud_storage/models/video/video_res.dart';
import 'package:cloud_storage/network/http_album.dart';
import 'package:cloud_storage/network/http_general.dart';
import 'package:cloud_storage/network/http_ringtone.dart';
import 'package:cloud_storage/network/http_video.dart';
import 'package:cloud_storage/pages/form/main_info_page.dart';
import 'package:cloud_storage/pages/form/publishing_page.dart';
import 'package:cloud_storage/pages/form/track_page.dart';
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

class MainFormState extends ChangeNotifier {
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

  // main
  String languageMain = 'Select language';
  String languageMainId = '';
  LanguageRes? languageResMain;
  List<LanguageRes> listLanguage = [];
  List<genre.GenreRes> listGenre = [];
  List<LabelRes> listLabel = [];
  List<RolesRes> listRole = [];
  List<PublishingRes> listPublishing = [];

  //title
  TextEditingController mainInputTitleRelease = TextEditingController();
  TextEditingController mainInputTitleVersion = TextEditingController();

  //artist
  TextEditingController mainInputArtist = TextEditingController();
  int mainYesInputArtistSpotify = 1;
  int mainYesInputArtistApple = 1;
  int mainNoInputArtistSpotify = 0;
  int mainNoInputArtistApple = 0;
  int mainSelectInputArtistSpotify = 0;
  int mainSelectInputArtistApple = 0;
  TextEditingController mainInputArtistSpotify = TextEditingController();
  TextEditingController mainInputArtistApple = TextEditingController();

  //info
  String mainGenre1 = 'Select genre';
  String mainGenre2 = 'Select genre';
  genre.GenreRes? genreRes1Main;
  genre.GenreRes? genreRes2Main;
  TextEditingController mainInputCopyrightP = TextEditingController();
  TextEditingController mainInputCopyrightC = TextEditingController();
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
  genre.GenreRes? genreRes1Tracks;
  genre.GenreRes? genreRes2Tracks;
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
  RolesRes? pubRoles;
  PublishingRes? pubPublishings;
  TextEditingController tracksInputContributorName = TextEditingController();
  TextEditingController tracksInputShare = TextEditingController();

  bool isLoading = false;
  String formCode;

  // edit
  DataAlbumRes? dataAlbumRes;
  DataVideoRes? dataVideoRes;
  DataAudioRes? dataAudioRes;
  String coverImageEdit = '';
  String audioEdit = '';
  bool isEdit = false;

  MainFormState({
    required this.context,
    required this.formCode,
    this.dataAlbumRes,
    this.dataVideoRes,
    this.dataAudioRes,
  }) {
    initEditAlbum();
    initEditVideo();
    initEditAudio();
    init();
  }

  initEditAlbum() {
    if (dataAlbumRes != null) {
      isEdit = true;

      // main
      coverImageEdit = dataAlbumRes?.cover ?? '';
      mainInputTitleRelease.text = dataAlbumRes?.releaseTitle ?? '';
      mainInputTitleVersion.text = dataAlbumRes?.titleVersion ?? '';
      mainInputArtist.text = dataAlbumRes?.trackId?.artisName ?? '';

      if ((dataAlbumRes?.spotify ?? '').isNotEmpty) {
        mainInputArtistSpotify.text = dataAlbumRes?.spotify ?? '';
        mainYesInputArtistSpotify = 1;
        mainSelectInputArtistSpotify = 1;
      } else {
        mainNoInputArtistSpotify = 0;
        mainSelectInputArtistSpotify = 0;
      }

      if ((dataAlbumRes?.itunes ?? '').isNotEmpty) {
        mainInputArtistApple.text = dataAlbumRes?.itunes ?? '';
        mainYesInputArtistApple = 1;
        mainSelectInputArtistApple = 1;
      } else {
        mainNoInputArtistApple = 0;
        mainSelectInputArtistApple = 0;
      }

      mainInputCopyrightP.text = dataAlbumRes?.pCopyright ?? '';
      mainInputCopyrightC.text = dataAlbumRes?.cCopyright ?? '';

      if ((dataAlbumRes?.releasedDate ?? '').isNotEmpty) {
        inputPrevReleased.text = dataAlbumRes?.releasedDate ?? '';
        selectInputPrevRelease = 1;
        yesInputPrevRelease = 1;
      } else {
        selectInputPrevRelease = 0;
        noInputPrevRelease = 0;
      }

      if ((dataAlbumRes?.labelName ?? '').isNotEmpty) {
        inputLabelName.text = dataAlbumRes?.labelName ?? '';
        inputReleaseId.text = dataAlbumRes?.releasedId.toString() ?? '';
        selectInputLabel = 1;
        yesInputLabel = 1;
      } else {
        selectInputLabel = 0;
        noInputLabel = 0;
      }

      if (dataAlbumRes?.upc != 0) {
        inputUpc.text = dataAlbumRes?.upc.toString() ?? '';
        selectInputUPC = 1;
        yesInputUPC = 1;
      } else {
        selectInputUPC = 0;
        noInputUPC = 0;
      }

      //tracks
      audioEdit = dataAlbumRes?.trackId?.cover ?? '';
      tracksInputTitleRelease.text = dataAlbumRes?.trackId?.trackTitle ?? '';
      tracksInputTitleVersion.text = dataAlbumRes?.trackId?.trackVersion ?? '';
      tracksInputArtist.text = dataAlbumRes?.trackId?.artisName ?? '';

      if ((dataAlbumRes?.trackId?.spotify ?? '').isNotEmpty) {
        tracksInputArtistSpotify.text = dataAlbumRes?.trackId?.spotify ?? '';
        tracksYesInputArtistSpotify = 1;
        tracksSelectInputArtistSpotify = 1;
      } else {
        tracksNoInputArtistSpotify = 0;
        tracksSelectInputArtistSpotify = 0;
      }

      if ((dataAlbumRes?.trackId?.itunes ?? '').isNotEmpty) {
        tracksInputArtistApple.text = dataAlbumRes?.trackId?.itunes ?? '';
        tracksYesInputArtistApple = 1;
        tracksSelectInputArtistApple = 1;
      } else {
        tracksNoInputArtistApple = 0;
        tracksSelectInputArtistApple = 0;
      }

      if (dataAlbumRes?.trackId?.isrc != 0) {
        tracksInputIsrcCode.text = dataAlbumRes?.trackId?.isrc.toString() ?? '';
        tracksYesInputIsrcCode = 1;
        tracksSelectInputIsrcCode = 1;
      } else {
        tracksNoInputIsrcCode = 0;
        tracksSelectInputIsrcCode = 0;
      }

      if (dataAlbumRes?.trackId?.explisitLyric != 0) {
        tracksInputExplicitLyrics.text =
            dataAlbumRes?.trackId?.explisitLyric.toString() ?? '';
        tracksYesInputExplicitLyrics = 1;
        tracksSelectInputExplicitLyrics = 1;
      } else {
        tracksNoInputExplicitLyrics = 0;
        tracksSelectInputExplicitLyrics = 0;
      }

      if (dataAlbumRes?.trackId?.thisTrackIs == 0) {
        tracksOriginSong = 0;
        tracksSelectInputTrackSong = 0;
      } else {
        tracksPublicSong = 1;
        tracksSelectInputTrackSong = 1;
      }

      tracksInputCopyrightP.text = dataAlbumRes?.trackId?.pCopyright ?? "";
      tracksInputCopyrightC.text =
          dataAlbumRes?.trackId?.previewsStartTime?.toString() ?? '';
      tracksInputLyrics.text = dataAlbumRes?.trackId?.lyric ?? '';
      tracksInputInternalTracksId.text =
          dataAlbumRes?.trackId?.internalTrackId?.toString() ?? '';

      //publishing

      tracksInputContributorName.text =
          dataAlbumRes?.trackId?.contributor?.name ?? '';
      tracksInputShare.text =
          dataAlbumRes?.trackId?.contributor?.share?.toString() ?? '';

      notifyListeners();
    }
  }

  initEditVideo() {
    if (dataVideoRes != null) {
      isEdit = true;

      // main
      coverImageEdit = dataVideoRes?.cover ?? '';
      mainInputTitleRelease.text = dataVideoRes?.title ?? '';
      mainInputTitleVersion.text = dataVideoRes?.titleVersion ?? '';
      mainInputArtist.text = dataVideoRes?.trackId?.artisName ?? '';

      if ((dataVideoRes?.spotify ?? '').isNotEmpty) {
        mainInputArtistSpotify.text = dataVideoRes?.spotify ?? '';
        mainYesInputArtistSpotify = 1;
        mainSelectInputArtistSpotify = 1;
      } else {
        mainNoInputArtistSpotify = 0;
        mainSelectInputArtistSpotify = 0;
      }

      if ((dataVideoRes?.itunes ?? '').isNotEmpty) {
        mainInputArtistApple.text = dataVideoRes?.itunes ?? '';
        mainYesInputArtistApple = 1;
        mainSelectInputArtistApple = 1;
      } else {
        mainNoInputArtistApple = 0;
        mainSelectInputArtistApple = 0;
      }

      mainInputCopyrightP.text = dataVideoRes?.pCopyright ?? '';
      mainInputCopyrightC.text = dataVideoRes?.cCopyright ?? '';

      if ((dataVideoRes?.released ?? '').isNotEmpty) {
        inputPrevReleased.text = dataVideoRes?.released ?? '';
        selectInputPrevRelease = 1;
        yesInputPrevRelease = 1;
      } else {
        selectInputPrevRelease = 0;
        noInputPrevRelease = 0;
      }

      if ((dataVideoRes?.labelName ?? '').isNotEmpty) {
        inputLabelName.text = dataVideoRes?.labelName ?? '';
        inputReleaseId.text = dataVideoRes?.internalReleasedId.toString() ?? '';
        selectInputLabel = 1;
        yesInputLabel = 1;
      } else {
        selectInputLabel = 0;
        noInputLabel = 0;
      }

      if (dataVideoRes?.upc != 0) {
        inputUpc.text = dataVideoRes?.upc.toString() ?? '';
        selectInputUPC = 1;
        yesInputUPC = 1;
      } else {
        selectInputUPC = 0;
        noInputUPC = 0;
      }

      //tracks
      audioEdit = dataVideoRes?.trackId?.cover ?? '';
      tracksInputTitleRelease.text = dataVideoRes?.trackId?.trackTitle ?? '';
      tracksInputTitleVersion.text = dataVideoRes?.trackId?.trackVersion ?? '';
      tracksInputArtist.text = dataVideoRes?.trackId?.artisName ?? '';

      if ((dataVideoRes?.trackId?.spotify ?? '').isNotEmpty) {
        tracksInputArtistSpotify.text = dataVideoRes?.trackId?.spotify ?? '';
        tracksYesInputArtistSpotify = 1;
        tracksSelectInputArtistSpotify = 1;
      } else {
        tracksNoInputArtistSpotify = 0;
        tracksSelectInputArtistSpotify = 0;
      }

      if ((dataVideoRes?.trackId?.itunes ?? '').isNotEmpty) {
        tracksInputArtistApple.text = dataVideoRes?.trackId?.itunes ?? '';
        tracksYesInputArtistApple = 1;
        tracksSelectInputArtistApple = 1;
      } else {
        tracksNoInputArtistApple = 0;
        tracksSelectInputArtistApple = 0;
      }

      if (dataVideoRes?.trackId?.isrc != 0) {
        tracksInputIsrcCode.text = dataVideoRes?.trackId?.isrc.toString() ?? '';
        tracksYesInputIsrcCode = 1;
        tracksSelectInputIsrcCode = 1;
      } else {
        tracksNoInputIsrcCode = 0;
        tracksSelectInputIsrcCode = 0;
      }

      if (dataVideoRes?.trackId?.explisitLyric != 0) {
        tracksInputExplicitLyrics.text =
            dataVideoRes?.trackId?.explisitLyric.toString() ?? '';
        tracksYesInputExplicitLyrics = 1;
        tracksSelectInputExplicitLyrics = 1;
      } else {
        tracksNoInputExplicitLyrics = 0;
        tracksSelectInputExplicitLyrics = 0;
      }

      if (dataVideoRes?.trackId?.thisTrackIs == 0) {
        tracksOriginSong = 0;
        tracksSelectInputTrackSong = 0;
      } else {
        tracksPublicSong = 1;
        tracksSelectInputTrackSong = 1;
      }

      tracksInputCopyrightP.text = dataVideoRes?.trackId?.pCopyright ?? "";
      tracksInputCopyrightC.text =
          dataVideoRes?.trackId?.previewsStartTime?.toString() ?? '';
      tracksInputLyrics.text = dataVideoRes?.trackId?.lyric ?? '';
      tracksInputInternalTracksId.text =
          dataVideoRes?.trackId?.internalTrackId?.toString() ?? '';

      //publishing

      tracksInputContributorName.text =
          dataVideoRes?.trackId?.contributor?.name ?? '';
      tracksInputShare.text =
          dataVideoRes?.trackId?.contributor?.share?.toString() ?? '';

      notifyListeners();
    }
  }

  initEditAudio() {
    if (dataAudioRes != null) {
      isEdit = true;

      // main
      coverImageEdit = dataAudioRes?.cover ?? '';
      mainInputTitleRelease.text = dataAudioRes?.title ?? '';
      mainInputTitleVersion.text = dataAudioRes?.titleVersion ?? '';
      mainInputArtist.text = dataAudioRes?.trackId?.artisName ?? '';

      if ((dataAudioRes?.spotify ?? '').isNotEmpty) {
        mainInputArtistSpotify.text = dataAudioRes?.spotify ?? '';
        mainYesInputArtistSpotify = 1;
        mainSelectInputArtistSpotify = 1;
      } else {
        mainNoInputArtistSpotify = 0;
        mainSelectInputArtistSpotify = 0;
      }

      if ((dataAudioRes?.itunes ?? '').isNotEmpty) {
        mainInputArtistApple.text = dataAudioRes?.itunes ?? '';
        mainYesInputArtistApple = 1;
        mainSelectInputArtistApple = 1;
      } else {
        mainNoInputArtistApple = 0;
        mainSelectInputArtistApple = 0;
      }

      mainInputCopyrightP.text = dataAudioRes?.pCopyright ?? '';
      mainInputCopyrightC.text = dataAudioRes?.cCopyright ?? '';

      if ((dataAudioRes?.released ?? '').isNotEmpty) {
        inputPrevReleased.text = dataAudioRes?.released ?? '';
        selectInputPrevRelease = 1;
        yesInputPrevRelease = 1;
      } else {
        selectInputPrevRelease = 0;
        noInputPrevRelease = 0;
      }

      if ((dataAudioRes?.labelName ?? '').isNotEmpty) {
        inputLabelName.text = dataAudioRes?.labelName ?? '';
        inputReleaseId.text = dataAudioRes?.internalReleasedId.toString() ?? '';
        selectInputLabel = 1;
        yesInputLabel = 1;
      } else {
        selectInputLabel = 0;
        noInputLabel = 0;
      }

      if (dataAudioRes?.upc != 0) {
        inputUpc.text = dataAudioRes?.upc.toString() ?? '';
        selectInputUPC = 1;
        yesInputUPC = 1;
      } else {
        selectInputUPC = 0;
        noInputUPC = 0;
      }

      //tracks
      audioEdit = dataAudioRes?.trackId?.cover ?? '';
      tracksInputTitleRelease.text = dataAudioRes?.trackId?.trackTitle ?? '';
      tracksInputTitleVersion.text = dataAudioRes?.trackId?.trackVersion ?? '';
      tracksInputArtist.text = dataAudioRes?.trackId?.artisName ?? '';

      if ((dataAudioRes?.trackId?.spotify ?? '').isNotEmpty) {
        tracksInputArtistSpotify.text = dataAudioRes?.trackId?.spotify ?? '';
        tracksYesInputArtistSpotify = 1;
        tracksSelectInputArtistSpotify = 1;
      } else {
        tracksNoInputArtistSpotify = 0;
        tracksSelectInputArtistSpotify = 0;
      }

      if ((dataAudioRes?.trackId?.itunes ?? '').isNotEmpty) {
        tracksInputArtistApple.text = dataAudioRes?.trackId?.itunes ?? '';
        tracksYesInputArtistApple = 1;
        tracksSelectInputArtistApple = 1;
      } else {
        tracksNoInputArtistApple = 0;
        tracksSelectInputArtistApple = 0;
      }

      if (dataAudioRes?.trackId?.isrc != 0) {
        tracksInputIsrcCode.text = dataAudioRes?.trackId?.isrc.toString() ?? '';
        tracksYesInputIsrcCode = 1;
        tracksSelectInputIsrcCode = 1;
      } else {
        tracksNoInputIsrcCode = 0;
        tracksSelectInputIsrcCode = 0;
      }

      if (dataAudioRes?.trackId?.explisitLyric != 0) {
        tracksInputExplicitLyrics.text =
            dataAudioRes?.trackId?.explisitLyric.toString() ?? '';
        tracksYesInputExplicitLyrics = 1;
        tracksSelectInputExplicitLyrics = 1;
      } else {
        tracksNoInputExplicitLyrics = 0;
        tracksSelectInputExplicitLyrics = 0;
      }

      if (dataAudioRes?.trackId?.thisTrackIs == 0) {
        tracksOriginSong = 0;
        tracksSelectInputTrackSong = 0;
      } else {
        tracksPublicSong = 1;
        tracksSelectInputTrackSong = 1;
      }

      tracksInputCopyrightP.text = dataAudioRes?.trackId?.pCopyright ?? "";
      tracksInputCopyrightC.text =
          dataAudioRes?.trackId?.previewsStartTime?.toString() ?? '';
      tracksInputLyrics.text = dataAudioRes?.trackId?.lyric ?? '';
      tracksInputInternalTracksId.text =
          dataAudioRes?.trackId?.internalTrackId?.toString() ?? '';

      //publishing

      tracksInputContributorName.text =
          dataAudioRes?.trackId?.contributor?.name ?? '';
      tracksInputShare.text =
          dataAudioRes?.trackId?.contributor?.share?.toString() ?? '';

      notifyListeners();
    }
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
          'Main',
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
        content: MainInfoAlbumPage(
          state: this,
        ),
      ),
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: vText(
          'Tracks',
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
        content: TrackPage(
          state: this,
          formCode: formCode,
        ),
      ),
      Step(
        state: currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 2,
        title: vText(
          'Publishing',
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
        content: PublishingPage(state: this),
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

        if (dataAlbumRes != null || dataVideoRes != null || dataAudioRes != null) {
          // edit
          if (dataAlbumRes?.langId != null) {
            languageResMain = LanguageRes(
              id: dataAlbumRes?.langId?.id ?? 0,
              name: dataAlbumRes?.langId?.name ?? '',
            );
            languageResTrack = LanguageRes(
              id: dataAlbumRes?.langId?.id ?? 0,
              name: dataAlbumRes?.langId?.name ?? '',
            );
          }else if (dataVideoRes?.langId != null) {
            languageResMain = LanguageRes(
              id: dataVideoRes?.langId?.id ?? 0,
              name: dataVideoRes?.langId?.name ?? '',
            );
            languageResTrack = LanguageRes(
              id: dataVideoRes?.langId?.id ?? 0,
              name: dataVideoRes?.langId?.name ?? '',
            );
          } else if (dataAudioRes?.langId != null) {
            languageResMain = LanguageRes(
              id: dataAudioRes?.langId?.id ?? 0,
              name: dataAudioRes?.langId?.name ?? '',
            );
            languageResTrack = LanguageRes(
              id: dataAudioRes?.langId?.id ?? 0,
              name: dataAudioRes?.langId?.name ?? '',
            );
          } else {
            languageResMain = cat[0];
            languageResTrack = cat[0];
          }
        } else {
          languageResMain = cat[0];
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

        if (dataAlbumRes != null || dataVideoRes != null || dataAudioRes != null) {
          if (dataAlbumRes?.genre1 != null) {
            genreRes1Main = genre.GenreRes(
              id: dataAlbumRes?.genre1?.id ?? 0,
              name: dataAlbumRes?.genre1?.name ?? '',
            );
          }else if (dataVideoRes?.genre1 != null) {
            genreRes1Main = genre.GenreRes(
              id: dataVideoRes?.genre1?.id ?? 0,
              name: dataVideoRes?.genre1?.name ?? '',
            );
          } else if (dataAudioRes?.genre1 != null) {
            genreRes1Main = genre.GenreRes(
              id: dataAudioRes?.genre1?.id ?? 0,
              name: dataAudioRes?.genre1?.name ?? '',
            );
          } else {
            genreRes1Main = cat[0];
          }

          if (dataAlbumRes?.genre2 != null) {
            genreRes2Main = genre.GenreRes(
              id: dataAlbumRes?.genre2?.id ?? 0,
              name: dataAlbumRes?.genre2?.name ?? '',
            );
          }else if (dataVideoRes?.genre2 != null) {
            genreRes2Main = genre.GenreRes(
              id: dataVideoRes?.genre2?.id ?? 0,
              name: dataVideoRes?.genre2?.name ?? '',
            );
          }else if (dataAudioRes?.genre2 != null) {
            genreRes2Main = genre.GenreRes(
              id: dataAudioRes?.genre2?.id ?? 0,
              name: dataAudioRes?.genre2?.name ?? '',
            );
          } else {
            genreRes2Main = cat[0];
          }

          if (dataAlbumRes?.trackId?.genre1 != null) {
            genreRes1Tracks = genre.GenreRes(
              id: dataAlbumRes?.trackId?.genre1?.id ?? 0,
              name: dataAlbumRes?.trackId?.genre1?.name ?? '',
            );
          } else if (dataVideoRes?.trackId?.genre1 != null) {
            genreRes1Tracks = genre.GenreRes(
              id: dataVideoRes?.trackId?.genre1?.id ?? 0,
              name: dataVideoRes?.trackId?.genre1?.name ?? '',
            );
          } else if (dataAudioRes?.trackId?.genre1 != null) {
            genreRes1Tracks = genre.GenreRes(
              id: dataAudioRes?.trackId?.genre1?.id ?? 0,
              name: dataAudioRes?.trackId?.genre1?.name ?? '',
            );
          } else {
            genreRes1Tracks = cat[0];
          }

          if (dataAlbumRes?.trackId?.genre2 != null) {
            genreRes2Tracks = genre.GenreRes(
              id: dataAlbumRes?.trackId?.genre2?.id ?? 0,
              name: dataAlbumRes?.trackId?.genre2?.name ?? '',
            );
          } else if (dataVideoRes?.trackId?.genre2 != null) {
            genreRes2Tracks = genre.GenreRes(
              id: dataVideoRes?.trackId?.genre2?.id ?? 0,
              name: dataVideoRes?.trackId?.genre2?.name ?? '',
            );
          } else if (dataAudioRes?.trackId?.genre2 != null) {
            genreRes2Tracks = genre.GenreRes(
              id: dataAudioRes?.trackId?.genre2?.id ?? 0,
              name: dataAudioRes?.trackId?.genre2?.name ?? '',
            );
          } else {
            genreRes2Tracks = cat[0];
          }
        } else {
          genreRes1Main = cat[0];
          genreRes2Main = cat[0];
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
        // if ((dataAlbumRes?.trackId?.labelName ?? '').isNotEmpty) {
        //   tracksLabel = dataAlbumRes?.trackId?.labelName ?? '';
        // } else {
        //   tracksLabel = cat[0].nama;
        // }

        tracksLabel = cat[0].nama;

        log('label name : ${tracksLabel}');

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
        if (dataAlbumRes?.trackId?.contributor?.roleTrack != null) {
          pubRoles = dataAlbumRes?.trackId?.contributor?.roleTrack;
        } else if (dataVideoRes?.trackId?.contributor?.roleTrack != null) {
          pubRoles = dataVideoRes?.trackId?.contributor?.roleTrack;
        } else if (dataAudioRes?.trackId?.contributor?.roleTrack != null) {
          pubRoles = dataAudioRes?.trackId?.contributor?.roleTrack;
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
        if (dataAlbumRes?.trackId?.contributor?.publising != null) {
          pubPublishings = dataAlbumRes?.trackId?.contributor?.publising;
        } else if (dataVideoRes?.trackId?.contributor?.publising != null) {
          pubPublishings = dataVideoRes?.trackId?.contributor?.publising;
        } else if (dataAudioRes?.trackId?.contributor?.publising != null) {
          pubPublishings = dataAudioRes?.trackId?.contributor?.publising;
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

    log('masuk sini');

    List<String> listErrValidate = [];

    if (isEdit == false) {
      // cover image
      if (coverImage == null) {
        isValidateMain = false;
        listErrValidate.add('Images tidak boleh kosong');
      }
    }
    if (languageResMain == null) {
      isValidateMain = false;
      listErrValidate.add('Language tidak boleh kosong');
    }

    if (isEdit == false) {
      if (audio == null) {
        isValidateMain = false;
        listErrValidate.add('Audio tidak boleh kosong');
      }
    }

    albumSave.coverImage = coverImage;
    albumSave.languageId = languageResMain?.id.toString() ?? '0';
    albumSave.releaseTitle = mainInputTitleRelease.text;
    albumSave.titleVersion = mainInputTitleVersion.text;
    albumSave.artist = mainInputArtist.text;
    albumSave.spotify = mainInputArtistSpotify.text;
    albumSave.itunes = mainInputArtistApple.text;
    albumSave.genre = genreRes1Main?.id.toString() ?? '0';
    albumSave.genre2 = genreRes2Main?.id.toString() ?? '0';
    albumSave.pCopy = mainInputCopyrightP.text;
    albumSave.cCopy = mainInputCopyrightC.text;
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

      showFlushBar(listErrValidate);
    } else {
      isLoading = true;
      notifyListeners();

      if (formCode == 'album') {

        if (isEdit == false) {
          var formData = FormData.fromMap(
            {
              "cover_albums": await MultipartFile.fromFile(
                albumSave.coverImage?.path ?? '',
                filename: albumSave.coverImage?.path.split('/').last,
              ),
              "lang": albumSave.languageId,
              "release_title": albumSave.releaseTitle,
              "title_version": albumSave.titleVersion,
              "artis": albumSave.artist,
              "spotify": albumSave.spotify,
              "itunes": albumSave.itunes,
              "genre": albumSave.genre,
              "genre2": albumSave.genre2,
              "p_copy": albumSave.pCopy,
              "c_copy": albumSave.cCopy,
              "release": albumSave.release,
              "label": albumSave.label,
              "release_id": albumSave.releaseId,
              "upc": albumSave.upc,
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
          saveAlbum(formData);
        } else {
          var formData = FormData.fromMap(
            {
              "_method": 'PUT',
              "cover_albums": (albumSave.coverImage == null)
                  ? null
                  : await MultipartFile.fromFile(
                      albumSave.coverImage?.path ?? '',
                      filename: albumSave.coverImage?.path.split('/').last,
                    ),
              "lang": albumSave.languageId,
              "release_title": albumSave.releaseTitle,
              "title_version": albumSave.titleVersion,
              "artis": albumSave.artist,
              "spotify": albumSave.spotify,
              "itunes": albumSave.itunes,
              "genre": albumSave.genre,
              "genre2": albumSave.genre2,
              "p_copy": albumSave.pCopy,
              "c_copy": albumSave.cCopy,
              "release": albumSave.release,
              "label": albumSave.label,
              "release_id": albumSave.releaseId,
              "upc": albumSave.upc,
              "file_track": (albumSave.audio == null ) ? null : await MultipartFile.fromFile(
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

          editAlbum(formData);
        }
      } else if (formCode == 'ringtone') {

        if(isEdit == false) {
          var formData = FormData.fromMap(
            {
              "cover_albums": await MultipartFile.fromFile(
                albumSave.coverImage?.path ?? '',
                filename: albumSave.coverImage?.path
                    .split('/')
                    .last,
              ),
              "lang": albumSave.languageId,
              "release_title": albumSave.releaseTitle,
              "title_version": albumSave.titleVersion,
              "artis": albumSave.artist,
              "spotify": albumSave.spotify,
              "itunes": albumSave.itunes,
              "genre": albumSave.genre,
              "genre2": albumSave.genre2,
              "p_copy": albumSave.pCopy,
              "c_copy": albumSave.cCopy,
              "release": albumSave.release,
              "label": albumSave.label,
              "release_id": albumSave.releaseId,
              "upc": albumSave.upc,
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

          saveRingtone(formData);
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
              "lang": albumSave.languageId,
              "release_title": albumSave.releaseTitle,
              "title_version": albumSave.titleVersion,
              "artis": albumSave.artist,
              "spotify": albumSave.spotify,
              "itunes": albumSave.itunes,
              "genre": albumSave.genre,
              "genre2": albumSave.genre2,
              "p_copy": albumSave.pCopy,
              "c_copy": albumSave.cCopy,
              "release": albumSave.release,
              "label": albumSave.label,
              "release_id": albumSave.releaseId,
              "upc": albumSave.upc,
              "file_track": (albumSave.audio == null ) ? null : await MultipartFile.fromFile(
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

          editRingtone(formData);
        }
      } else if (formCode == 'video') {

        if(isEdit == false) {
          var formData = FormData.fromMap(
            {
              "cover_albums": await MultipartFile.fromFile(
                albumSave.coverImage?.path ?? '',
                filename: albumSave.coverImage?.path
                    .split('/')
                    .last,
              ),
              "lang": albumSave.languageId,
              "release_title": albumSave.releaseTitle,
              "title_version": albumSave.titleVersion,
              "artis": albumSave.artist,
              "spotify": albumSave.spotify,
              "itunes": albumSave.itunes,
              "genre": albumSave.genre,
              "genre2": albumSave.genre2,
              "p_copy": albumSave.pCopy,
              "c_copy": albumSave.cCopy,
              "release": albumSave.release,
              "label": albumSave.label,
              "release_id": albumSave.releaseId,
              "upc": albumSave.upc,
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

          saveVideo(formData);
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
              "lang": albumSave.languageId,
              "release_title": albumSave.releaseTitle,
              "title_version": albumSave.titleVersion,
              "artis": albumSave.artist,
              "spotify": albumSave.spotify,
              "itunes": albumSave.itunes,
              "genre": albumSave.genre,
              "genre2": albumSave.genre2,
              "p_copy": albumSave.pCopy,
              "c_copy": albumSave.cCopy,
              "release": albumSave.release,
              "label": albumSave.label,
              "release_id": albumSave.releaseId,
              "upc": albumSave.upc,
              "file_track": (albumSave.audio == null ) ? null : await MultipartFile.fromFile(
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

          editVideo(formData);
        }
      }
    }
  }

  void saveAlbum(FormData formData) async {
    isLoading = true;
    notifyListeners();

    final resStep1 = await HTTPAlbum().uploadAlbum(
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

  void editAlbum(FormData formData) async {
    log('masuk edit');

    isLoading = true;
    notifyListeners();

    final resStep1 = await HTTPAlbum().editAlbum(
      id: dataAlbumRes?.id ?? 0,
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

  void saveRingtone(FormData formData) async {
    isLoading = true;
    notifyListeners();

    final resStep1 = await HTTPRingtone().uploadRingtone(
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

  void editRingtone(FormData formData) async {
    log('masuk edit');

    isLoading = true;
    notifyListeners();

    final resStep1 = await HTTPRingtone().editAudio(
      id: dataAudioRes?.id ?? 0,
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

  void saveVideo(FormData formData) async {
    isLoading = true;
    notifyListeners();

    final resStep1 = await HTTPVideo().uploadVideo(
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

  void editVideo(FormData formData) async {
    log('masuk edit');

    isLoading = true;
    notifyListeners();

    log('id video : ${dataVideoRes?.id ?? 0}');

    final resStep1 = await HTTPVideo().editVideo(
      id: dataVideoRes?.id ?? 0,
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
    if (editAudio.isNotEmpty || fileAudio != null) {
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
    required DataAlbumRes? dataAlbum,
    required DataVideoRes? dataVideo,
    required DataAudioRes? dataAudio,
  }) {
    if (isLastStep == true) {
      if (isLoading == true) {
        return 'Loading...';
      } else {
        if (dataAlbumRes != null) {
          return 'Edit Album';
        } else if (dataVideoRes != null) {
          return 'Edit Video';
        } else if (dataAudio != null) {
          return 'Edit Audio';
        } else {
          return 'Approve';
        }
      }
    } else {
      return 'Selanjutnya';
    }
  }
}
