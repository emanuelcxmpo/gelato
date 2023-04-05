import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:gelato_app/pages/onboarding/onboarding.dart';
import 'package:gelato_app/pages/sign_in/sign_in.dart';
import 'package:gelato_app/pages/sign_up/sign_up.dart';
import 'package:gelato_app/pages/start/start.dart';

final Map<String, WidgetBuilder> routes = {
  StartApp.routeName: (context) => const StartApp(),
  Onboarding.routeName: (context) => const Onboarding(),
  SignIn.routeName: (context) => const SignIn(),
  // ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  // LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUp.routeName: (context) => const SignUp(),
  // CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  // OtpScreen.routeName: (context) => OtpScreen(),
  // HomeScreen.routeName: (context) => HomeScreen(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),
};
