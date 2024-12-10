
import 'package:carrentalapp/Colors.dart';
import 'package:flutter/material.dart';

class CarFeature extends StatelessWidget {
  const CarFeature({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
          border:
              Border.all(color: AppColors.secondary.withOpacity(0.3), width: 1),
          color: AppColors.secondary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        label,
        style: const TextStyle(color: AppColors.secondary, fontSize: 14),
      ),
    );
  }
}
