import 'package:flutter/material.dart';
import 'package:navigation_routing/home_screen.dart';
import 'package:navigation_routing/screen_one.dart';
import 'package:navigation_routing/screen_two.dart';
import 'package:navigation_routing/utils/routes_name.dart';
import 'package:navigation_routing/utils/routes.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      // home: HomeScreen(),

      //routing method
     /* initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context)=>const HomeScreen(),
        ScreenOne.id: (context)=>const ScreenOne(),
        ScreenTwo.id: (context)=>const ScreenTwo()
      },*/
initialRoute: RoutesName.homeScreen,
      onGenerateRoute: Routes.generateRoute,

    );
  }
}
