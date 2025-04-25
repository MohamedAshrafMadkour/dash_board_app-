import 'package:dash_board_app/features/dashboard/presentation/view/widget/all_expenses_and_quick_invoice.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/card_section.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/chart_design.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/custom_container.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/income_details.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/income_header.dart';
import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      borderRadius: BorderRadius.zero,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Flexible(child: AllExpensesAndQuickInvoice()),
                SizedBox(height: 24),
                CardSection(),
                SizedBox(height: 24),
                Divider(height: 48, color: Color(0xffF1F1F1)),
                IncomeHeader(),
                Row(
                  children: [
                    Expanded(child: ChartDesign()),
                    Expanded(child: IncomeDetailsList()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
