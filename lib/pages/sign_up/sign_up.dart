import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUp extends StatelessWidget {
  static String routeName = "/sign_up";

  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registrarse"),
      ),
      body: Body(),
    );
  }
}