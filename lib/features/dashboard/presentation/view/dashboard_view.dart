import 'package:dash_board_app/core/utils/size_config.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/adaptive_layout.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/desktop_layout.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/mobile_view.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/tablet_view.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/user_info.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar:
          width < SizeConfig.tablet
              ? AppBar(
                backgroundColor: Colors.blue,
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu, color: Colors.white),
                ),
              )
              : null,
      key: scaffoldKey,
      drawer: const UserInfo(),
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveWidget(
        mobileLayout: (context) => const MobileView(),
        tabletLayout: (context) => const TabletView(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
