import 'package:dash_board_app/core/utils/size_config.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/all_income_items.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/detailed_chart_design.dart';
import 'package:flutter/material.dart';

class IncomeItems extends StatelessWidget {
  const IncomeItems({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return width <= 1010 && width > SizeConfig.tablet
        ? const Expanded(child: DetailedChartDesign())
        : const AllIncomeItems();
  }
}
