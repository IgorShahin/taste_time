import 'package:flutter/material.dart';

import '../../../config/resources/app_assets.dart';
import '../../../config/resources/app_colors.dart';
import '../../../core/widgets/base_container.dart';

class RecipeListCard extends StatelessWidget {
  const RecipeListCard({
    super.key,
    required this.image,
    required this.title,
    required this.time,
  });

  final String image;
  final String title;
  final String time;

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      height: 136,
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
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      height: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Image.asset(AppAssets.time),
                      const SizedBox(width: 11),
                      Text(
                        time,
                        style: const TextStyle(color: AppColors.primary),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
