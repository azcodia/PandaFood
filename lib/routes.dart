import 'package:flutter/material.dart';
import 'package:shop_app/Screens/Forgot_Password/forgot_password_screen.dart';
import 'package:shop_app/Screens/Login_Success/login_success.dart';
import 'package:shop_app/Screens/Sign_In/sign_in_screen.dart';
import 'package:shop_app/Screens/Sign_Up/sign_up_screen.dart';
import 'package:shop_app/Screens/Splash/splash_screen.dart';

import 'Screens/Complete_Profile/complete_profile_screen.dart';
import 'Screens/Home/home_screen.dart';
import 'Screens/otp/otp_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};