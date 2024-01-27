import 'package:flutter/material.dart';
import '../model/user_info_model.dart';
import '../utils/app_images.dart';
import '../widget/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoModel> usersInfo = [
    UserInfoModel(
        img: Assets.imagesFrame1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        img: Assets.imagesFrame2,
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        img: Assets.imagesFrame3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) =>
          UserInfoListTile(userInfoModel: usersInfo[index]),
      itemCount: usersInfo.length,
    );
  }
}
