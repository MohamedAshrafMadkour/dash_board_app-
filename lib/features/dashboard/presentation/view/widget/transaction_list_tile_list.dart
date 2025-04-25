import 'package:dash_board_app/features/dashboard/data/model/transaction_model.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/transaction_list_tile.dart';
import 'package:flutter/material.dart';

class TransactionListTileListView extends StatelessWidget {
  const TransactionListTileListView({super.key});
  static const items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      subTitle: '13 Apr, 2022 ',
      date: r'$20,129',
      isColoured: true,
    ),
    TransactionModel(
      title: ' Landing Page project',
      subTitle: '13 Apr, 2022 ',
      date: r'$20,022',
      isColoured: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      subTitle: '13 Apr, 2022 ',
      date: r'$20,129',
      isColoured: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionTile(transactionModel: e)).toList(),
    );
  }
}
