import 'package:flutter/material.dart';
import 'package:taste_time/core/extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Text(context.l10n.titleApp)),
      ),
    );
  }
}
