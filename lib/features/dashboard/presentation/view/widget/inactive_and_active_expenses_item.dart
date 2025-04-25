import 'package:dash_board_app/features/dashboard/data/model/all_expenses_item_model.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/active_expenses_item.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/in_active_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItems extends StatelessWidget {
  const AllExpensesItems({
    super.key,
    required this.itemsModel,
    required this.isActive,
  });
  final AllExpensesItemModel itemsModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveExpensesItem(itemsModel: itemsModel)
        : InActiveExpensesItem(itemsModel: itemsModel);
  }
}
