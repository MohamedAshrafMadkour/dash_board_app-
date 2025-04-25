import 'package:dash_board_app/features/dashboard/presentation/view/widget/card_section.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/custom_container.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/income_section.dart';
import 'package:flutter/material.dart';

class ThirdSection extends StatelessWidget {
  const ThirdSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(children: [CardSection(), IncomeSection()]),
    );
  }
}
