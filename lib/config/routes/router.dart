import 'package:auto_route/auto_route.dart';

import '../../presentation/home/view/home_screen.dart';
import '../../presentation/login/view/login_screen.dart';
import '../../presentation/recipe/view/recipe_item_screen.dart';
import '../../presentation/recipe/view/recipes_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', children: [
          AutoRoute(page: RecipeRoute.page, path: 'recipe/', children: [
            AutoRoute(page: RecipeItemRoute.page, path: 'recipe_item')
          ]),
          AutoRoute(page: LoginRoute.page, path: 'login'),
        ])
      ];
}
