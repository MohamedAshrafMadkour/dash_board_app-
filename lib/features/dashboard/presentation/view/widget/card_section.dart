import 'package:dash_board_app/core/utils/styles.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/custom_indicator_list.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/page_view.dart';
import 'package:dash_board_app/features/dashboard/presentation/view/widget/transaction_history.dart';
import 'package:flutter/material.dart';

class CardSection extends StatefulWidget {
  const CardSection({super.key});

  @override
  State<CardSection> createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: Styles.textSemiBold20(context)),
        const SizedBox(height: 16),
        CustomPageView(pageController: pageController),
        const SizedBox(height: 16),
        CustomIndicatorList(currentIndex: currentIndex),
        const Divider(height: 38, color: Color(0xffF1F1F1)),
        const TransactionHistory(),
      ],
    );
  }
}
