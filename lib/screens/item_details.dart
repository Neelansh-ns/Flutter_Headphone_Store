import 'package:flutter/material.dart';
import 'package:headphone_strore/screens/item_full_screen.dart';
import 'package:headphone_strore/utils/colors.dart';

class ItemDetails extends StatelessWidget {
  final String title;

  ItemDetails(this.title);

  List itemDetails = [
    "40mm Dynamic Driver.",
    "Wireless range of 33 Feet.",
    "8hrs of Battery Life.",
    "1 Year of Warranty.",
    "Super Light Weight Design."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorsDesign.blackBlue,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: CircleAvatar(
                              backgroundColor: Color(0xff222C35),
                              radius: 21,
                              child: Text(
                                "<",
                                style: TextStyle(
                                    fontFamily: "Poppins", fontSize: 28, color: Colors.white),
                              )),
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xff222C35),
                          radius: 21,
                          child: Container(
                              child: Center(
                                  child: Image.asset(
                            'assets/shopping-cart.png',
                            fit: BoxFit.contain,
                            height: 20,
                            width: 20,
                            color: Colors.white,
                          ))),
                          foregroundColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(title,
                            style: TextStyle(
                              fontFamily: 'D-DIN',
                              color: Color(0xffffffff),
                              fontSize: 33,
                              letterSpacing: -1,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            )),
                        SizedBox(
                          height: 8,
                        ),
                        Text("WIRELESS",
                            style: TextStyle(
                              fontFamily: 'Helvetica',
                              color: Color(0xffffffff).withOpacity(0.6),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        height: 43,
                        width: 43,
                        decoration: BoxDecoration(
                            color: Color(0xff17222b),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: Color(0xff0d1419),
                                offset: Offset(
                                  5,
                                  5,
                                ),
                              ),
                              BoxShadow(
                                blurRadius: 10,
                                color: Color(0xff21303d),
                                offset: Offset(
                                  -5,
                                  -5,
                                ),
                              ),
                            ],
                            gradient: LinearGradient(
                              stops: [0, 1],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xff151f27), Color(0xff19242e)],
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(
                              22,
                            ))),
                        child: Text(
                          "<",
                          style: TextStyle(
                              fontFamily: "Poppins", fontSize: 28, color: Color(0xff08d9cb)),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (c, a1, a2) => ItemFullScreen(),
                              transitionsBuilder: (c, anim, a2, child) =>
                                  FadeTransition(opacity: anim, child: child),
                              transitionDuration: Duration(milliseconds: 300),
                              opaque: true,
                            ),
                          ),
                          child: Center(
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(16),
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Color(0xff17222b),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 12/4,
                                      color: Color(0xff21303d),
                                      offset: Offset(
                                        12/4,
                                        12/4,
                                      ),
                                    ),
                                    BoxShadow(
                                      blurRadius: 12/6,
                                      color: Color(0xff0d1419),
                                      offset: Offset(
                                        -12/6,
                                        -12/6,
                                      ),
                                    ),
                                  ],
                                  gradient: LinearGradient(
                                    stops: [0, 1],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Color(0xff151f27), Color(0xff19242e)],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(
                                    25,
                                  ))),
                              child: Hero(
                                tag: "item",
                                child: Image.asset(
                                  'assets/headphones.png',
                                  height: 150,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 43,
                        width: 43,
                        decoration: BoxDecoration(
                            color: Color(0xff17222b),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: Color(0xff0d1419),
                                offset: Offset(
                                  5,
                                  5,
                                ),
                              ),
                              BoxShadow(
                                blurRadius: 10,
                                color: Color(0xff21303d),
                                offset: Offset(
                                  -5,
                                  -5,
                                ),
                              ),
                            ],
                            gradient: LinearGradient(
                              stops: [0, 1],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xff151f27), Color(0xff19242e)],
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(
                              22,
                            ))),
                        child: Text(
                          ">",
                          style: TextStyle(
                              fontFamily: "Poppins", fontSize: 28, color: Color(0xff08d9cb)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("TROUBADOUR",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xffffffff),
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0.16,
                        )),
                    Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Opacity(
                          opacity: 0.7,
                          child: new Container(
                              width: 290,
                              height: 2,
                              decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff1b2833),
                                      Color(0xff949494),
                                      Color(0xff1b2833)
                                    ],
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
                              child: new Text("\$118.13",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Color(0xff08d9cb),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: itemDetails.map((detail) {
                          return Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Text("★  " + detail,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xffffffff),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                )),
                          );
                        }).toList()),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24, top: 16),
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xff17222b),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: Color(0xff0e1419),
                                offset: Offset(
                                  5,
                                  5,
                                ),
                              ),
                              BoxShadow(
                                blurRadius: 10,
                                color: Color(0xff20303d),
                                offset: Offset(
                                  -5,
                                  -5,
                                ),
                              ),
                            ],
                            gradient: LinearGradient(
                              stops: [0, 1],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xff151f27), Color(0xff19242e)],
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(
                              50,
                            ))),
                        child: Text("Add to cart",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff0affef),
                              fontSize: 21,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              letterSpacing: -0.5064705905914306,
                            )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Color _getAdjustColor(Color baseColor, double amount) {
    Map<String, int> colors = {
      'r': baseColor.red,
      'g': baseColor.green,
      'b': baseColor.blue
    };

    colors = colors.map((key, value) {
      if (value + amount < 0) {
        return MapEntry(key, 0);
      }
      if (value + amount > 255) {
        return MapEntry(key, 255);
      }
      return MapEntry(key, (value + amount).floor());
    });
    return Color.fromRGBO(colors['r'], colors['g'], colors['b'], 1);
  }
}
