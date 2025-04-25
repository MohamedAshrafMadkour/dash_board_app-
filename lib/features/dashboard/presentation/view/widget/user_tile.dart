import 'package:dash_board_app/core/utils/styles.dart';
import 'package:dash_board_app/features/dashboard/data/model/quick_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserTile extends StatelessWidget {
  const UserTile({super.key, required this.quickModel});
  final QuickModel quickModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(quickModel.image),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(quickModel.title, style: Styles.textSemiBold16(context)),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            quickModel.subTitle,
            style: Styles.textRegular12(context),
          ),
        ),
      ),
    );
  }
}
