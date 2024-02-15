import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:taste_time/core/extensions.dart';

import '../../../config/resources/app_assets.dart';
import '../widgets/recipe_list_card.dart';

@RoutePage()
class RecipeScreen extends StatelessWidget {
  const RecipeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 45)),
          SliverList.builder(
            itemBuilder: (context, index) => RecipeListCard(
              image: AppAssets.recipe,
              title: context.l10n.titleRecipeCardDefault,
              time: context.l10n.timeRecipeDefault,
              onTap: () => context.router.navigateNamed("recipe_item"),
            ),
          ),
        ],
      ),
    );
  }
}
