import 'package:flutter/material.dart';
import 'package:gelato_app/components/coustom_bottom_nav_bar.dart';
import 'package:gelato_app/enums.dart';

import 'components/body.dart';

class Profile extends StatelessWidget {
  static String routeName = "/profile";

  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}