import 'package:dash_board_app/features/dashboard/data/model/income_details_model.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/income_details_data.dart';
import 'package:flutter/material.dart';

class IncomeDetailsList extends StatelessWidget {
  const IncomeDetailsList({super.key});
  static const items = [
    IncomeDetailsModel(
      color: Color(0xff208CC8),
      value: 'Design service',
      size: '%40',
    ),
    IncomeDetailsModel(
      color: Color(0xff4EB7F2),
      value: 'Design product',
      size: '%25',
    ),
    IncomeDetailsModel(
      color: Color(0xff064061),
      value: 'Design royalti',
      size: '%22',
    ),
    IncomeDetailsModel(color: Color(0xffE2DECD), value: 'Other', size: '%20'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => IncomeDetailsData(income: e)).toList(),
    );
  }
}
