import 'package:eco_eaters_app/core/routes/routes_name.dart';
import 'package:eco_eaters_app/core/routes/page_route_names.dart';
import 'package:eco_eaters_app/customer/orders/customer_order_screen.dart';
import 'package:eco_eaters_app/customer/restaurantsFoodItems/restaurants_food_items.dart';
import 'package:eco_eaters_app/customer/layout/layout.dart';
import 'package:eco_eaters_app/ui/auth/login_screen.dart';
import 'package:eco_eaters_app/ui/auth/sign_up_screen.dart';
import 'package:eco_eaters_app/ui/auth/user_type.dart';
import 'package:eco_eaters_app/ui/onBoarding/widget/onBoardingScreen.dart';
import 'package:eco_eaters_app/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Routes from master
      case PagesRouteName.onBoarding:
        return MaterialPageRoute(
          builder: (context) => OnBoardingScreen(),
          settings: settings,
        );
      case PagesRouteName.userType:
        return MaterialPageRoute(
          builder: (context) => UserTypeScreen(),
          settings: settings,
        );
      case PagesRouteName.login:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
          settings: settings,
        );
      case PagesRouteName.signUp:
        return MaterialPageRoute(
          builder: (context) => SignUpScreen(),
          settings: settings,
        );

      // Routes from farida-feature
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
      case RoutesName.customerOrdersScreen:
        return MaterialPageRoute(
          builder: (context) => CustomerOrderScreen(),
          settings: settings,
        );

      // Default route
      default:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
          settings: settings,
        );
    }
  }
}
