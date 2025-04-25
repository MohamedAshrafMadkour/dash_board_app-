import 'package:dash_board_app/features/dashboard/presentation/view/widget/chart_design.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/income_details.dart';
import 'package:flutter/material.dart';

class AllIncomeItems extends StatelessWidget {
  const AllIncomeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: ChartDesign()),
        Expanded(flex: 2, child: IncomeDetailsList()),
      ],
    );
  }
}
