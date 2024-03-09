import 'package:flutter/material.dart';

import '../constants/assetname.dart';
import '../widgets/publictransport.dart';

class PublicTransportComponent extends StatelessWidget {
  const PublicTransportComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.86,
      height: MediaQuery.of(context).size.height * 0.23,
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
                  'Public transport',
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
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: PublicTransportService(
                items: {
                  'Metro': PublicTransport(
                    assetName: metro,
                    name: "Metro",
                    time: "6 am - 10 pm",
                  ),
                  'Bus': PublicTransport(
                    assetName: bus,
                    name: "Bus",
                    time: "available 24hrs",
                  ),
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
