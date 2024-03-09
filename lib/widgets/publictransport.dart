import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class PublicTransport {
  final String assetName;
  final String name;
  final String time;
  PublicTransport({required this.assetName, required this.name, required this.time});
}

class PublicTransportService extends StatelessWidget {
  final Map<String, PublicTransport> items;
  const PublicTransportService({super.key, required this.items});

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
                margin: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children:[
                    SvgPicture.asset(
                      item.assetName,
                      width: 31,
                      height: 30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Text(
                      item.name,
                      style: const TextStyle(
                        color: Color(0xFF080808),
                        fontSize: 16,
                        fontFamily: 'UberMove',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      item.time,
                      style: const TextStyle(
                        color: Color(0xFF909090),
                        fontSize: 12,
                        fontFamily: 'UberMove',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF080808),
                      size: 20,
                      weight: 20,
                    ),
                  ],
                ),
              ),
              if(index != items.length - 1)
                const Divider(
                  color: Color(0xFFE5E5E5),
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
            ],
          );
        },
    );
  }
}
