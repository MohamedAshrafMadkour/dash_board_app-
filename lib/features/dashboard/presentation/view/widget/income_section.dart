import 'package:dash_board_app/features/dashboard/presentation/view/widget/income_header.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/income_items.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(height: 48, color: Color(0xffF1F1F1)),
          IncomeHeader(),
          IncomeItems(),
        ],
      ),
    );
  }
}
