import 'package:carrentalapp/Colors.dart';
import 'package:carrentalapp/Widgets/BottomAppBar.dart';
import 'package:carrentalapp/Widgets/Custom_AppBar.dart';
import 'package:carrentalapp/Widgets/HomeViewBody.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
            SizedBox(
              height: 18,
            ),
            Homeviewbody(),
          ],
        ),
      )),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
