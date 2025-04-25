import 'package:dash_board_app/core/assets/app_image.dart';
import 'package:dash_board_app/features/dashboard/data/model/quick_model.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/user_tile.dart';
import 'package:flutter/material.dart';

class QuickItemHorizontal extends StatelessWidget {
  const QuickItemHorizontal({super.key});
  static const items = [
    QuickModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    QuickModel(
      image: Assets.imagesAvatar2,
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
    ),
    QuickModel(
      image: Assets.imagesAvatar1,
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            items
                .map(
                  (e) => IntrinsicWidth(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: UserTile(quickModel: e),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
