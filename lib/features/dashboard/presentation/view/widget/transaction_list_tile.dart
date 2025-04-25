import 'package:dash_board_app/core/utils/styles.dart';
import 'package:dash_board_app/features/dashboard/data/model/transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: Styles.textSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.subTitle,
          style: Styles.textRegular16(
            context,
          ).copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionModel.date,
          style: Styles.textSemiBold20(context).copyWith(
            color:
                transactionModel.isColoured
                    ? const Color(0xffF3735E)
                    : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
