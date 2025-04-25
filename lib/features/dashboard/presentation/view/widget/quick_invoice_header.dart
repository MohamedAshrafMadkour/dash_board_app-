import 'package:dash_board_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invoice', style: Styles.textSemiBold20(context)),
        const Spacer(),
        const CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          child: Icon(Icons.add, color: Color(0xff4EB7F2), size: 18),
        ),
      ],
    );
  }
}
