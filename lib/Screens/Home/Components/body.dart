import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/Screens/Home/Components/discount_banner.dart';
import 'package:shop_app/Screens/Home/Components/search_field.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import 'home_header.dart';
import 'icon_btn_with_counter.dart';


class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            DoscountBanner(
              headContent: "A Summer Surprise",
              content: "Cashback 20%",
            )
          ],
        ),
      )
    );
  }
}