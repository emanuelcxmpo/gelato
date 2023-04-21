import 'package:flutter/material.dart';
import 'package:gelato_app/components/default_button.dart';
import 'package:gelato_app/size_config.dart';

import '../../home/home.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Inicio de sesión exitoso",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Ir al inicio",
            press: () {
              Navigator.pushNamed(context, Home.routeName);
            },
          ),
        ),
        const Spacer(),
      ],
    );
  }
}