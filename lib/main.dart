import 'package:eco_eaters_app/core/ui/seller/widgets/layout_view.dart';
import 'package:flutter/material.dart';

import 'package:eco_eaters_app/ui/auth/user_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'core/routes/app_routes.dart';
import 'core/routes/routes_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      initialRoute: RoutesName.customerHomeLayout,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(
        builder: BotToastInit(),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}

