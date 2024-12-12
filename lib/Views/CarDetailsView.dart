import 'package:carrentalapp/Colors.dart';
import 'package:carrentalapp/Widgets/CarFeature.dart';
import 'package:carrentalapp/Widgets/CustomCard.dart';
import 'package:carrentalapp/Widgets/CustomTextButton.dart';
import 'package:carrentalapp/models/CarModel.dart';
import 'package:flutter/material.dart';

class Cardetailsview extends StatelessWidget {
  const Cardetailsview({super.key, required this.featuredCar});
  final car featuredCar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 300,
                pinned: true,
                backgroundColor: AppColors.primary,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          featuredCar.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 20,
                        child: IconButton(
                          icon: Container(
                            height: 45,
                            width: 35,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [BoxShadow(color: Colors.white)]),
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 20,
                        child: Container(
                          height: 45,
                          width: 35,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [BoxShadow(blurRadius: 8)]),
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, right: 12, left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      featuredCar.Brand,
                                      style: const TextStyle(
                                        color: AppColors.textlight,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      featuredCar.name,
                                      style: const TextStyle(
                                          color: AppColors.textdark,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '\$ ${featuredCar.Price.toString()}',
                                      style: const TextStyle(
                                          color: AppColors.secondary,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const Text(
                                      'per day',
                                      style: TextStyle(
                                          color: AppColors.textlight,
                                          fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                customTextButton(
                                  icon: Icons.speed,
                                  info: '300 km/h',
                                ),
                                customTextButton(
                                  icon: Icons.account_tree_outlined,
                                  info: 'Automatic',
                                ),
                                customTextButton(
                                  icon: Icons.local_gas_station,
                                  info: '50L',
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Specifications',
                        style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomCard(
                            cardtext1: '350 HP',
                            cardtext2: 'Power',
                            cardicon: Icons.electric_bolt_rounded,
                          ),
                          CustomCard(
                            cardtext1: '4.5 ',
                            cardtext2: '0-60 mph',
                            cardicon: Icons.timer,
                          ),
                          CustomCard(
                            cardtext1: '300 km/h',
                            cardtext2: 'Topspeed',
                            cardicon: Icons.speed,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Features',
                        style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          CarFeature(label: 'Bluetooth'),
                          CarFeature(label: 'Apple CarPlay'),
                          CarFeature(label: 'Android Auto'),
                          CarFeature(label: '360 Camera'),
                          CarFeature(label: 'Parking Sensors'),
                          CarFeature(label: 'Navigation')
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 18),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Description',
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'Experience luxury and performance with the Mercedes AMG GT. '
                                'This stunning vehicle combines cutting-edge technology with '
                                'elegant design to deliver an unforgettable driving experience.',
                                style: TextStyle(
                                    color: AppColors.textlight, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 110,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(22),
                      topLeft: Radius.circular(22)),
                  color: Colors.white),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Price',
                          style: TextStyle(color: AppColors.textlight),
                        ),
                        Text(
                          '\$ ${featuredCar.Price.toString()} \/day',
                          style: const TextStyle(
                              color: AppColors.secondary,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: AppColors.secondary,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 42, vertical: 12),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {},
                        child: const Text(
                          'Book Now',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
