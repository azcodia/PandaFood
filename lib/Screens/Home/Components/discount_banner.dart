import 'package:flutter/material.dart';

import '../../../size_config.dart';


class DoscountBanner extends StatelessWidget {
  const DoscountBanner({
    Key? key, required this.headContent, required this.content,
  }) : super(key: key);

  final String headContent;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20), vertical: getProportionateScreenWidth(15)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF4a3298),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text.rich(
        TextSpan(
          text: "$headContent\n",
          style: TextStyle(
            color: Colors.white
          ),
          children: [
            TextSpan(
              text: content,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              )
            )
          ],
        )
      ),
    );
  }
}

