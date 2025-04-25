import 'package:dash_board_app/core/utils/styles.dart';
import 'package:dash_board_app/features/dashboard/data/model/income_details_model.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/custom_income_container.dart';
import 'package:flutter/material.dart';

class IncomeDetailsData extends StatelessWidget {
  const IncomeDetailsData({super.key, required this.income});
  final IncomeDetailsModel income;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomIncomeContainer(color: income.color),
      title: Text(
        income.value,
        style: Styles.textRegular14(
          context,
        ).copyWith(color: const Color(0xff064061)),
      ),
      trailing: Text(income.size, style: Styles.textMedium16(context)),
    );
  }
}
