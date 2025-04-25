import 'package:dash_board_app/core/utils/styles.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/quick_invoice_item.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: Styles.textMedium16(context)),
        const SizedBox(height: 12),
        const QuickItemHorizontal(),
      ],
    );
  }
}
