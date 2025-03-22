
import 'package:eco_eaters_app/core/routes/routes_name.dart';
import 'package:eco_eaters_app/customer/restaurantsFoodItems/restaurants_food_items.dart';
import 'package:flutter/material.dart';

import '../../customer/layout/layout.dart';


class AppRoutes{
  static Route onGenerateRoute(RouteSettings settings){

    switch(settings.name){
      case RoutesName.customerHomeLayout:
        return MaterialPageRoute(
          builder: (context) => Layout(),
          settings: settings,
        );
        case RoutesName.restaurantFoodItem:
        return MaterialPageRoute(
          builder: (context) => RestaurantFoodItem(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Layout() ,
          settings: settings,
        );
    }

  }

}
