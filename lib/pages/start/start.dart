import 'package:flutter/material.dart';
import 'package:gelato_app/pages/start/components/body.dart';
import 'package:gelato_app/size_config.dart';

class StartApp extends StatelessWidget {
  static String routeName = "/inicio";

  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(body: Body(), backgroundColor: Color(0xFFA61C5C),);
  }
}
