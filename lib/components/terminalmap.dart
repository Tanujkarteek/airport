import 'package:flutter/material.dart';

class TerminalMapComponent extends StatelessWidget {
  const TerminalMapComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.86,
      height: MediaQuery.of(context).size.height * 0.26,
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
                  'Terminal Map',
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
                  'T3',
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.78,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/map.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.04,
                decoration: BoxDecoration(
                  color: Color(0xFF080808),
                  borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.02),
                ),
                child: Center(
                  child: Text(
                    'View',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontFamily: 'UberMove',
                      fontWeight: FontWeight.w700,
                    ),
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
