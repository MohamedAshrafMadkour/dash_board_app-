import 'package:dash_board_app/core/assets/app_image.dart';
import 'package:dash_board_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: ShapeDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCard),
          ),
          color: const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: IntrinsicHeight(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'Name card',
                  style: Styles.textRegular16(
                    context,
                  ).copyWith(color: Colors.white),
                ),
                subtitle: Text(
                  'Syah Bandi',
                  style: Styles.textMedium20(context),
                ),
                trailing: const Image(image: AssetImage(Assets.imagesGallery)),
              ),
              const Spacer(),
              ListTile(
                title: Text(
                  textAlign: TextAlign.right,
                  '0918 8124 0042 8129',
                  style: Styles.textSemiBold24(
                    context,
                  ).copyWith(color: Colors.white),
                ),
                subtitle: Text(
                  textAlign: TextAlign.right,
                  '12/20 - 124',
                  style: Styles.textSemiBold16(
                    context,
                  ).copyWith(color: Colors.white),
                ),
              ),
              const Flexible(child: SizedBox(height: 8)),
            ],
          ),
        ),
      ),
    );
  }
}
