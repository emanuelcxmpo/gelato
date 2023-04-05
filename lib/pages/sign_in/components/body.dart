import 'package:flutter/material.dart';
import 'package:gelato_app/constants.dart';
import '../../../components/no_account.dart';
import '../../../components/red_social_card.dart';
import '../../../size_config.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Bienvenido de nuevo",
                  style: TextStyle(
                    color: gTextColor,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Inicia sesión con tu correo elctronico y contraseña \no continua con redes sociales",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF8B8B8B),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RedSocialCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    RedSocialCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    RedSocialCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                const NoAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}