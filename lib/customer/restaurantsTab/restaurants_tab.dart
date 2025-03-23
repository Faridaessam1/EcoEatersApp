import 'package:eco_eaters_app/core/constants/app_assets.dart';
import 'package:eco_eaters_app/core/constants/app_colors.dart';
import 'package:eco_eaters_app/core/routes/routes_name.dart';
import 'package:eco_eaters_app/core/widgets/custom_text_form_field.dart';
import 'package:eco_eaters_app/customer/restaurantsTab/widgets/custom_tab_bar_item.dart';
import 'package:eco_eaters_app/customer/widgets/restaurant_card.dart';
import 'package:flutter/material.dart';

import '../../Data/restaurant_card_data.dart';

class RestaurantsTab extends StatefulWidget {

  @override
  State<RestaurantsTab> createState() => _RestaurantsTabState();
}

class _RestaurantsTabState extends State<RestaurantsTab> {
  int SelectedIndex = 0;
  List<RestaurantCardData> restaurantsData=[
    RestaurantCardData(
        imgPath: AppAssets.restaurantsCardImg,
        restaurantName: "Green Kitchen",
        restaurantCategory: "Organic - Vegan",
        location: "2.1 KM away ",
        deliveryEstimatedTime:" 25 - 35 min ",
    ),
    RestaurantCardData(
        imgPath: AppAssets.restaurantsCardImg,
        restaurantName: "Green Kitchen",
        restaurantCategory: "Organic - Vegan",
        location: "2.1 KM away ",
        deliveryEstimatedTime:" 25 - 35 min ",
    ),
    RestaurantCardData(
        imgPath: AppAssets.restaurantsCardImg,
        restaurantName: "Green Kitchen",
        restaurantCategory: "Organic - Vegan",
        location: "2.1 KM away ",
        deliveryEstimatedTime:" 25 - 35 min ",
    ),
    RestaurantCardData(
        imgPath: AppAssets.restaurantsCardImg,
        restaurantName: "Green Kitchen",
        restaurantCategory: "Organic - Vegan",
        location: "2.1 KM away ",
        deliveryEstimatedTime:" 25 - 35 min ",
    ),
  ];
  List<String> tabNames = ["All", "Fast Food", "Salad", "Healthy", "Desserts",];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),//bnzwed height el appbar
          child: AppBar(
            title:  Row(
              children: [
                Image.asset(
                  AppAssets.appLogo,
                  height: height * 0.02,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: CustomTextFormField(
                      hintText: "Search Restaurants",
                      borderColor: AppColors.lightGrey,
                      filledColor:AppColors.lightGrey,
                      hasIcon: true,
                      iconPath: AppAssets.searchIcon,
                      iconColor: AppColors.black,
                      hintTextColor: AppColors.darkGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DefaultTabController(
                length: 5,
                child: TabBar(
                  onTap: (index) {
                    SelectedIndex = index;
                    setState(() {});
                  },
                  splashFactory: NoSplash.splashFactory, //btshel el shadow el byb2a mawgod kol ma a select tab
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  dividerColor: Colors.transparent,
                  indicatorColor: Colors.transparent,
                  tabs: tabNames.map((name) {
                    int index = tabNames.indexOf(name);
                    return Tab(
                      child: CustomTabBarItem(
                        text: name,
                        isSelected: SelectedIndex == index,
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: ListView.separated(

                  itemBuilder:(context, index) => GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RoutesName.restaurantFoodItem);
                    },
                    child: RestaurantCard(
                      restaurantCardData:restaurantsData[index] ,
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(width:16 ,),
                  itemCount: restaurantsData.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
