import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Parking {
  final String assetName;
  final String name;
  final String time;
  Parking({required this.assetName, required this.name, required this.time});
}

class ParkingService extends StatelessWidget {
  final Map<String, Parking> items;
  const ParkingService({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final itemName = items.keys.elementAt(index);
          final item = items[itemName]!;

          return Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children:[
                    SvgPicture.asset(
                      item.assetName,
                      width: 16,
                      height: 15,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Text(
                      item.name,
                      style: const TextStyle(
                        color: Color(0xFF767676),
                        fontSize: 16,
                        fontFamily: 'UberMove',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      item.time,
                      style: const TextStyle(
                        color: Color(0xFF080808),
                        fontSize: 14,
                        fontFamily: 'UberMove',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Icon(
                      Icons.info_outline,
                      color: Color(0xFF767676),
                      size: 16,
                    ),
                  ],
                ),
              ),
            ],
          );
        }
    );
  }
}