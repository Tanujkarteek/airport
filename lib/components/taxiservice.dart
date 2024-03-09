import 'package:flutter/material.dart';

import '../constants/assetname.dart';
import '../widgets/taxiservice.dart';

class TaxiServiceComponent extends StatelessWidget {
  const TaxiServiceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.86,
      height: MediaQuery.of(context).size.height * 0.3,
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
                  'Taxi Service',
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
              child: TaxiService(
                items: {
                  'Uber': TaxiCompany(
                    assetName: uber,
                    type: "normal",
                    priceOutOf5: 4,
                  ),
                  'Careem': TaxiCompany(
                    assetName: careem,
                    type: "normal",
                    priceOutOf5: 4,
                  ),
                  'Yango': TaxiCompany(
                    assetName: yango,
                    type: "normal",
                    priceOutOf5: 3,
                  ),
                  'Blacklane': TaxiCompany(
                    assetName: blacklane,
                    type: "luxury",
                    priceOutOf5: 5,
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
