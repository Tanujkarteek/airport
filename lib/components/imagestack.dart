import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants/assetname.dart';
import '../widgets/info.dart';
import '../widgets/infobutton.dart';

class HeroStack extends StatelessWidget {
  const HeroStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.86,
          height: MediaQuery.of(context).size.height * 0.35,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 2,
                sigmaY: 2,
              ),
              child: Image.asset(
                'assets/images/dubai.jpg',
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.darken,
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.86,
          height: MediaQuery.of(context).size.height * 0.35,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.01,
                ),
                width: MediaQuery.of(context).size.width * 0.82,
                height: MediaQuery.of(context).size.height * 0.16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.72,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InfoCol(
                            asset: cloud,
                            text1: '19°C',
                            text2: 'Cloudy',
                          ),
                          InfoCol(
                            asset: calender,
                            text1: '30 Jan',
                            text2: 'Mon',
                          ),
                          InfoCol(
                            asset: time,
                            text1: '8:45 PM',
                            text2: 'GMT +4',
                          ),
                          InfoCol(
                            asset: currency,
                            text1: 'AED',
                            text2: '1\$ = 3.67 AED',
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Color(0xFFE5E5E5),
                      thickness: 1,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.72,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const InfoButton(
                            asset: direction,
                            text: 'Get Directions',
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                            child: const VerticalDivider(
                              color: Color(0xFFE5E5E5),
                              thickness: 1,
                            ),
                          ),
                          const InfoButton(
                            asset: phone,
                            text: 'Call Airport',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
