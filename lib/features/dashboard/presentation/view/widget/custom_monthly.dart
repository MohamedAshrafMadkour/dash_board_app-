import 'package:dash_board_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomMonthly extends StatelessWidget {
  const CustomMonthly({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 1, color: Color(0xffFAFAFA)),
        ),
      ),
      child: Row(
        children: [
          Text('Monthly', style: Styles.textMedium16(context)),
          const SizedBox(width: 16),
          Transform.rotate(
            angle: -1.57079633,
            child: const Icon(
              size: 18,
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xff064061),
            ),
          ),
        ],
      ),
    );
  }
}
