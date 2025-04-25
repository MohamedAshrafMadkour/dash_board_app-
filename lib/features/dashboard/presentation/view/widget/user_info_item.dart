import 'package:dash_board_app/features/dashboard/data/model/user_info_item_model.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/active_user_item_info.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/in_active_user_item_info.dart';
import 'package:flutter/material.dart';

class ActiveAndInActiveUserItemInfo extends StatelessWidget {
  const ActiveAndInActiveUserItemInfo({
    super.key,
    required this.infoModel,
    required this.isActive,
  });
  final UserInfoItemModel infoModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? InActiveUserItemInfo(infoModel: infoModel)
        : ActiveUserItemInfo(infoModel: infoModel);
  }
}
