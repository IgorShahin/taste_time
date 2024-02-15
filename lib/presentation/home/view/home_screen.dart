import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:taste_time/config/resources/app_colors.dart';
import 'package:taste_time/config/routes/router.dart';
import 'package:taste_time/core/extensions.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        RecipeRoute(),
        LoginRoute(),
      ],
      builder: (context, child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.hint,
            currentIndex: context.tabsRouter.activeIndex,
            onTap: (index) => context.tabsRouter.setActiveIndex(index),
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.local_pizza),
                label: context.l10n.titleNavigationRecipes,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.person),
                label: context.l10n.titleNavigationLogin,
              ),
            ],
          ),
        );
      },
    );
  }
}
