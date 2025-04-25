import 'package:dash_board_app/core/utils/styles.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/custom_monthly.dart';
import 'package:flutter/material.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Income', style: Styles.textSemiBold20(context)),
        const Expanded(child: SizedBox()),
        const CustomMonthly(),
        const SizedBox(height: 16),
      ],
    );
  }
}
