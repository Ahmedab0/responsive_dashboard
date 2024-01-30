import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.bgClr,
      required this.txtClr,
      required this.txt});

  final Color? bgClr, txtClr;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        foregroundColor: txtClr ?? Colors.white,
        backgroundColor: bgClr ?? const Color(0xFF4DB7F2),
        padding: const EdgeInsets.all(20.0),
      ),
      onPressed: () {},
      child: Text(
        txt,
        style: AppStyles.semiBold18.copyWith(color: txtClr ?? Colors.white),
      ),
    );
  }
}
