import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'views/my_home_page.dart';

void main() {
  runApp(const MyApp());
  //runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //locale: DevicePreview.locale(context),
      //builder: DevicePreview.appBuilder,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(primary: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

// # 1 ScaleFactor
// # 2 Responsive FontSize
// #3 (Min - Max) FontSize

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
