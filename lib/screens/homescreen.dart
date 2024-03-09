import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marvel/components/bottomrow.dart';
import 'package:marvel/components/forex.dart';
import 'package:marvel/components/imagestack.dart';
import 'package:marvel/components/publictransport.dart';
import 'package:marvel/components/selfparking.dart';
import 'package:marvel/components/taxiservice.dart';
import 'package:marvel/components/terminalmap.dart';
import 'package:marvel/widgets/horizontalnavbar.dart';
import 'package:marvel/components//header.dart';
import 'package:marvel/components/contact.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onNavBarItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Header(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                HeroStack(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                HorizontalNavBar(
                  items: const <String>[
                    'Transport',
                    'Terminal',
                    'Forex',
                    'Contact info',
                  ],
                  onItemSelected: _onNavBarItemTapped,
                  currentIndex: _selectedIndex,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                TaxiServiceComponent(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                PublicTransportComponent(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                SelfParkingComponent(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                TerminalMapComponent(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ForexComponent(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ContactComponent(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                BottomRow(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
