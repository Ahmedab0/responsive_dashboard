import 'package:flutter/material.dart';
import '../model/user_info_model.dart';
import '../utils/app_images.dart';
import '../widget/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoModel> usersInfo = [
    UserInfoModel(
        img: Assets.imagesFrame3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        img: Assets.imagesFrame1,
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        img: Assets.imagesFrame3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => IntrinsicWidth(
            child: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: UserInfoListTile(userInfoModel: usersInfo[index]),
        )),
        itemCount: usersInfo.length,
      ),
    );

/*

/// Another Way

SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: usersInfo
              .map((e) => IntrinsicWidth(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: UserInfoListTile(userInfoModel: e),
                  )))
              .toList()),
    );

*/
  }
}
