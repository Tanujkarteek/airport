import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/assetname.dart';

class InfoCol extends StatelessWidget {
  final String asset;
  final String text1;
  final String text2;
  const InfoCol({super.key, required this.asset, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SvgPicture.asset(
          asset,
          width: 25,
          height: 24,
        ),
        Text(
          text1,
          style: TextStyle(
            color: Color(0xFF080808),
            fontSize: 16,
            fontFamily: 'UberMove',
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            color: Color(0xFF909090),
            fontSize: 12,
            fontFamily: 'UberMove',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
