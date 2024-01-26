import 'dart:developer';

import 'package:flutter/material.dart';

// # 1 ScaleFactor    // # 2 Responsive FontSize     // #3 (Min - Max) FontSize

// # 2 Responsive FontSize
double getResponsiveFontSize(BuildContext context,
    {required double baseFontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = baseFontSize * scaleFactor;
// #3 (Min - Max) FontSize
  double lowerLimit = baseFontSize * 0.8;
  double upperLimit = baseFontSize * 1.2;
  log('responsiveFontSize = $responsiveFontSize / lowerLimit = $lowerLimit / upperLimit = $upperLimit / clamp = ${responsiveFontSize.clamp(lowerLimit, upperLimit)}');
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

// # 1 ScaleFactor
double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    // Mobile Platform w 400
    return width / 400;
  } else if (width < 900) {
    // Tablet Platform w 700
    return width / 700;
  } else {
    // Desktop Platform w 1000
    return width / 1000;
  }
}

abstract class AppStyles {
  /// regular16
  static const TextStyle regular16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  /// medium16
  static const TextStyle medium16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  /// semiBold16
  static const TextStyle semiBold16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  /// semiBold20
  static const TextStyle semiBold20 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  /// regular12
  static const TextStyle regular12 = TextStyle(
    color: Color(0xFFAAAAAA),
    fontSize: 12,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  /// semiBold24
  static const TextStyle semiBold24 = TextStyle(
    color: Color(0xFF4DB7F2),
    fontSize: 24,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  /// regular14
  static const TextStyle regular14 = TextStyle(
    color: Color(0xFFAAAAAA),
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  /// semiBold18
  static const TextStyle semiBold18 = TextStyle(
    color: Color(0xFF4EB7F2),
    fontSize: 18,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  /// bold16
  static const TextStyle bold16 = TextStyle(
    color: Color(0xFF4EB7F2),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );

  /// medium20
  static const TextStyle medium20 = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
}
