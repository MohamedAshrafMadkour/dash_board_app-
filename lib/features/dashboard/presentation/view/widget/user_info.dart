import 'package:dash_board_app/core/assets/app_image.dart';
import 'package:dash_board_app/features/dashboard/data/model/quick_model.dart';
import 'package:dash_board_app/features/dashboard/data/model/user_info_item_model.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/user_info_item.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/user_info_item_list.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/user_tile.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: const Color(0xffFFFFFF),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserTile(
              quickModel: QuickModel(
                image: Assets.imagesAvatar1,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          UserInfoItemList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                ActiveAndInActiveUserItemInfo(
                  isActive: false,
                  infoModel: UserInfoItemModel(
                    title: 'Settings System',
                    image: Assets.imagesSetting2,
                  ),
                ),
                ActiveAndInActiveUserItemInfo(
                  isActive: false,
                  infoModel: UserInfoItemModel(
                    title: 'Logout account',
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
