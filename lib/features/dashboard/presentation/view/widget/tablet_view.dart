import 'package:dash_board_app/features/dashboard/presentation/view/widget/mobile_view.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/user_info.dart';
import 'package:flutter/material.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        children: [
          Expanded(child: UserInfo()),
          SizedBox(width: 24),
          Expanded(flex: 3, child: MobileView()),
          SizedBox(width: 24),
        ],
      ),
    );
  }
}
