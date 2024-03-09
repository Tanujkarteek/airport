import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/assetname.dart';

class BottomRow extends StatelessWidget {
  const BottomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.45,
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.02,
          ),
          decoration: BoxDecoration(
            color: Color(0xFF080808),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                direction,
                width: 20,
                height: 19,
                color: Color(0xFFFFFFFF),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Text(
                'Get Directions',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                  fontFamily: 'UberMove',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.45,
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.02,
          ),
          decoration: BoxDecoration(
            color: Color(0xFF080808),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                callblack,
                width: 20,
                height: 19,
                color: Color(0xFFFFFFFF),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Text(
                'Call Airport',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                  fontFamily: 'UberMove',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
