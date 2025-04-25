import 'package:dash_board_app/core/utils/styles.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/custom_field.dart';
import 'package:flutter/material.dart';

class FullField extends StatelessWidget {
  const FullField({super.key, required this.hint, required this.title});
  final String hint, title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Styles.textRegular16(context)),
          const SizedBox(height: 12),
          CustomTextField(title: hint),
        ],
      ),
    );
  }
}
