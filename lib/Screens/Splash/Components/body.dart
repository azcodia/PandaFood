import 'package:flutter/material.dart';
import 'package:shop_app/Component/default_button.dart';
import 'package:shop_app/Screens/Sign_In/sign_in_screen.dart';
import 'package:shop_app/Screens/Splash/Components/splash_content.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "title": "Welcome to E-Shop, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "title":
          "We help people conect with store \naround United State of Indonesia",
      "image": "assets/images/splash_2.png"
    },
    {
      "title": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"].toString(),
                    title: splashData[index]["title"].toString(),
                  ),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Continue",
                      onPress: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({index}) {
    return AnimatedContainer(
        duration: kAnimationDuration,
        margin: EdgeInsets.only(right: 5),
        height: 6,
        width: currentPage == index ? 20 : 6,
        decoration: BoxDecoration(
            color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
            borderRadius: BorderRadius.circular(3)));
  }
}

