import 'package:eco_eaters_app/core/routes/page_route_names.dart';
import 'package:eco_eaters_app/ui/onBoarding/onBoarding1.dart';
import 'package:eco_eaters_app/ui/onBoarding/onBoarding2.dart';
import 'package:eco_eaters_app/ui/onBoarding/onBoarding3.dart';
import 'package:eco_eaters_app/ui/onBoarding/onBoarding4.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes{
  static Route onGeneratedRoute(RouteSettings settings){
    switch(settings.name){
      case PagesRouteName.onBoarding1:
        return MaterialPageRoute(builder:(context) => OnBoardingPage1(),
            settings: settings
        );
      case PagesRouteName.onBoarding2:
        return MaterialPageRoute(builder:(context) => OnBoardingPage2(),
            settings: settings
        );
      case PagesRouteName.onBoarding3:
        return MaterialPageRoute(builder:(context) => OnBoardingPage3(),
            settings: settings
        );
      case PagesRouteName.onBoarding4:
        return MaterialPageRoute(builder:(context) => OnBoardingPage4(),
            settings: settings
        );

      default:
        return MaterialPageRoute(builder:(context) => OnBoardingPage1(),
            settings: settings
        );

    }
  }
}

