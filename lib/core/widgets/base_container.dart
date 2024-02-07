import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer({
    super.key,
    required this.child,
    this.height,
    this.borderWidth,
  });

  final Widget child;
  final double? height;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 24),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: borderWidth != null ? Border.all(width: borderWidth!) : null),
      child: child,
    );
  }
}
