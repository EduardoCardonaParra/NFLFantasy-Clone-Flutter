import 'package:flutter/material.dart';
import 'package:nfl_fantasy_project/src/screens/screens.dart';
import 'package:nfl_fantasy_project/src/themes/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      title: 'NFL Fantasy',
      initialRoute: 'Home',
      routes: {
        'Home':(context) => const HomeScreen(),

      },
      
    );
  }
}