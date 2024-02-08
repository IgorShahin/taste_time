import 'package:auto_route/auto_route.dart';

import '../../presentation/home/view/home_screen.dart';
import '../../presentation/profile/view/profile_screen.dart';
import '../../presentation/recipe/view/recipes_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', children: [
          AutoRoute(page: RecipeRoute.page, path: 'recipe'),
          AutoRoute(page: ProfileRoute.page, path: 'profile'),
        ])
      ];
}
