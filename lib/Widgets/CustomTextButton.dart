
import 'package:carrentalapp/Colors.dart';
import 'package:flutter/material.dart';

class customTextButton extends StatelessWidget {
  const customTextButton({super.key, required this.icon, required this.info});
  final IconData icon;
  final String info;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.primary.withOpacity(0.1)),
      child: Row(
        children: [
          Icon(
            icon,
            size: 18,
            color: AppColors.secondary,
          ),
          SizedBox(width:8 ,),
          Text(
            info,
            style: const TextStyle(color: AppColors.primary),
          )
        ],
      ),
    );
  }
}
