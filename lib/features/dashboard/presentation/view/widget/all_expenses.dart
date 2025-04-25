import 'package:dash_board_app/features/dashboard/presentation/view/widget/all_expenses_header.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/all_expenses_item_list.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/custom_container.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
