import 'package:dash_board_app/core/utils/styles.dart';
import 'package:dash_board_app/features/dashboard/data/model/all_expenses_item_model.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/all_expenses_item_header.dart';
import 'package:flutter/material.dart';

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({super.key, required this.itemsModel});

  final AllExpensesItemModel itemsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 1, color: Color(0xffFAFAFA)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(itemModel: itemsModel),
          const SizedBox(height: 34),
          Text(itemsModel.address, style: Styles.textSemiBold16(context)),
          const SizedBox(height: 20),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('April 2022', style: Styles.textRegular14(context)),
          ),
          const SizedBox(height: 20),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(r'$20,129', style: Styles.textSemiBold24(context)),
          ),
        ],
      ),
    );
  }
}
