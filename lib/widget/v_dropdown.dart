import 'package:cloud_storage/models/general/bank_res.dart';
import 'package:cloud_storage/models/general/genre_res.dart';
import 'package:cloud_storage/models/general/label_res.dart';
import 'package:cloud_storage/models/general/language_res.dart';
import 'package:cloud_storage/models/general/publishing_res.dart';
import 'package:cloud_storage/models/general/roles_res.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VDropDown extends StatelessWidget {
  String value;
  ValueChanged<String?>? onChanged;
  List<DropdownMenuItem<String>> items;
  double fontSize;
  Color colorText;
  FontWeight fontWeight;
  double paddingHorizontal;
  double paddingVertical;
  double radius;
  double borderWidth;
  Color borderColor;
  Color bgColor;
  Widget icon;

  VDropDown({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.items,
    this.fontSize = 12,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.paddingHorizontal = 15,
    this.paddingVertical = 0,
    this.radius = 0,
    this.borderWidth = 1,
    this.bgColor = Colors.white,
    required this.icon,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: borderWidth,color: borderColor)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          value: value,
          icon: Icon(Icons.arrow_drop_down),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          onChanged: onChanged,
          items: items,
        ),
      ),
    );
  }
}

class VDropDownLanguage extends StatelessWidget {
  LanguageRes? value;
  ValueChanged<LanguageRes?>? onChanged;
  List<DropdownMenuItem<LanguageRes>> items;
  double fontSize;
  Color colorText;
  FontWeight fontWeight;
  double paddingHorizontal;
  double paddingVertical;
  double radius;
  double borderWidth;
  Color borderColor;
  Color bgColor;
  Widget icon;

  VDropDownLanguage({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.items,
    this.fontSize = 12,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.paddingHorizontal = 15,
    this.paddingVertical = 0,
    this.radius = 0,
    this.borderWidth = 1,
    this.bgColor = Colors.white,
    required this.icon,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: borderWidth,color: borderColor)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<LanguageRes>(
          isExpanded: true,
          value: value,
          icon: Icon(Icons.arrow_drop_down),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          onChanged: onChanged,
          items: items,
        ),
      ),
    );
  }
}

class VDropDownGenre extends StatelessWidget {
  GenreRes? value;
  ValueChanged<GenreRes?>? onChanged;
  List<DropdownMenuItem<GenreRes>> items;
  double fontSize;
  Color colorText;
  FontWeight fontWeight;
  double paddingHorizontal;
  double paddingVertical;
  double radius;
  double borderWidth;
  Color borderColor;
  Color bgColor;
  Widget icon;

  VDropDownGenre({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.items,
    this.fontSize = 12,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.paddingHorizontal = 15,
    this.paddingVertical = 0,
    this.radius = 0,
    this.borderWidth = 1,
    this.bgColor = Colors.white,
    required this.icon,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: borderWidth,color: borderColor)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<GenreRes>(
          isExpanded: true,
          value: value,
          icon: Icon(Icons.arrow_drop_down),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          onChanged: onChanged,
          items: items,
        ),
      ),
    );
  }
}

class VDropDownRole extends StatelessWidget {
  RolesRes? value;
  ValueChanged<RolesRes?>? onChanged;
  List<DropdownMenuItem<RolesRes>> items;
  double fontSize;
  Color colorText;
  FontWeight fontWeight;
  double paddingHorizontal;
  double paddingVertical;
  double radius;
  double borderWidth;
  Color borderColor;
  Color bgColor;
  Widget icon;

  VDropDownRole({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.items,
    this.fontSize = 12,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.paddingHorizontal = 15,
    this.paddingVertical = 0,
    this.radius = 0,
    this.borderWidth = 1,
    this.bgColor = Colors.white,
    required this.icon,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: borderWidth,color: borderColor)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<RolesRes>(
          isExpanded: true,
          value: value,
          icon: Icon(Icons.arrow_drop_down),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          onChanged: onChanged,
          items: items,
        ),
      ),
    );
  }
}

class VDropDownPublishing extends StatelessWidget {
  PublishingRes? value;
  ValueChanged<PublishingRes?>? onChanged;
  List<DropdownMenuItem<PublishingRes>> items;
  double fontSize;
  Color colorText;
  FontWeight fontWeight;
  double paddingHorizontal;
  double paddingVertical;
  double radius;
  double borderWidth;
  Color borderColor;
  Color bgColor;
  Widget icon;

  VDropDownPublishing({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.items,
    this.fontSize = 12,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.paddingHorizontal = 15,
    this.paddingVertical = 0,
    this.radius = 0,
    this.borderWidth = 1,
    this.bgColor = Colors.white,
    required this.icon,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: borderWidth,color: borderColor)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<PublishingRes>(
          isExpanded: true,
          value: value,
          icon: Icon(Icons.arrow_drop_down),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          onChanged: onChanged,
          items: items,
        ),
      ),
    );
  }
}

class VDropDownLabel extends StatelessWidget {
  LabelRes? value;
  ValueChanged<LabelRes?>? onChanged;
  List<DropdownMenuItem<LabelRes>> items;
  double fontSize;
  Color colorText;
  FontWeight fontWeight;
  double paddingHorizontal;
  double paddingVertical;
  double radius;
  double borderWidth;
  Color borderColor;
  Color bgColor;
  Widget icon;

  VDropDownLabel({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.items,
    this.fontSize = 12,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.paddingHorizontal = 15,
    this.paddingVertical = 0,
    this.radius = 0,
    this.borderWidth = 1,
    this.bgColor = Colors.white,
    required this.icon,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: borderWidth,color: borderColor)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<LabelRes>(
          isExpanded: true,
          value: value,
          icon: Icon(Icons.arrow_drop_down),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          onChanged: onChanged,
          items: items,
        ),
      ),
    );
  }
}

class VDropDownBank extends StatelessWidget {
  BankRes? value;
  ValueChanged<BankRes?>? onChanged;
  List<DropdownMenuItem<BankRes>> items;
  double fontSize;
  Color colorText;
  FontWeight fontWeight;
  double paddingHorizontal;
  double paddingVertical;
  double radius;
  double borderWidth;
  Color borderColor;
  Color bgColor;
  Widget icon;

  VDropDownBank({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.items,
    this.fontSize = 12,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.paddingHorizontal = 15,
    this.paddingVertical = 0,
    this.radius = 0,
    this.borderWidth = 1,
    this.bgColor = Colors.white,
    required this.icon,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: borderWidth,color: borderColor)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<BankRes>(
          isExpanded: true,
          value: value,
          icon: Icon(Icons.arrow_drop_down),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          onChanged: onChanged,
          items: items,
        ),
      ),
    );
  }
}




