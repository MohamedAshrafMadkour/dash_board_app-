import 'package:dash_board_app/features/dashboard/presentation/view/widget/my_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) =>
            const Padding(padding: EdgeInsets.only(right: 8), child: MyCard()),
      ),
    );
  }
}
