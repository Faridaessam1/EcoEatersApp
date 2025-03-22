import 'package:eco_eaters_app/core/routes/page_route_names.dart';
import 'package:eco_eaters_app/ui/auth/login_screen.dart';
import 'package:eco_eaters_app/ui/auth/sign_up_screen.dart';
import 'package:eco_eaters_app/ui/auth/user_type.dart';
import 'package:eco_eaters_app/ui/onBoarding/widget/onBoardingScreen.dart';
import 'package:eco_eaters_app/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes{
  static Route onGeneratedRoute(RouteSettings settings){
    switch(settings.name){
      case PagesRouteName.onBoarding:
        return MaterialPageRoute(builder:(context) => OnBoardingScreen(),
            settings: settings
        );
      case PagesRouteName.userType:
        return MaterialPageRoute(builder:(context) => UserTypeScreen(),
            settings: settings
        );
      case PagesRouteName.login:
        return MaterialPageRoute(builder:(context) => LoginScreen(),
            settings: settings
        );
      case PagesRouteName.signUp:
        return MaterialPageRoute(builder:(context) => SignUpScreen(),
            settings: settings
        );

      default:
        return MaterialPageRoute(builder:(context) => SplashScreen(),
            settings: settings
        );

    }
  }
}

