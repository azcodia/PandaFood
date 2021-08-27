import 'package:flutter/material.dart';
import 'package:shop_app/Component/social_card.dart';
import 'package:shop_app/Screens/Sign_Up/Components/sign_up_form.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text("Registrasi Account", style: headingStyle),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                      icon: "assets/icons/google-icon.svg", onPress: () {}),
                  SocialCard(icon: "assets/icons/facebook-2.svg", onPress: () {}),
                  SocialCard(icon: "assets/icons/twitter.svg", onPress: () {}),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              Text(
                'By continuing your confirm that you agree \nwith our Term and Condition',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.caption,
              )
              // NoAccountText()
            ],
          ),
        ),
      ),
    );
  }
}
