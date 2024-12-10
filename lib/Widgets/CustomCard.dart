
import 'package:carrentalapp/Colors.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.cardtext1,
      required this.cardtext2,
      required this.cardicon});
  final String cardtext1, cardtext2;
  final IconData cardicon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        height: 110,
        width: 110,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              cardicon,
              color: AppColors.secondary,
            ),
            Text(
              cardtext1,
              style: const TextStyle(
                  color: AppColors.primary,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              cardtext2,
              style: const TextStyle(color: AppColors.textlight, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
