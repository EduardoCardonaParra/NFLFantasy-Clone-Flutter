import 'package:flutter/material.dart';
import 'package:nfl_fantasy_project/src/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: const Center(
           child: Text('HomeScreen'),
        ),
      ),
    );
  }
}