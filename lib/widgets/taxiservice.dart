import 'package:flutter/material.dart';

class TaxiCompany {
  final String assetName;
  final String type;
  final int priceOutOf5;

  TaxiCompany({required this.assetName, required this.type, required this.priceOutOf5});
}

class TaxiService extends StatelessWidget {
  final Map<String, TaxiCompany> items;

  TaxiService({required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.2,
      ),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        final itemName = items.keys.elementAt(index);
        final item = items[itemName]!;

        return GridTile(
          child: Container(
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF000000).withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if(item.type == "luxury")
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 2.0,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0xFF000000),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: Text(
                      item.type.replaceFirst(item.type[0], item.type[0].toUpperCase()),
                      style: const TextStyle(
                        color: Color(0xFFCFA92D),
                        fontSize: 10,
                        fontFamily: 'UberMove',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                SizedBox(
                 height: item.type == "luxury" ? 8.0 : 0.0,
                ),
                Image.asset(item.assetName),
                const SizedBox(height: 8.0),
                // Text(
                //   'Priority: ${item.priority}',
                //   style: TextStyle(fontSize: 16.0),
                // ),
                const SizedBox(height: 4.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (i) {
                    return Text(
                      i < item.priceOutOf5 ? "\$" : "\$",
                      style: TextStyle(
                        fontFamily: 'UberMove',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: i < item.priceOutOf5 ? const Color(0xFF909090) : const Color(0xFFDCDCDC),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}