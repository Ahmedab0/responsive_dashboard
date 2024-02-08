import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/widget/custom_text_field.dart';

class CustomTitleTextField extends StatelessWidget {
  const CustomTitleTextField(
      {super.key, required this.title, required this.hintText});
  final String title, hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.medium16(context),
        ),
        const SizedBox(height: 12),
        CustomTextField(hintText: hintText)
      ],
    );
  }
}
