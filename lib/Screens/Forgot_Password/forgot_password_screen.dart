import 'package:flutter/material.dart';
import 'package:shop_app/Screens/Forgot_Password/Components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  static String routeName = "/forgot";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password")
      ),
      body: Body(),
    );
  }
}
