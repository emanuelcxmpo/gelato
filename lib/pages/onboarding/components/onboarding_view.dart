import 'package:flutter/material.dart';
import 'package:gelato_app/constants.dart';

import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(flex: 3),
        Image.asset(
          "assets/images/Logo.png",
          height: getProportionateScreenHeight(100),
          width: getProportionateScreenWidth(120),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color:gTextColor,
          ),
        ),
        const Spacer(flex: 2),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(365),
          width: getProportionateScreenWidth(435),
        ),
      ],
    );
  }
}