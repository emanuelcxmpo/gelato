import 'package:flutter/material.dart';
import 'package:gelato_app/size_config.dart';

const gPrimaryColor = Color(0xFFA61C5C);
const gButtonColor = Color(0xFFF2E9D8);
const gButtonTextColor = Color(0xFF262626);
const gButtonSecundaryColor = Color(0xFFA61C5C);
const gPrimaryLightColor = Color(0xFFFFECDF);
const gPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const gSecondaryColor = Color(0xFF979797);
const gTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String gEmailNullError = "Please Enter your email";
const String gInvalidEmailError = "Please Enter Valid Email";
const String gPassNullError = "Please Enter your password";
const String gShortPassError = "Password is too short";
const String gMatchPassError = "Passwords don't match";
const String gNamelNullError = "Please Enter your name";
const String gPhoneNumberNullError = "Please Enter your phone number";
const String gAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: gTextColor),
  );
}
