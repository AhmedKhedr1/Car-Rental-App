import 'package:carrentalapp/Colors.dart';
import 'package:carrentalapp/Widgets/Custom_AppBar.dart';
import 'package:carrentalapp/Widgets/HomeViewBody.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selctedindex = 0;
  int _selctedcategory = 0;
  final allcategories = ['All', 'Tesla', 'BMW', 'Marceds', 'Audi'];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Custom_AppBar(),
            Homeviewbody(),

           
          ],
        ),
      )),
    );
  }
}
