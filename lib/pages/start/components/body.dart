import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';
import '../../onboarding/onboarding.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        child: Column(
          children: <Widget>[
            const Spacer(),
            Align(
              child: Image.asset(
                "assets/images/Gelato.png",
                height: getProportionateScreenHeight(400),
                width: getProportionateScreenWidth(350),
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    const Spacer(flex: 3),
                    DefaultButton(
                      text: "Continuar",
                      press: () {
                        Navigator.pushNamed(context, Onboarding.routeName);
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
