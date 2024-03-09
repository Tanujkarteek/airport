import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.86,
      child:Column(
        children: [
          Row(
            children: [
              Text(
                'Dubai Airport - DXB',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Color(0xFF222222),
                  fontSize: 25,
                  fontFamily: 'UberMove',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            children: [
              Text(
                'Dubai',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Color(0xFF767676),
                  fontSize: 14,
                  fontFamily: 'UberMove',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              RichText(
                text: const TextSpan(
                  text: '🇦🇪',
                  style: TextStyle(
                    color: Color(0xFF767676),
                    fontSize: 14,
                    fontFamily: 'UberMove',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              RichText(
                text: const TextSpan(
                  text: 'United Arab Emirates',
                  style: TextStyle(
                    color: Color(0xFF767676),
                    fontSize: 14,
                    fontFamily: 'UberMove',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
