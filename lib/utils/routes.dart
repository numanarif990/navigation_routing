import 'package:flutter/material.dart';
import 'package:navigation_routing/home_screen.dart';
import 'package:navigation_routing/screen_one.dart';
import 'package:navigation_routing/screen_two.dart';
import 'package:navigation_routing/utils/routes_name.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context)=>const HomeScreen());
      case RoutesName.screenOne:
        return MaterialPageRoute(builder: (context)=> ScreenOne(data: settings.arguments as Map,));
      case RoutesName.screenTwo:
        return MaterialPageRoute(builder: (context)=>const ScreenTwo());
      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Center(child: Text("no page found")),
          );
        });
    }
  }
}