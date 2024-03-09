import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/assetname.dart';

class ContactComponent extends StatelessWidget {
  const ContactComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.86,
      //height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color(0xFFE4E4E4),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Text(
                  'Contact airport',
                  style: TextStyle(
                    color: Color(0xFF080808),
                    fontSize: 24,
                    fontFamily: 'UberMove',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Police',
                      style: TextStyle(
                        color: Color(0xFF080808),
                        fontSize: 18,
                        fontFamily: 'UberMove',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.01,
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                      ),
                      child: SvgPicture.asset(
                        callblack,
                        width: 20,
                        height: 19,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Color(0xFFE5E5E5),
                  thickness: 1,
                  indent: MediaQuery.of(context).size.width * 0.05,
                  endIndent: MediaQuery.of(context).size.width * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      'Lost and Found',
                      style: TextStyle(
                        color: Color(0xFF080808),
                        fontSize: 18,
                        fontFamily: 'UberMove',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.01,
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                      ),
                      child: SvgPicture.asset(
                        callblack,
                        width: 20,
                        height: 19,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Color(0xFFE5E5E5),
                  thickness: 1,
                  indent: MediaQuery.of(context).size.width * 0.05,
                  endIndent: MediaQuery.of(context).size.width * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      'Transport',
                      style: TextStyle(
                        color: Color(0xFF080808),
                        fontSize: 18,
                        fontFamily: 'UberMove',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.01,
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                      ),
                      child: SvgPicture.asset(
                        callblack,
                        width: 20,
                        height: 19,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Color(0xFFE5E5E5),
                  thickness: 1,
                  indent: MediaQuery.of(context).size.width * 0.05,
                  endIndent: MediaQuery.of(context).size.width * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      'Head Office',
                      style: TextStyle(
                        color: Color(0xFF080808),
                        fontSize: 18,
                        fontFamily: 'UberMove',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.01,
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                      ),
                      child: SvgPicture.asset(
                        callblack,
                        width: 20,
                        height: 19,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
        ],
      ),
    );
  }
}
