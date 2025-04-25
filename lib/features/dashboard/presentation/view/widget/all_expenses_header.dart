import 'package:dash_board_app/core/utils/styles.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/custom_monthly.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses', style: Styles.textSemiBold20(context)),
        const Expanded(child: SizedBox()),
        const CustomMonthly(),
      ],
    );
  }
}
