
import 'package:eco_eaters_app/core/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../../customer/homeTab/home_tab.dart';
import '../../customer/layout/layout.dart';


class AppRoutes{
  static Route onGenerateRoute(RouteSettings settings){

    switch(settings.name){
      case RoutesName.customerHome:
        return MaterialPageRoute(
          builder: (context) => Layout(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => HomeTab() ,
          settings: settings,
        );
    }

  }

}
