// ignore: file_names
import 'package:carrentalapp/Colors.dart';
import 'package:carrentalapp/Widgets/Carlisttile.dart';
import 'package:carrentalapp/Widgets/carcard.dart';
import 'package:carrentalapp/data/data.dart';

import 'package:flutter/material.dart';

class Homeviewbody extends StatefulWidget {
  const Homeviewbody({super.key});

  @override
  State<Homeviewbody> createState() => _HomeviewbodyState();
}

class _HomeviewbodyState extends State<Homeviewbody> {
  int _selctedindex = 0;
  int _selctedcategory = 0;
  final allcategories = ['All', 'Tesla', 'BMW', 'Marceds', 'Audi'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Categories',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.textdark),
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: allcategories.length,
              itemBuilder: (context, index) {
                final isselected = _selctedindex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selctedindex = index;
                    });
                  },
                  child: Container(
                    margin:const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color:
                            isselected ? AppColors.secondary : AppColors.carbg,
                        borderRadius: BorderRadius.circular(22)),
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Center(
                      child: Text(
                        allcategories[index],
                        style: TextStyle(
                            color:
                                isselected ? Colors.white : AppColors.textdark,
                            fontWeight: isselected
                                ? FontWeight.bold
                                : FontWeight.normal),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Featured Cars',
                style: TextStyle(
                    color: AppColors.textdark,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              TextButton(
                  onPressed: () {
                  
                  },
                  child: const Text(
                    'View All',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.secondary),
                  )),
            ],
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: Featuredcars.length,
              itemBuilder: (context, index) {
                return carcard(
                  featuredCar: Featuredcars[index],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular Deals',
                style: TextStyle(
                    color: AppColors.textdark,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'View All',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.secondary),
                  )),
            ],
          ),
          SizedBox(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: Featuredcars.length,
              itemBuilder: (context, index) {
                return carListTile(
                  featuredCar: Featuredcars[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
