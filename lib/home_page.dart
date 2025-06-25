import 'package:flutter/material.dart';
import 'package:foodappui/meal_page.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:foodappui/menu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        angle: 0,
        menuScreen: MenuPage(),
        mainScreen: MealPage(),
      ),
    );
  }
}
