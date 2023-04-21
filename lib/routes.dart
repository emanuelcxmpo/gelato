import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gelato_app/pages/complete_profile/complete_profile.dart';

import 'package:gelato_app/pages/start/start.dart';
import 'package:gelato_app/pages/onboarding/onboarding.dart';
import 'package:gelato_app/pages/sign_in/sign_in.dart';
import 'package:gelato_app/pages/login_success/login_success.dart';
import 'package:gelato_app/pages/forgot_password/forgot_password.dart';
import 'package:gelato_app/pages/home/home.dart';
import 'package:gelato_app/pages/cart/cart.dart';
import 'package:gelato_app/pages/sign_up/sign_up.dart';
import 'package:gelato_app/pages/details_product/details_product.dart';
import 'package:gelato_app/pages/profile/profile.dart';

final Map<String, WidgetBuilder> routes = {
  StartApp.routeName: (context) => const StartApp(),
  Onboarding.routeName: (context) => const Onboarding(),
  SignIn.routeName: (context) => const SignIn(),
  ForgotPassword.routeName: (context) => const  ForgotPassword(),
  LoginSuccess.routeName: (context) =>  const LoginSuccess(),
  SignUp.routeName: (context) => const SignUp(),
  CompleteProfile.routeName: (context) => const CompleteProfile(),
  // OtpScreen.routeName: (context) => OtpScreen(),
  Home.routeName: (context) => const Home(),
  DetailsProducts.routeName: (context) => const DetailsProducts(),
  Cart.routeName: (context) => const Cart(),
  Profile.routeName: (context) => const Profile(),
};