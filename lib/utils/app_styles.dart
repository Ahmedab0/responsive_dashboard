import 'package:flutter/material.dart';
import '../utils/size_config.dart';

abstract class AppStyles {
  /// regular12
  static TextStyle regular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, baseFontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  /// regular14
  static TextStyle regular14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, baseFontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  /// regular16
  static TextStyle regular16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  /// medium16
  static TextStyle medium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  /// medium20
  static TextStyle medium20(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  /// semiBold16
  static TextStyle semiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  /// semiBold18
  static TextStyle semiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, baseFontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  /// semiBold20
  static TextStyle semiBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  /// semiBold24
  static TextStyle semiBold24(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4DB7F2),
      fontSize: getResponsiveFontSize(context, baseFontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  /// bold16
  static TextStyle bold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }
}

// # 1 ScaleFactor    // # 2 Responsive FontSize     // #3 (Min - Max) FontSize

// # 2 Responsive FontSize
double getResponsiveFontSize(BuildContext context,
    {required double baseFontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = baseFontSize * scaleFactor;
// #3 (Min - Max) FontSize
  double lowerLimit = baseFontSize * 0.8;
  double upperLimit = baseFontSize * 1.2;

  //log('responsiveFontSize = $responsiveFontSize / lowerLimit = $lowerLimit / upperLimit = $upperLimit / clamp = ${responsiveFontSize.clamp(lowerLimit, upperLimit)}');

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

// # 1 ScaleFactor
double getScaleFactor(BuildContext context) {
  /// to avoid context Problem in MediaQuery we can use this way in four steps.
  // 1.
  //var dispatcher = PlatformDispatcher.instance;
  // 2.
  //var physicalWidth = dispatcher.views.first.physicalSize.width;
  // 3.
  //var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // 4.
  //double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tabletBreakPoint) {
    // Mobile Platform w 400
    return width / 550;
  } else if (width < SizeConfig.desktopBreakPoint) {
    // Tablet Platform w 700
    return width / 1000;
  } else {
    // Desktop Platform w 1000
    return width / 1900;
  }
}
