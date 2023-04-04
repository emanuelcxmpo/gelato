import 'package:flutter/material.dart';
import 'package:gelato_app/constants.dart';
import 'package:gelato_app/pages/onboarding/components/onboarding_view.dart';
import 'package:gelato_app/size_config.dart';

// This is the best practice
import '../../../../components/default_button.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, dynamic>> onboardingData = [
    {
      "text":
          "¡Prepárate para saborear la mejor experiencia \nde helados que hayas tenido jamás!",
      "image": "assets/images/Ice-yellow.png"
    },
    {
      "text":
          "Aquí encontrarás una amplia variedad de \nopciones para satisfacer cualquier antojo \nque puedas tener.",
      "image": "assets/images/Ice-blue.png"
    },
    {
      "text":
          "Regístrate para acceder a ofertas exclusivas y \ntener una experiencia personalizada.",
      "image": "assets/images/Ice-red.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onboardingData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: onboardingData[index]['image'],
                  text: onboardingData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onboardingData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(),
                    DefaultButton(
                      text: "Continuar",
                      press: () {
                        // Navigator.pushNamed(context, SignInScreen.routeName);
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

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? gPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
