import 'package:dash_board_app/features/dashboard/presentation/view/widget/custom_indicator.dart';
import 'package:flutter/material.dart';

class CustomIndicatorList extends StatelessWidget {
  const CustomIndicatorList({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CustomIndicator(isActive: index == currentIndex),
        ),
      ),
    );
  }
}
