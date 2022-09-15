import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/utils/utils.dart';

Widget vText(
  String title, {
  Color color = Colors.black,
  double? fontSize,
  FontWeight? fontWeight,
  TextOverflow overflow = TextOverflow.ellipsis,
  TextAlign align = TextAlign.left,
  bool money = false,
  bool number = false,
  bool poppins = true,
  decoration,
  int maxLines = 2,
  letterSpacing,
  FontStyle? fontStyle,
}) {
  return Text(
    title != null && title != "null"
        ? money || number
            ? Utils.formatNumberToRupiah(int.parse(title))
            : title
        : title,
    style: GoogleFonts.poppins(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      decoration: decoration,
      fontStyle: fontStyle ?? FontStyle.normal,
      letterSpacing: letterSpacing ?? null,
    ),
    overflow: overflow,
    textAlign: align,
    maxLines: maxLines,
  );
}

class VInputText extends StatelessWidget {
  final TextInputType? keyboardType;
  final String hint;
  final TextEditingController? controller;
  final TextCapitalization capitalization;
  final validator;
  final onSaved;
  final onTap;
  final onFieldSubmitted;
  final double? width;
  final double? height;
  final double contentPadding;
  final onChange;
  final initialValue;
  final suffixIcon;
  final prefixIcon;
  final bool enabled;
  final bool readOnly;
  final int? maxLines;
  final int? minLines;
  final double? fontSize;
  final int? maxLength;
  final bool obscureText;
  final Color? fillColor;
  final Color? activeColor;
  final Color? outlineColor;
  final Color? textColor;
  final double? radius;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;

  VInputText(
    this.hint, {
    this.keyboardType,
    this.width,
    this.height,
    this.contentPadding = 10,
    this.readOnly = false,
    this.controller,
    this.validator,
    this.onSaved,
    this.onFieldSubmitted,
    this.initialValue,
    this.enabled = true,
    this.onChange,
    this.onTap,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLines,
    this.fontSize,
    this.minLines,
    this.maxLength,
    this.capitalization = TextCapitalization.none,
    this.obscureText = false,
    this.fillColor = Colors.white,
    this.textColor = CPBlack1,
    this.activeColor = CPBlack1,
    this.outlineColor = CPBlack1,
    this.radius,
    this.textInputAction,
        this.textAlign
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: TextFormField(
        enabled: enabled,
        initialValue: initialValue ?? null,
        controller: controller ?? null,
        obscureText: obscureText,
        textInputAction: textInputAction ?? null,
        decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: activeColor ?? Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(radius ?? 8.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: outlineColor ?? Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(radius ?? 8.0),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: outlineColor ?? Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(radius ?? 8.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: outlineColor ?? Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(radius ?? 8.0),
          ),
          hintText: hint,
          contentPadding: EdgeInsets.all(contentPadding),
          hintStyle: TextStyle(
              fontSize: fontSize, color: CPGrey1, fontFamily: 'Mulish'),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
        ),
        keyboardType: this.keyboardType ?? TextInputType.text,
        style: TextStyle(
            fontFamily: 'Mulish',
            fontSize: fontSize, //
            color: enabled ? Colors.black : textColor),
        // style: GoogleFonts.ubuntu(
        //     fontSize: fontSize, color: textColor ?? Colors.black),
        textCapitalization: capitalization,
        validator: validator,
        onSaved: onSaved,
        onChanged: onChange,
        maxLines: maxLines,
        minLines: minLines,
        readOnly: readOnly,
        maxLength: maxLength,
        onFieldSubmitted: onFieldSubmitted,
        onTap: onTap,
        textAlign: textAlign ?? TextAlign.start,
      ),
    );
  }
}
