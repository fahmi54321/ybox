import 'dart:io';

import 'package:cloud_storage/models/general/genre_res.dart';
import 'package:cloud_storage/models/general/label_res.dart';
import 'package:cloud_storage/models/general/language_res.dart';
import 'package:cloud_storage/pages/form/track_form_state.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/widget/v_dropdown.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class TrackWithAudioPage extends StatefulWidget {
  TrackFormState state;

  TrackWithAudioPage({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  _TrackWithAudioPageState createState() => _TrackWithAudioPageState();
}

class _TrackWithAudioPageState extends State<TrackWithAudioPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildFormTrack(),
      ],
    );
  }

  Widget buildFormTrack() {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildCoverImage(context),
          buildFormAudio(),
          buildLanguage(),
          buildFormTitle(),
          buildArtist(),
          buildArtistSpotifyOrApple(),
          buildAdditionalInfo(),
          buildAdvanceInfo(),
          buildLyrics(),
        ],
      ),
    );
  }

  Column buildCoverImage(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Cover image",
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 16),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          decoration: boxDecorationWithShadow(
              borderRadius: BorderRadius.circular(5),
              backgroundColor: context.cardColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    vText(
                      "Images",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () async {
                              // ambil file
                              File? file = await widget.state.pilihFoto();
                              if (file != null) {
                                setState(() {
                                  widget.state.coverImage = file;
                                });
                              }
                            },
                            child: widget.state.buildCoverImage(
                              editCover: widget.state.coverImageEdit,
                              inputCover: widget.state.coverImage,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 4,
                                    itemBuilder: (context, index) {
                                      return vText(
                                        '${index + 1}. ${widget.state.rulesOfImage[index]}',
                                        fontSize: 10,
                                        maxLines: 1,
                                      );
                                    }),
                                SizedBox(height: 10),
                                vText(
                                  'Show more',
                                  fontSize: 10,
                                  maxLines: 1,
                                  color: CPPrimaryColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Column buildLyrics() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        vText(
          "Lyrics (optional)",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 16),
        VInputText(
          'Input here...',
          radius: 8,
          outlineColor: CPPrimaryColor.withOpacity(0.1),
          activeColor: CPPrimaryColor,
          fontSize: 10,
          keyboardType: TextInputType.multiline,
          maxLines: 5,
          controller: widget.state.tracksInputLyrics,
          fillColor: CPPrimaryColor.withOpacity(0.04),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Column buildAdvanceInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vText(
              'Advanced info (optional)',
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 8),
            Divider(),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vText(
                    "Genre 1",
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 8),
                  (widget.state.isLoadingGenre == true)
                      ? CircularProgressIndicator(
                          color: CPPrimaryColor,
                        )
                      : VDropDownGenre(
                          value: widget.state.genreRes1Tracks,
                          onChanged: (GenreRes? data) {
                            setState(() {
                              widget.state.genreRes1Tracks = data;
                            });
                          },
                          items: widget.state.listGenre
                              .map<DropdownMenuItem<GenreRes>>(
                                  (GenreRes value) {
                            return DropdownMenuItem<GenreRes>(
                              value: value,
                              child: Text(value.name),
                            );
                          }).toList(),
                          borderColor: CPPrimaryColor.withOpacity(0.1),
                          icon: Icon(Icons.arrow_drop_down),
                        ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vText(
                    "Genre 2",
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 8),
                  (widget.state.isLoadingGenre == true)
                      ? CircularProgressIndicator(
                          color: CPPrimaryColor,
                        )
                      : VDropDownGenre(
                          value: widget.state.genreRes2Tracks,
                          onChanged: (GenreRes? data) {
                            setState(() {
                              widget.state.genreRes2Tracks = data;
                            });
                          },
                          items: widget.state.listGenre
                              .map<DropdownMenuItem<GenreRes>>(
                                  (GenreRes value) {
                            return DropdownMenuItem<GenreRes>(
                              value: value,
                              child: Text(value.name),
                            );
                          }).toList(),
                          borderColor: CPPrimaryColor.withOpacity(0.1),
                          icon: Icon(Icons.arrow_drop_down),
                        ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vText(
                    "(P) Copyright",
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 8),
                  VInputText(
                    'Input here...',
                    radius: 8,
                    outlineColor: CPPrimaryColor.withOpacity(0.1),
                    activeColor: CPPrimaryColor,
                    fontSize: 10,
                    controller: widget.state.tracksInputCopyrightP,
                    fillColor: CPPrimaryColor.withOpacity(0.04),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vText(
                    "Preview start time",
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 8),
                  VInputText(
                    'text',
                    radius: 8,
                    outlineColor: CPPrimaryColor.withOpacity(0.1),
                    activeColor: CPPrimaryColor,
                    fontSize: 10,
                    keyboardType: TextInputType.number,
                    controller: widget.state.tracksInputCopyrightC,
                    fillColor: CPPrimaryColor.withOpacity(0.04),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vText(
                    "Label name",
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 8),
                  (widget.state.isLoadingLabel == true)
                      ? CircularProgressIndicator(
                          color: CPPrimaryColor,
                        )
                      : VDropDownLabel(
                          value: widget.state.tracksLabel,
                          onChanged: (LabelRes? data) {
                            setState(() {
                              widget.state.tracksLabel = data ??
                                  LabelRes(
                                    id: 0,
                                    nama: '',
                                    labelCode: 0,
                                  );
                            });
                          },
                          items: widget.state.listLabel
                              .map<DropdownMenuItem<LabelRes>>(
                                  (LabelRes value) {
                            return DropdownMenuItem<LabelRes>(
                              value: value,
                              child: Text(value.nama),
                            );
                          }).toList(),
                          borderColor: CPPrimaryColor.withOpacity(0.1),
                          icon: Icon(Icons.arrow_drop_down),
                        ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vText(
                    "Internal track ID",
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 8),
                  VInputText(
                    'text',
                    radius: 8,
                    outlineColor: CPPrimaryColor.withOpacity(0.1),
                    activeColor: CPPrimaryColor,
                    fontSize: 10,
                    keyboardType: TextInputType.number,
                    controller: widget.state.tracksInputInternalTracksId,
                    fillColor: CPPrimaryColor.withOpacity(0.04),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Column buildAdditionalInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vText(
              'Additional info',
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 8),
            Divider(),
          ],
        ),
        SizedBox(height: 16),
        vText(
          'Do you already have an ISRC code?',
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 10),
        Column(
          children: [
            Row(
              children: [
                Radio<int>(
                  groupValue: widget.state.tracksSelectInputIsrcCode,
                  value: widget.state.tracksNoInputIsrcCode,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputIsrcCode = val ?? 0;
                    });
                  },
                  activeColor: CPPrimaryColor,
                ),
                Expanded(
                  child: vText('No', fontSize: 10, maxLines: 3),
                ),
              ],
            ),
            Row(
              children: [
                Radio<int>(
                  groupValue: widget.state.tracksSelectInputIsrcCode,
                  value: widget.state.tracksYesInputIsrcCode,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputIsrcCode = val ?? 0;
                    });
                  },
                  activeColor: CPPrimaryColor,
                ),
                vText('Yes', fontSize: 10),
              ],
            ),
            SizedBox(height: 5),
            (widget.state.tracksSelectInputIsrcCode == 0)
                ? Container()
                : VInputText(
                    'Enter',
                    radius: 8,
                    outlineColor: CPPrimaryColor.withOpacity(0.1),
                    activeColor: CPPrimaryColor,
                    fontSize: 10,
                    keyboardType: TextInputType.number,
                    controller: widget.state.tracksInputIsrcCode,
                    fillColor: CPPrimaryColor.withOpacity(0.04),
                  ),
          ],
        ),
        SizedBox(height: 15),
        vText(
          'Explicit lyrics',
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 10),
        Column(
          children: [
            Row(
              children: [
                Radio<int>(
                  groupValue: widget.state.tracksSelectInputExplicitLyrics,
                  value: widget.state.tracksNoInputExplicitLyrics,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputExplicitLyrics = val ?? 0;
                    });
                  },
                  activeColor: CPPrimaryColor,
                ),
                Expanded(
                  child: vText('No', fontSize: 10, maxLines: 3),
                ),
              ],
            ),
            Row(
              children: [
                Radio<int>(
                  groupValue: widget.state.tracksSelectInputExplicitLyrics,
                  value: widget.state.tracksYesInputExplicitLyrics,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputExplicitLyrics = val ?? 0;
                    });
                  },
                  activeColor: CPPrimaryColor,
                ),
                vText('Yes', fontSize: 10),
              ],
            ),
            SizedBox(height: 5),
            (widget.state.tracksSelectInputExplicitLyrics == 0)
                ? Container()
                : VInputText(
                    'Enter',
                    radius: 8,
                    outlineColor: CPPrimaryColor.withOpacity(0.1),
                    activeColor: CPPrimaryColor,
                    fontSize: 10,
                    controller: widget.state.tracksInputExplicitLyrics,
                    fillColor: CPPrimaryColor.withOpacity(0.04),
                  ),
          ],
        ),
        SizedBox(height: 15),
        vText(
          'This track is',
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 10),
        Column(
          children: [
            Row(
              children: [
                Radio<int>(
                  groupValue: widget.state.tracksSelectInputTrackSong,
                  value: widget.state.tracksOriginSong,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputTrackSong = val ?? 0;
                    });
                  },
                  activeColor: CPPrimaryColor,
                ),
                Expanded(
                  child: vText(
                      'An Original song (publishing info will be required)',
                      fontSize: 10,
                      maxLines: 3),
                ),
              ],
            ),
            Row(
              children: [
                Radio<int>(
                  groupValue: widget.state.tracksSelectInputTrackSong,
                  value: widget.state.tracksPublicSong,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputTrackSong = val ?? 0;
                    });
                  },
                  activeColor: CPPrimaryColor,
                ),
                vText(
                  'A Public domain song (publising info will be required)',
                  fontSize: 10,
                ),
              ],
            ),
            SizedBox(height: 5),
          ],
        ),
      ],
    );
  }

  Column buildArtistSpotifyOrApple() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        vText(
          'Artist already on Spotify?',
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 10),
        Column(
          children: [
            Row(
              children: [
                Radio<int>(
                  groupValue: widget.state.tracksSelectInputArtistSpotify,
                  value: widget.state.tracksNoInputArtistSpotify,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputArtistSpotify = val ?? 0;
                    });
                  },
                  activeColor: CPPrimaryColor,
                ),
                Expanded(
                  child: vText(
                      'No, create a new Spotify profile for this artist',
                      fontSize: 10,
                      maxLines: 3),
                ),
              ],
            ),
            Row(
              children: [
                Radio<int>(
                  groupValue: widget.state.tracksSelectInputArtistSpotify,
                  value: widget.state.tracksYesInputArtistSpotify,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputArtistSpotify = val ?? 0;
                    });
                  },
                  activeColor: CPPrimaryColor,
                ),
                vText('Yes', fontSize: 10),
              ],
            ),
            SizedBox(height: 5),
            (widget.state.tracksSelectInputArtistSpotify == 0)
                ? Container()
                : VInputText(
                    'Enter',
                    radius: 8,
                    outlineColor: CPPrimaryColor.withOpacity(0.1),
                    activeColor: CPPrimaryColor,
                    fontSize: 10,
                    controller: widget.state.tracksInputArtistSpotify,
                    fillColor: CPPrimaryColor.withOpacity(0.04),
                  ),
          ],
        ),
        SizedBox(height: 15),
        vText(
          'Artist already on Apple Music?',
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 10),
        Column(
          children: [
            Row(
              children: [
                Radio<int>(
                  groupValue: widget.state.tracksSelectInputArtistApple,
                  value: widget.state.tracksNoInputArtistApple,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputArtistApple = val ?? 0;
                    });
                  },
                  activeColor: CPPrimaryColor,
                ),
                Expanded(
                  child: vText(
                    'No, create a new Apple Music/iTunes profile for this artist.',
                    fontSize: 10,
                    maxLines: 3,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Radio<int>(
                  groupValue: widget.state.tracksSelectInputArtistApple,
                  value: widget.state.tracksYesInputArtistApple,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputArtistApple = val ?? 0;
                    });
                  },
                  activeColor: CPPrimaryColor,
                ),
                vText('Yes', fontSize: 10),
              ],
            ),
            SizedBox(height: 5),
            (widget.state.tracksSelectInputArtistApple == 0)
                ? Container()
                : VInputText(
                    'Enter',
                    radius: 8,
                    outlineColor: CPPrimaryColor.withOpacity(0.1),
                    activeColor: CPPrimaryColor,
                    fontSize: 10,
                    controller: widget.state.tracksInputArtistApple,
                    fillColor: CPPrimaryColor.withOpacity(0.04),
                  ),
          ],
        ),
      ],
    );
  }

  Column buildArtist() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        vText(
          "Artist (indicate ONLY ONE in this field)",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 16),
        VInputText(
          'Input here...',
          radius: 8,
          outlineColor: CPPrimaryColor.withOpacity(0.1),
          activeColor: CPPrimaryColor,
          fontSize: 10,
          controller: widget.state.tracksInputArtist,
          fillColor: CPPrimaryColor.withOpacity(0.04),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Column buildFormTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vText(
                    "Track title",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 8),
                  VInputText(
                    'Input here...',
                    radius: 8,
                    outlineColor: CPPrimaryColor.withOpacity(0.1),
                    activeColor: CPPrimaryColor,
                    fontSize: 10,
                    controller: widget.state.tracksInputTitleRelease,
                    fillColor: CPPrimaryColor.withOpacity(0.04),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vText(
                    "Title version",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 8),
                  VInputText(
                    'Input here...',
                    radius: 8,
                    outlineColor: CPPrimaryColor.withOpacity(0.1),
                    activeColor: CPPrimaryColor,
                    fontSize: 10,
                    controller: widget.state.tracksInputTitleVersion,
                    fillColor: CPPrimaryColor.withOpacity(0.04),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Column buildLanguage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Language of Lyrics",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 16),
        (widget.state.isLoadingLanguage == true)
            ? CircularProgressIndicator(
                color: CPPrimaryColor,
              )
            : VDropDownLanguage(
                value: widget.state.languageResTrack,
                onChanged: (LanguageRes? data) {
                  setState(() {
                    widget.state.languageResTrack = data;
                  });
                },
                items: widget.state.listLanguage
                    .map<DropdownMenuItem<LanguageRes>>((LanguageRes value) {
                  return DropdownMenuItem<LanguageRes>(
                    value: value,
                    child: Text(value.name),
                  );
                }).toList(),
                borderColor: CPPrimaryColor.withOpacity(0.1),
                icon: Icon(Icons.arrow_drop_down),
              ),
        SizedBox(height: 16),
      ],
    );
  }

  Column buildFormAudio() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        vText(
          "Audio file",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () async {
                  PlatformFile? fileAudio = await widget.state.pilihAudio();
                  if (fileAudio != null) {
                    final fileName = fileAudio.name;
                    final kb = fileAudio.size / 1024;
                    final mb = kb / 1024;
                    final fileSize = mb >= 1
                        ? '${mb.toStringAsFixed(2)} MB'
                        : '${kb.toStringAsFixed(2)} KB';

                    setState(() {
                      widget.state.audio = fileAudio;
                      widget.state.fileNameAudio = '${fileName}';
                      widget.state.sizeAudio = fileSize;
                    });
                  }
                },
                child: widget.state.buildAudio(
                  editAudio: widget.state.audioEdit,
                  fileAudio: widget.state.audio,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: (widget.state.audio == null)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        vText(
                          "Drag your file here or click to upload",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        vText(
                          "Stereo WAV file only. Minimum bit depth: 16 bit, sample rate: 44.1 kHz",
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        vText(
                          "File name : ${widget.state.fileNameAudio}",
                          fontSize: 12,
                          maxLines: 2,
                          fontWeight: FontWeight.w500,
                        ),
                        vText(
                          "Size : ${widget.state.sizeAudio}",
                          fontSize: 12,
                          maxLines: 2,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
            ),
          ],
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
