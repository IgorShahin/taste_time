import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/resources/app_assets.dart';
import '../../../config/resources/app_colors.dart';
import '../../../core/widgets/base_container.dart';

class RecipeListCard extends StatelessWidget {
  const RecipeListCard({
    super.key,
    required this.image,
    required this.title,
    required this.time,
    required this.onTap,
  });

  final String image;
  final String title;
  final String time;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BaseContainer(
        child: Row(
          children: [
            Image.asset(
              image,
              height: 136,
              width: 149,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 16, right: 23, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 22,
                        height: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.time,
                          width: 16,
                          height: 16,
                          colorFilter: const ColorFilter.mode(
                              Colors.red, BlendMode.srcIn),
                          allowDrawingOutsideViewBox: true,
                        ),
                        const SizedBox(width: 11),
                        Text(
                          time,
                          style: const TextStyle(color: AppColors.primary),
                        )
                      ],
                    ),
                    const SizedBox(height: 23),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
