import 'package:flutter/material.dart';
import 'package:shop_app/Component/default_button.dart';
import 'package:shop_app/Screens/Home/home_screen.dart';
import 'package:shop_app/size_config.dart';


class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.01),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.5,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenHeight * 0.5,
          child: DefaultButton(
            text: "Back To Home", onPress: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            }
          ),
        ),
        Spacer()
      ],
    );
  }
}