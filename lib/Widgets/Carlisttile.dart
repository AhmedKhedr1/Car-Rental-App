import 'package:carrentalapp/data/data.dart';
import 'package:carrentalapp/models/CarModel.dart';
import 'package:flutter/material.dart';

class carListTile extends StatelessWidget {
  const carListTile({super.key, required this.featuredCar});
  final car featuredCar;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
            ),
            Container(
              height: 80,
              width: 110,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Image.asset(
                  featuredCar.image,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    featuredCar.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        featuredCar.rating.toStringAsFixed(1),
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '\$${featuredCar.Price.toStringAsFixed(1)}/day',
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                     const SizedBox(width: 34,),
                      Container(
                          height: 32,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.1),
                            
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: const Center(
                              child: Text(
                            'Book now',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )))
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
