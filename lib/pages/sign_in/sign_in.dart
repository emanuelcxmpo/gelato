import 'package:flutter/material.dart';

import 'components/body.dart';
import '../../size_config.dart';

class SignIn extends StatelessWidget {
  static String routeName = "/sign_in";

  const SignIn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Iniciar sesión",
          textAlign: TextAlign.center,
        ),
      ),
      body: Body(),
    );
  }
}
