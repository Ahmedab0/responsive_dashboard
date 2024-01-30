import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_dashboard/model/user_info_model.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0.0),
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: Center(
        child: ListTile(
          contentPadding: const EdgeInsets.all(12.0),
          leading: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SvgPicture.asset(
              userInfoModel.img,
              width: 32,
              height: 32,
            ),
          ),
          title: Text(
            userInfoModel.title,
            style: AppStyles.semiBold16,
          ),
          subtitle: Text(
            userInfoModel.subtitle,
            style: AppStyles.regular12,
          ),
        ),
      ),
    );
  }
}
