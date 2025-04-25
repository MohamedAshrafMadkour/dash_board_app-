import 'package:dash_board_app/core/assets/app_image.dart';
import 'package:dash_board_app/features/dashboard/data/model/user_info_item_model.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/user_info_item.dart';
import 'package:flutter/material.dart';

class UserInfoItemList extends StatefulWidget {
  const UserInfoItemList({super.key});

  @override
  State<UserInfoItemList> createState() => _UserInfoItemListState();
}

class _UserInfoItemListState extends State<UserInfoItemList> {
  int currentIndex = 0;
  final List<UserInfoItemModel> infoList = [
    const UserInfoItemModel(image: Assets.imagesCategory2, title: 'Dashboard'),
    const UserInfoItemModel(
      image: Assets.imagesConvertCard,
      title: 'My Transaction',
    ),
    const UserInfoItemModel(image: Assets.imagesGraph, title: 'Statistics'),
    const UserInfoItemModel(
      image: Assets.imagesWallet2,
      title: 'Wallet Account',
    ),
    const UserInfoItemModel(
      image: Assets.imagesChart2,
      title: 'My Investments',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: infoList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (currentIndex != index) {
              setState(() {
                currentIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ActiveAndInActiveUserItemInfo(
              isActive: currentIndex == index,
              infoModel: infoList[index],
            ),
          ),
        );
      },
    );
  }
}
