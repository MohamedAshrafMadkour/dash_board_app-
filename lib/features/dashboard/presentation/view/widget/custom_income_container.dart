import 'package:flutter/material.dart';

class CustomIncomeContainer extends StatelessWidget {
  const CustomIncomeContainer({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: ShapeDecoration(shape: const OvalBorder(), color: color),
    );
  }
}
