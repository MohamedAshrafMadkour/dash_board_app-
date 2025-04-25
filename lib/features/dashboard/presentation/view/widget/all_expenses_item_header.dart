import 'package:dash_board_app/features/dashboard/data/model/all_expenses_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.itemModel,
    this.backgroundColor,
    this.imageColor,
  });
  final AllExpensesItemModel itemModel;
  final Color? backgroundColor;
  final Color? imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  shape: const OvalBorder(),
                  color: backgroundColor ?? const Color(0xffFAFAFA),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    itemModel.image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xff4EB7FE),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            size: 16,
            Icons.arrow_back_ios_new_outlined,
            color: imageColor ?? const Color(0xff064061),
          ),
        ),
      ],
    );
  }
}
