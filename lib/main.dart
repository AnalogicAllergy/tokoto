import 'package:flutter/material.dart';
import 'package:tokoto/routes.dart';
import 'package:tokoto/screens/splash/splash_screen.dart';
import 'package:tokoto/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tokoto',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      //for coding reasons we will change the initial route to profile
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
