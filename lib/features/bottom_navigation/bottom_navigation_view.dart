import 'package:cosmetics_app/core/constant/costom_colors.dart';
import 'package:cosmetics_app/features/bottom_navigation/cart/presentation/view/cart_view.dart';
import 'package:cosmetics_app/features/bottom_navigation/categories/presentation/view/categories_view.dart';
import 'package:cosmetics_app/features/bottom_navigation/home/presentation/view/home_view.dart';
import 'package:cosmetics_app/features/bottom_navigation/profile/presentation/view/profile_view.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({super.key});

  @override
  State<BottomNavigationView> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  final List<Widget> screens = [
    HomeView(),
    CategoriesView(),
    CartView(),
    ProfileView(),
  ];
  var _selectedTab = 0;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[_selectedTab],
      bottomNavigationBar: CrystalNavigationBar(
        currentIndex: _selectedTab,
        height: 10,
        indicatorColor: CostomColors.secandryColor,
        unselectedItemColor: Colors.grey,
        borderWidth: 2,
        outlineBorderColor: Colors.white,
        backgroundColor: Colors.white,
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 4,
            offset: Offset(5, 5),
          ),
        ],
        onTap: _handleIndexChanged,
        items: [
          CrystalNavigationBarItem(
            icon: CupertinoIcons.home,
            selectedColor: CostomColors.secandryColor,
          ),

          CrystalNavigationBarItem(
            icon: Icons.category_rounded,
            selectedColor: CostomColors.secandryColor,
          ),

          CrystalNavigationBarItem(
            icon: Icons.shopping_cart,
            selectedColor: CostomColors.secandryColor,
          ),

          CrystalNavigationBarItem(
            icon: Icons.person_2_sharp,
            selectedColor: CostomColors.secandryColor,
          ),
        ],
      ),
    );
  }
}
