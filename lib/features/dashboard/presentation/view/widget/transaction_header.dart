import 'package:dash_board_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Transaction History', style: Styles.textSemiBold20(context)),
        const Expanded(child: SizedBox(width: 20)),
        Text(
          'See all',
          style: Styles.textMedium16(
            context,
          ).copyWith(color: const Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
