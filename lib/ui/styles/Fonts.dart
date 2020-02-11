import 'package:flutter/material.dart';

class Font {
  static final baseTextStyle = const TextStyle(
    fontFamily: "Poppins",
  );

  static final headerTextStyle = baseTextStyle.copyWith(
    color: Colors.white,
    fontSize: 32.0,
    fontWeight: FontWeight.w600,
  );
  static final regularTextStyle = baseTextStyle.copyWith(
    color: const Color(0xFF6bb2df),
    fontSize: 15.0,
    fontWeight: FontWeight.w400,
  );
  static final subHeaderTextStyle = baseTextStyle.copyWith(
    color: Color(0xFFFFFFFFF),
    fontSize: 20.0,
  );
}