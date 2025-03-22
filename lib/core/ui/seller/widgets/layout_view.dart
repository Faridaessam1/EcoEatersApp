import 'package:eco_eaters_app/core/constants/app_colors.dart';
import 'package:eco_eaters_app/core/ui/seller/home/home_view.dart';
import 'package:eco_eaters_app/core/ui/seller/orders/orders_view.dart';
import 'package:eco_eaters_app/core/ui/seller/profile/profile_view.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../new dish/new_dish_view.dart';

class LayOutView extends StatefulWidget {
  const LayOutView({super.key});

  @override
  State<LayOutView> createState() => _LayOutViewState();
}

class _LayOutViewState extends State<LayOutView> {

  int selectedIndex=0;
  List <Widget> tabs =[
    HomeView(),
    OrdersView(), NewDishView(), ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.green,
        unselectedItemColor: AppColors.black,
        currentIndex: selectedIndex,
        onTap: _onButtonNavBarItemTapped,
        items: [
        BottomNavigationBarItem(
          icon: Image.asset(AppAssets.homeIcon),
          activeIcon: Image.asset(AppAssets.homeIcon),
          label: "Home",
        ),
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.ordersIcon),
            activeIcon: Image.asset(AppAssets.ordersIcon),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.newIcon),
            activeIcon: Image.asset(AppAssets.newIcon),
            label: "New",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.profileIcon),
            activeIcon: Image.asset(AppAssets.profileIcon),
            label: "Profile",
          ),
      ],
      ),
      body: tabs[selectedIndex],
    );
  }

  _onButtonNavBarItemTapped(int index){
    selectedIndex = index;
    setState(() {});
  }

}
