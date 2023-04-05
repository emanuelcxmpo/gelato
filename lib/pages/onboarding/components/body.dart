import 'package:flutter/material.dart';
import 'package:gelato_app/constants.dart';
import 'package:gelato_app/pages/onboarding/components/onboarding_view.dart';
import 'package:gelato_app/size_config.dart';

// This is the best practice
import '../../../components/default_button_secundary.dart';
import '../../sign_in/sign_in.dart';

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
          "¡Prepárate para saborear la mejor \nexperiencia de helados que hayas \ntenido jamás!",
      "image": "assets/images/Ice-yellow.png"
    },
    {
      "text":
          "Aquí encontrarás una amplia variedad \nde opciones para satisfacer cualquier \nantojo que puedas tener.",
      "image": "assets/images/Ice-blue.png"
    },
    {
      "text":
          "Regístrate para acceder a ofertas \nexclusivas y tener una experiencia \npersonalizada.",
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
                    DefaultButtonSecundary(
                      text: "Continuar",
                      press: () {
                        Navigator.pushNamed(context, SignIn.routeName);
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
      duration: gAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? gBackgroundColor : Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
