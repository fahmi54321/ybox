import 'dart:io';

import 'package:cloud_storage/models/general/genre_res.dart';
import 'package:cloud_storage/models/general/label_res.dart';
import 'package:cloud_storage/models/general/language_res.dart';
import 'package:cloud_storage/pages/form/main_form_state.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/utils/utils.dart';
import 'package:cloud_storage/widget/v_dropdown.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class MainInfoAlbumPage extends StatefulWidget {
  static String tag = '/MainInfoAlbumPage';

  MainFormState state;

  MainInfoAlbumPage({required this.state});

  @override
  MainInfoAlbumPageState createState() => MainInfoAlbumPageState();
}

class MainInfoAlbumPageState extends State<MainInfoAlbumPage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildCoverImage(context),
        buildLanguage(context, widget.state),
        buildTitle(context, widget.state),
        buildArtist(context, widget.state),
        buildInfo(context, widget.state),
      ],
    );
  }

  Column buildInfo(BuildContext context, MainFormState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Info",
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
                              (state.isLoadingGenre == true)
                                  ? CircularProgressIndicator(
                                      color: CPPrimaryColor,
                                    )
                                  : VDropDownGenre(
                                      value: state.genreRes1Main,
                                      onChanged: (GenreRes? data) {
                                        setState(() {
                                          state.genreRes1Main = data;
                                        });
                                      },
                                      items: state.listGenre
                                          .map<DropdownMenuItem<GenreRes>>(
                                              (GenreRes value) {
                                        return DropdownMenuItem<GenreRes>(
                                          value: value,
                                          child: Text(value.name),
                                        );
                                      }).toList(),
                                      borderColor:
                                          CPPrimaryColor.withOpacity(0.1),
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
                              (state.isLoadingGenre == true)
                                  ? CircularProgressIndicator(
                                      color: CPPrimaryColor,
                                    )
                                  : VDropDownGenre(
                                      value: state.genreRes2Main,
                                      onChanged: (GenreRes? data) {
                                        setState(() {
                                          state.genreRes2Main = data;
                                        });
                                      },
                                      items: state.listGenre
                                          .map<DropdownMenuItem<GenreRes>>(
                                              (GenreRes value) {
                                        return DropdownMenuItem<GenreRes>(
                                          value: value,
                                          child: Text(value.name),
                                        );
                                      }).toList(),
                                      borderColor:
                                          CPPrimaryColor.withOpacity(0.1),
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
                                controller: state.mainInputCopyrightP,
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
                                "(C) Copyright",
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
                                controller: state.mainInputCopyrightC,
                                fillColor: CPPrimaryColor.withOpacity(0.04),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        vText(
                          "Previously released?",
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Radio<int>(
                              groupValue: state.selectInputPrevRelease,
                              value: state.noInputPrevRelease,
                              onChanged: (val) {
                                setState(() {
                                  state.selectInputPrevRelease = val ?? 0;
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
                              groupValue: state.selectInputPrevRelease,
                              value: state.yesInputPrevRelease,
                              onChanged: (val) {
                                setState(() {
                                  state.selectInputPrevRelease = val ?? 0;
                                });
                              },
                              activeColor: CPPrimaryColor,
                            ),
                            vText('Yes', fontSize: 10),
                          ],
                        ),
                        SizedBox(height: 5),
                        (state.selectInputPrevRelease ==
                                state.yesInputPrevRelease)
                            ? InkWell(
                                onTap: () async {
                                  DateTime? newDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime.now(),
                                  );

                                  // if 'Cancel' => null
                                  if (newDate == null) return;

                                  //if 'Ok' => DateTime
                                  setState(() {
                                    state.inputPrevReleased.text =
                                        Utils.dateToString(
                                      newDate,
                                      Utils.SEND_DATE_FORMAT2,
                                    );
                                  });
                                },
                                child: VInputText(
                                  'mm/dd/yyyy...',
                                  radius: 8,
                                  outlineColor: CPPrimaryColor.withOpacity(0.1),
                                  activeColor: CPPrimaryColor,
                                  fontSize: 10,
                                  enabled: false,
                                  controller: state.inputPrevReleased,
                                  fillColor: CPPrimaryColor.withOpacity(0.04),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        vText(
                          "On a record label?",
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Radio<int>(
                              groupValue: state.selectInputLabel,
                              value: state.noInputLabel,
                              onChanged: (val) {
                                setState(() {
                                  state.selectInputLabel = val ?? 0;
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
                              groupValue: state.selectInputLabel,
                              value: state.yesInputLabel,
                              onChanged: (val) {
                                setState(() {
                                  state.selectInputLabel = val ?? 0;
                                });
                              },
                              activeColor: CPPrimaryColor,
                            ),
                            vText('Yes', fontSize: 10),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    (state.selectInputLabel == state.yesInputLabel)
                        ? Row(
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
                                    (widget.state.isLoadingLabelReq == true)
                                        ? CircularProgressIndicator(
                                            color: CPPrimaryColor,
                                          )
                                        : VDropDownLabel(
                                            value: state.mainLabel,
                                            onChanged: (LabelRes? data) {
                                              setState(() {
                                                state.mainLabel = data ??
                                                    LabelRes(
                                                      id: 0,
                                                      nama: '',
                                                      labelCode: 0,
                                                    );
                                              });
                                            },
                                            items: state.listLabelReq.map<
                                                    DropdownMenuItem<LabelRes>>(
                                                (LabelRes value) {
                                              return DropdownMenuItem<LabelRes>(
                                                value: value,
                                                child: Text(value.nama),
                                              );
                                            }).toList(),
                                            borderColor:
                                                CPPrimaryColor.withOpacity(0.1),
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
                                      "Internal release ID",
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    SizedBox(height: 8),
                                    VInputText(
                                      'Input here...',
                                      radius: 8,
                                      outlineColor:
                                          CPPrimaryColor.withOpacity(0.1),
                                      activeColor: CPPrimaryColor,
                                      fontSize: 10,
                                      keyboardType: TextInputType.number,
                                      controller: state.inputReleaseId,
                                      fillColor:
                                          CPPrimaryColor.withOpacity(0.04),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Container(),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        vText(
                          "Do you already have a UPC/EAN/JAN?",
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Radio<int>(
                              groupValue: state.selectInputUPC,
                              value: state.noInputUPC,
                              onChanged: (val) {
                                setState(() {
                                  state.selectInputUPC = val ?? 0;
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
                              groupValue: state.selectInputUPC,
                              value: state.yesInputUPC,
                              onChanged: (val) {
                                setState(() {
                                  state.selectInputUPC = val ?? 0;
                                });
                              },
                              activeColor: CPPrimaryColor,
                            ),
                            vText(
                                'Yes (required if previously released = yes above)',
                                fontSize: 10),
                          ],
                        ),
                        SizedBox(height: 5),
                        (state.selectInputUPC == state.yesInputUPC)
                            ? VInputText(
                                'Input here...',
                                radius: 8,
                                outlineColor: CPPrimaryColor.withOpacity(0.1),
                                activeColor: CPPrimaryColor,
                                fontSize: 10,
                                controller: state.inputUpc,
                                keyboardType: TextInputType.number,
                                fillColor: CPPrimaryColor.withOpacity(0.04),
                              )
                            : Container(),
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

  Column buildArtist(BuildContext context, MainFormState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Artist",
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        vText(
                          "Artist(s) – indicate ONLY ONE per field",
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
                          controller: state.mainInputArtist,
                          fillColor: CPPrimaryColor.withOpacity(0.04),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    vText(
                      'Artist already on Spotify?',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        Row(
                          children: [
                            Radio<int>(
                              groupValue: state.mainSelectInputArtistSpotify,
                              value: state.mainNoInputArtistSpotify,
                              onChanged: (val) {
                                setState(() {
                                  state.mainSelectInputArtistSpotify = val ?? 0;
                                });
                              },
                              activeColor: CPPrimaryColor,
                            ),
                            Expanded(
                              child: vText(
                                'No, create a new Spotify profile for this artist',
                                fontSize: 10,
                                maxLines: 3,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio<int>(
                              groupValue: state.mainSelectInputArtistSpotify,
                              value: state.mainYesInputArtistSpotify,
                              onChanged: (val) {
                                setState(() {
                                  state.mainSelectInputArtistSpotify = val ?? 0;
                                });
                              },
                              activeColor: CPPrimaryColor,
                            ),
                            vText('Yes', fontSize: 10),
                          ],
                        ),
                        SizedBox(height: 5),
                        (state.mainSelectInputArtistSpotify == 0)
                            ? Container()
                            : VInputText(
                                'Input here..',
                                radius: 8,
                                outlineColor: CPPrimaryColor.withOpacity(0.1),
                                activeColor: CPPrimaryColor,
                                fontSize: 10,
                                controller: state.mainInputArtistSpotify,
                                fillColor: CPPrimaryColor.withOpacity(0.04),
                              ),
                      ],
                    ),
                    SizedBox(height: 15),
                    vText(
                      'Artist already on Apple Music?',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        Row(
                          children: [
                            Radio<int>(
                              groupValue: state.mainSelectInputArtistApple,
                              value: state.mainNoInputArtistApple,
                              onChanged: (val) {
                                setState(() {
                                  state.mainSelectInputArtistApple = val ?? 0;
                                });
                              },
                              activeColor: CPPrimaryColor,
                            ),
                            Expanded(
                              child: vText(
                                  'No, create a new Apple Music/iTunes profile for this artist.',
                                  fontSize: 10,
                                  maxLines: 3),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio<int>(
                              groupValue: state.mainSelectInputArtistApple,
                              value: state.mainYesInputArtistApple,
                              onChanged: (val) {
                                setState(() {
                                  state.mainSelectInputArtistApple = val ?? 0;
                                });
                              },
                              activeColor: CPPrimaryColor,
                            ),
                            vText('Yes', fontSize: 10),
                          ],
                        ),
                        SizedBox(height: 5),
                        (state.mainSelectInputArtistApple == 0)
                            ? Container()
                            : VInputText(
                                'Input here...',
                                radius: 8,
                                outlineColor: CPPrimaryColor.withOpacity(0.1),
                                activeColor: CPPrimaryColor,
                                fontSize: 10,
                                controller: state.mainInputArtistApple,
                                fillColor: CPPrimaryColor.withOpacity(0.04),
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

  Column buildTitle(BuildContext context, MainFormState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Title",
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
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              vText(
                                "Release title",
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
                                controller: state.mainInputTitleRelease,
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
                                controller: state.mainInputTitleVersion,
                                fillColor: CPPrimaryColor.withOpacity(0.04),
                              ),
                            ],
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

  Column buildLanguage(BuildContext context, MainFormState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Language",
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
                      "In what language will you be writing your titles, artist name(s) and release description?",
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 8),
                    (state.isLoadingLanguage == true)
                        ? CircularProgressIndicator(
                            color: CPPrimaryColor,
                          )
                        : VDropDownLanguage(
                            value: state.languageResMain,
                            onChanged: (LanguageRes? data) {
                              setState(() {
                                state.languageResMain = data;
                              });
                            },
                            items: state.listLanguage
                                .map<DropdownMenuItem<LanguageRes>>(
                                    (LanguageRes value) {
                              return DropdownMenuItem<LanguageRes>(
                                value: value,
                                child: Text(value.name),
                              );
                            }).toList(),
                            borderColor: CPPrimaryColor.withOpacity(0.1),
                            icon: Icon(Icons.arrow_drop_down),
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
}
