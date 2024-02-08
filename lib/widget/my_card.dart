import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/utils/app_images.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/utils/size_config.dart';

import 'custom_background_container.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.only(left: 31, top: 20, right: 24),
        decoration: BoxDecoration(
          color: const Color(0xFF4EB7F2),
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCard),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Name Card
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name card',
                      style: AppStyles.regular16(context)
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Syah Bandi',
                      style: AppStyles.medium20(context),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 21.0),
                  child: SvgPicture.asset(Assets.imagesGallery),
                ),
              ],
            ),
            //
            const Expanded(child: SizedBox()),
            // card number
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.semiBold24(context)
                        .copyWith(color: Colors.white),
                  ),
                ),
                SizedBox(height: width >= 1350 ? 12 : 1),
                Text(
                  '12/20 - 124',
                  style: AppStyles.regular16(context)
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
            /* const Flexible(
              child: SizedBox(height: 27),
            ), */
            // OR
            SizedBox(height: width >= 1450 ? 27 : 6)
          ],
        ),
      ),
    );
  }
}

/*ListTile(
  title: const Text(
    'Name card',
    style: AppStyles.regular16,
  ),
  subtitle: const Text(
    'Syah Bandi',
    style: AppStyles.medium20,
  ),
  trailing: SvgPicture.asset(Assets.imagesGallery),
),*/