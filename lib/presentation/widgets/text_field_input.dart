import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voting_app/styles/colors.dart';
import 'package:voting_app/styles/text_styles.dart';

InputDecoration fieldInputDecoration(
    {String? labelText,
    Widget? suffixIcon,
    Widget? prefixIcon,
    String? hintText,
    EdgeInsetsGeometry? contentPadding}) {
  return InputDecoration(
    hintText: hintText,
    labelText: labelText,
    suffixIcon: suffixIcon,
    prefixIcon: prefixIcon,

    hintStyle: sspStyle.copyWith(
        color: kMiniBlack, fontSize: 16, fontWeight: FontWeight.w400),
    border: OutlineInputBorder(
        borderSide: const BorderSide(
          color: kPrimaryColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15)),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: kPrimaryColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15)),
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: kPrimaryColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15)),
    errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: kErrorColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15)),

    filled: false,
    labelStyle: const TextStyle(color: Color(0xff9A9A9A)),
    errorStyle: const TextStyle(),
    // errorMaxLines: 4,
    // helperMaxLines: 4,

    isDense: true,
  );
}
