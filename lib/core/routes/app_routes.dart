import 'package:flutter/material.dart';
import 'package:weather_algoriza/core/utils/app_strings.dart';
import 'package:weather_algoriza/presentation/screens/contact_us_screen.dart';
import 'package:weather_algoriza/presentation/screens/favourites_screen.dart';
import 'package:weather_algoriza/presentation/screens/main_screen.dart';
import 'package:weather_algoriza/presentation/screens/report_wrong_location_screen.dart';
import 'package:weather_algoriza/presentation/screens/settings_screen.dart';

class Routes{
  static const String initialRoute = AppStrings.initialRoute;
  static const String settingsRoute = AppStrings.settingsRoute;
  static const String contactUsRoute = AppStrings.contactUsRoute;
  static const String reportWrongLocationRoute = AppStrings.reportWrongLocation;
  static const String favouritesRoute = AppStrings.favouritesRoute;
}
class AppRoutes{
  static Route? onGenerateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.initialRoute: 
        return MaterialPageRoute(builder: (context)=>const MainScreen());
      case Routes.settingsRoute:
        return MaterialPageRoute(builder: (context)=>const SettingsScreen());
      case Routes.contactUsRoute:
        return MaterialPageRoute(builder: (context)=>const ContactUsScreen());
      case Routes.reportWrongLocationRoute:
        return MaterialPageRoute(builder: (context)=>const ReportWrongLocationScreen());
      case Routes.favouritesRoute:
        return MaterialPageRoute(builder: (context)=>const FavouritesScreen());
      default:
        return undefinedRoute();
    }
  }
  static Route<dynamic> undefinedRoute(){
    return MaterialPageRoute(builder: (context)=>const Scaffold(
      body: Center(
        child: Text(AppStrings.noRouteFound,style: TextStyle(color: Colors.pink),),
      ),
    ));
  }
}