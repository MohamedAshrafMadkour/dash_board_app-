import 'package:dash_board_app/core/utils/styles.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/transaction_header.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/transaction_list_tile_list.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHeader(),
        const SizedBox(height: 8),
        Text(
          '13 April 2022',
          style: Styles.textMedium16(
            context,
          ).copyWith(color: const Color(0xffAAAAAA)),
        ),
        const SizedBox(height: 8),
        const TransactionListTileListView(),
      ],
    );
  }
}
