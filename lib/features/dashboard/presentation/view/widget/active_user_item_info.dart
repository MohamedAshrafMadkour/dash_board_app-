import 'package:dash_board_app/core/utils/styles.dart';
import 'package:dash_board_app/features/dashboard/data/model/user_info_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveUserItemInfo extends StatelessWidget {
  const ActiveUserItemInfo({super.key, required this.infoModel});

  final UserInfoItemModel infoModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(infoModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(infoModel.title, style: Styles.textRegular16(context)),
      ),
    );
  }
}
