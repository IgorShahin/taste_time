import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:taste_time/config/routes/router.dart';

import '../config/resources/app_theme.dart';

class AppRoot extends StatelessWidget {
  AppRoot({super.key});

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Otus food",
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ru', '')],
      theme: AppTheme.lightThemeDefault,
      routerConfig: _router.config(),
    );
  }
}
