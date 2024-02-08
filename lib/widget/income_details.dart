import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails(
      {super.key,
      required this.title,
      required this.amount,
      required this.clr});

  final String title, amount;
  final Color clr;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: clr,
        radius: 12,
      ),
      title: Text(
        title,
        style: AppStyles.regular16(context),
      ),
      trailing: Text(
        amount,
        style: AppStyles.medium16(context)
            .copyWith(color: const Color(0xff208CC8)),
      ),
    );
  }
}
