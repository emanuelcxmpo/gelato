import 'package:flutter/material.dart';
import 'package:gelato_app/components/coustom_bottom_nav_bar.dart';
import 'package:gelato_app/enums.dart';

import 'components/body.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";

  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}