import 'package:flutter/material.dart';
import 'package:architect_theme/widgets/app_route_observer.dart';
import 'package:architect_theme/widgets/screens/add_users.dart';
import 'package:architect_theme/widgets/screens/principal.dart';
import 'package:architect_theme/widgets/ui/dashboard.dart';

class GentelellaAdmin extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    
       title: 'Gentelella Flutter Template',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Quicksand',
        //primarySwatch: Colors.purple,
        appBarTheme: AppBarTheme(
          color: Color(0xffffffff),
        ),
        primaryTextTheme: TextTheme(
          title: TextStyle(
            color: Color(0xff73879C),
            fontWeight: FontWeight.bold,
          ),
        )
      ),
      initialRoute: '/dashboard/',
      navigatorObservers: [AppRouteObserver()],
      routes: {
        
       '/dashboard/': (_) => HomePage(),
        '/add-users': (_) => ReceiptForm(),
        //RouteNames.slideshow: (_) => const SlideshowPage(),
        //RouteNames.settings: (_) => const SettingsPage()
      },
    //  home:  DashboardWidget(),
      
       
 
    );
  }
}