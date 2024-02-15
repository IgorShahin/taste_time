import 'package:flutter/material.dart';
import 'package:taste_time/config/resources/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.main,
        foregroundColor: Colors.green.shade50,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.lightWhite100),
          ),
        ),
      ),
    );
  }
}
