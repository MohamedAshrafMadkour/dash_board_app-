import 'package:dash_board_app/features/dashboard/presentation/view/widget/all_expenses_and_quick_invoice.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/third_section.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/user_info.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: UserInfo()),
        Expanded(flex: 5, child: SecondAndThirdSection()),
      ],
    );
  }
}

class SecondAndThirdSection extends StatelessWidget {
  const SecondAndThirdSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              children: [
                SizedBox(width: 24),
                Expanded(flex: 3, child: AllExpensesAndQuickInvoice()),
                SizedBox(width: 24),
                Expanded(flex: 2, child: ThirdSection()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
