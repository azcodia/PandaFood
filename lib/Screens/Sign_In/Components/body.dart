import 'package:flutter/material.dart';
import 'package:shop_app/Component/no_account_text.dart';
import 'package:shop_app/Component/social_card.dart';
import 'package:shop_app/Screens/Sign_In/Components/sign_form.dart';
import 'package:shop_app/size_config.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Welcome Back",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Sign in with your email and password \nor cuntinue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              SignForm(),
              SizedBox(height: getProportionateScreenHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(icon: "assets/icons/google-icon.svg", onPress: () {}),
                  SocialCard(icon: "assets/icons/facebook-2.svg", onPress: () {}),
                  SocialCard(icon: "assets/icons/twitter.svg", onPress: () {}),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              NoAccountText()
            ],
          ),
        ),
      ),
    );
  }
}

