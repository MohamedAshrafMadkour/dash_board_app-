import 'package:dash_board_app/features/dashboard/presentation/view/widget/all_expenses.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/quick_invoice_section.dart';
import 'package:flutter/material.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(height: 16),
        Expanded(child: QuickInvoiceSection()),
      ],
    );
  }
}
