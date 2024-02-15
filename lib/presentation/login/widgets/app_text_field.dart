import 'package:flutter/material.dart';

import '../../../config/resources/app_colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.icon,
    required this.hint,
  });

  final String hint;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 232,
      height: 48,
      decoration: BoxDecoration(
        color: AppColors.lightWhite100,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          iconColor: AppColors.hint,
          icon: Icon(icon),
          contentPadding: EdgeInsets.zero,
          hintStyle: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.hint),
          enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
