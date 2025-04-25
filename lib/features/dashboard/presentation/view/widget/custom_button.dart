import 'package:dash_board_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGround,
    required this.textColor,
    required this.title,
  });
  final Color backGround, textColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 62,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: backGround,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {},
          child: Text(
            title,
            style: Styles.textSemiBold18(context).copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
