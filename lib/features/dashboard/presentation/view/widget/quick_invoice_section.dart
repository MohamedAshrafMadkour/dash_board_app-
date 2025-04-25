import 'package:dash_board_app/features/dashboard/presentation/view/widget/custom_button.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/custom_container.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/latest_transaction.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/quick_form.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(height: 48, color: Color(0xffF1F1F1)),
          Row(
            children: [
              Expanded(
                child: FullField(
                  title: 'Customer name',
                  hint: 'Type customer name',
                ),
              ),
              Expanded(
                child: FullField(
                  title: 'Customer email',
                  hint: 'Type customer email',
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: FullField(
                  title: 'Item name',
                  hint: 'Type customer name',
                ),
              ),
              Expanded(child: FullField(title: 'Item mount', hint: 'USD')),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  title: 'Add More Details',
                  backGround: Colors.white,
                  textColor: Color(0xff4EB7F2),
                ),
              ),

              Expanded(
                child: CustomButton(
                  backGround: Color(0xff4EB7F2),
                  textColor: Colors.white,
                  title: 'Send Money',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
