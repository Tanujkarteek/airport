import 'package:flutter/material.dart';

class ForexComponent extends StatelessWidget {
  const ForexComponent({super.key});

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
                  'Forex exchange',
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
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              title: Text(
                'Travelex',
                style: TextStyle(
                  color: Color(0xFF080808),
                  fontSize: 16,
                  fontFamily: 'UberMove',
                  fontWeight: FontWeight.w700,
                ),
              ),
              initiallyExpanded: true,
              expandedAlignment: Alignment.centerLeft,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    bottom: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: Text(
                    'Terminal 3- Airside Dept Downtown, Concourse B, Terminal 3, beside Winston Smoking room',
                    style: TextStyle(
                      color: Color(0xFF909090),
                      fontSize: 12,
                      fontFamily: 'UberMove',
                      fontWeight: FontWeight.w400,
                    ),
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xFFE5E5E5),
            thickness: 1,
            indent: MediaQuery.of(context).size.width * 0.05,
            endIndent: MediaQuery.of(context).size.width * 0.05,
          ),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              title: Text(
                'Al Ansari Exchange',
                style: TextStyle(
                  color: Color(0xFF080808),
                  fontSize: 16,
                  fontFamily: 'UberMove',
                  fontWeight: FontWeight.w700,
                ),
              ),
              initiallyExpanded: false,
              expandedAlignment: Alignment.centerLeft,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    bottom: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: Text(
                    'Terminal 3- Airside Dept Downtown, Concourse B, Terminal 3, beside Winston Smoking room',
                    style: TextStyle(
                      color: Color(0xFF909090),
                      fontSize: 12,
                      fontFamily: 'UberMove',
                      fontWeight: FontWeight.w400,
                    ),
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xFFE5E5E5),
            thickness: 1,
            indent: MediaQuery.of(context).size.width * 0.05,
            endIndent: MediaQuery.of(context).size.width * 0.05,
          ),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              title: Text(
                'Emirates NBD',
                style: TextStyle(
                  color: Color(0xFF080808),
                  fontSize: 16,
                  fontFamily: 'UberMove',
                  fontWeight: FontWeight.w700,
                ),
              ),
              initiallyExpanded: false,
              expandedAlignment: Alignment.centerLeft,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    bottom: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: Text(
                    'Terminal 3- Airside Dept Downtown, Concourse B, Terminal 3, beside Winston Smoking room',
                    style: TextStyle(
                      color: Color(0xFF909090),
                      fontSize: 12,
                      fontFamily: 'UberMove',
                      fontWeight: FontWeight.w400,
                    ),
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
    );
  }
}
