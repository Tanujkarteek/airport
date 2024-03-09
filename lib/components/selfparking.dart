import 'package:flutter/material.dart';

import '../constants/assetname.dart';
import '../widgets/parking.dart';

class SelfParkingComponent extends StatelessWidget {
  const SelfParkingComponent({super.key});

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
                  'Self Parking',
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
          Row(
            children:[
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF080808),
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  left: MediaQuery.of(context).size.width * 0.05,
                ),
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.01,
                  horizontal: MediaQuery.of(context).size.width * 0.03,
                ),
                child: Text(
                  'T1',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontFamily: 'UberMove',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFE5E5E5),
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  left: MediaQuery.of(context).size.width * 0.05,
                ),
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.01,
                  horizontal: MediaQuery.of(context).size.width * 0.03,
                ),
                child: Text(
                  'T2',
                  style: TextStyle(
                    color: Color(0xFF080808),
                    fontSize: 16,
                    fontFamily: 'UberMove',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.86,
              child: ParkingService(
                items: {
                  'Two Wheeler': Parking(
                    assetName: bike,
                    name: "Two Wheeler",
                    time: "AED 50/day",
                  ),
                  'Car Parking': Parking(
                    assetName: car,
                    name: "Car Parking",
                    time: "AED 100/day",
                  ),
                  'Electric Vehicle': Parking(
                    assetName: electric,
                    name: "Electric Vehicle",
                    time: "AED 100/day",
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
