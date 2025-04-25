import 'package:dash_board_app/core/assets/app_image.dart';
import 'package:dash_board_app/features/dashboard/data/model/all_expenses_item_model.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/inactive_and_active_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> expensesItem = [
    const AllExpensesItemModel(image: Assets.imagesMoneys, address: 'Balance'),
    const AllExpensesItemModel(image: Assets.imagesCardSend, address: 'Income'),
    const AllExpensesItemModel(
      image: Assets.imagesCardReceive,
      address: 'Expenses',
    ),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              chooseItem(0);
            },
            child: AllExpensesItems(
              isActive: currentIndex == 0,
              itemsModel: expensesItem[0],
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: InkWell(
            onTap: () {
              chooseItem(1);
            },
            child: AllExpensesItems(
              isActive: currentIndex == 1,
              itemsModel: expensesItem[1],
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: InkWell(
            onTap: () {
              chooseItem(2);
            },
            child: AllExpensesItems(
              isActive: currentIndex == 2,
              itemsModel: expensesItem[2],
            ),
          ),
        ),
      ],
    );
  }

  void chooseItem(int index) {
    setState(() {
      if (currentIndex != index) {
        currentIndex = index;
      }
    });
  }
}
