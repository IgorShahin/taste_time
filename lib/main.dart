import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taste_time/presentation/app_root.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(AppRoot());
}
