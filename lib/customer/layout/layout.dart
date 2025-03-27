import 'package:eco_eaters_app/core/constants/app_assets.dart';
import 'package:eco_eaters_app/customer/cartTab/cart_tab.dart';
import 'package:eco_eaters_app/customer/restaurantsTab/restaurants_tab.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../favoriteTab/favorite_tab.dart';
import '../homeTab/home_tab.dart';
import '../profileTab/profile_tab.dart';

class Layout extends StatefulWidget{
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int selectedIndex = 0 ;

  List<Widget> tabs = [
    HomeTab(),
    RestaurantsTab(),
    CartTab(),
    FavoriteTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.green,
        unselectedItemColor: AppColors.black,
        backgroundColor:  AppColors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: onBottomNavBarItemTapped,

        items:  [

          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.homeIcon , width: 22.5, height: 20,),
          label: "Home",

          //   label: AppLocalizations.of(context)!.home,
          ),
          BottomNavigationBarItem(
            icon:Image.asset(AppAssets.restaurantsIcon ,  width: 22.5, height: 20,),
              label: "Restaurants"
            // label: AppLocalizations.of(context)!.location,
          ),
          BottomNavigationBarItem(
              icon:Image.asset(AppAssets.cartIcon,  width: 22.5, height: 20,),
              label: "Cart"
          ),
          BottomNavigationBarItem(
              icon:Image.asset(AppAssets.favoriteIcon,  width: 22.5, height: 20,),
              label: "Favorite"            // label: AppLocalizations.of(context)!.favorite,
          ),
          BottomNavigationBarItem(
              icon:Image.asset(AppAssets.profileIcon,  width: 22.5, height: 20,),
              label: "Profile"
            // label: AppLocalizations.of(context)!.profile,
          ),
        ],
      ),
      body: tabs[selectedIndex],
    );
  }

  void onBottomNavBarItemTapped(int index){
    selectedIndex = index;
    setState(() {

    });
  }
}