import 'package:flutter/material.dart';
import 'package:shop_app/Screens/otp/Components/body.dart';


class OTPScreen extends StatelessWidget {
  const OTPScreen({ Key? key }) : super(key: key);

  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verivication"),
      ),
      body: Body(),
    );
  }
}