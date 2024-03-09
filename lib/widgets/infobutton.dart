import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoButton extends StatelessWidget {
  final String asset;
  final String text;
  const InfoButton({super.key, required this.asset, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        SvgPicture.asset(
          asset,
          width: 20,
          height: 19,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.02,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFF080808),
            fontSize: 14,
            fontFamily: 'UberMove',
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
