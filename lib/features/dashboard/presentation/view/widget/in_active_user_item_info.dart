import 'package:dash_board_app/core/utils/styles.dart';
import 'package:dash_board_app/features/dashboard/data/model/user_info_item_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class InActiveUserItemInfo extends StatelessWidget {
  const InActiveUserItemInfo({super.key, required this.infoModel});

  final UserInfoItemModel infoModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(infoModel.image),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(infoModel.title, style: Styles.textSemiBold18(context)),
      ),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Color(0xff4EB7F2)),
      ),
    );
  }
}
