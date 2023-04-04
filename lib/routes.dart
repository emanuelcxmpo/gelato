
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:gelato_app/pages/onboarding/onboarding.dart';
import 'package:gelato_app/pages/start/start.dart';

final Map<String, WidgetBuilder> routes = {
  StartApp.routeName: (context) => const StartApp(),
  Onboarding.routeName: (context) => const Onboarding(),
  // SignInScreen.routeName: (context) => SignInScreen(),
  // ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  // LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  // SignUpScreen.routeName: (context) => SignUpScreen(),
  // CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  // OtpScreen.routeName: (context) => OtpScreen(),
  // HomeScreen.routeName: (context) => HomeScreen(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),
};