import 'package:flutter/material.dart';
import 'package:headphone_strore/utils/colors.dart';
import 'package:headphone_strore/widgets/brand_card.dart';

class BrandNames extends StatelessWidget {
  final List names = [
    "LSTN\nTROUBADOUR",
    "BEATS\nTROUBADOUR",
    "SONY\nWH-XB900N",
    "SENNHEISER\nHD-350BT"
  ];
  final List logos = [
    Image.asset(
      "assets/lstn.png",
      color: Colors.white,
    ),
    Image.asset(
      "assets/beats.png",
    ),
    Image.asset(
      "assets/sony.png",
      color: Colors.white,
    ),
    Image.asset(
      "assets/senheiser.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDesign.blackBlue,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Opacity(
                      opacity: 0.18,
                      child: Container(
                          height: 2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [Color(0xff1b2833), Color(0xff949494), Color(0xff1b2833)],
                                stops: [0, 0.5, 1],
                                begin: Alignment(-1.00, 0.00),
                                end: Alignment(1.00, -0.00),
                                // angle: 90,
                                // scale: undefined,
                              ))),
                    ),
                    Positioned(
                      child: Container(
                        color: ColorsDesign.blackBlue,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("TOP PICK",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xffffffff),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 72, right: 36),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: names.asMap().entries.map((entry) {
                        return BrandCard(logo: logos[entry.key], title: entry.value);
                      }).toList()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
