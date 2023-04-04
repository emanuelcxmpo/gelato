import 'package:flutter/material.dart';
import 'package:gelato_app/pages/onboarding/components/body.dart';

import '../../size_config.dart';

class Onboarding extends StatelessWidget {
  static String routeName = "/onboarding";

  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
