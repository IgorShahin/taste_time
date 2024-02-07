import 'package:flutter/material.dart';
import 'package:taste_time/config/resources/app_assets.dart';
import 'package:taste_time/core/extensions.dart';

import '../widgets/recipe_list_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 45)),
            SliverList.builder(
              itemBuilder: (context, index) => RecipeListCard(
                image: AppAssets.recipe,
                title: context.l10n.titleRecipeCardDefault,
                time: context.l10n.timeRecipeDefault,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
