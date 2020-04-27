import 'package:flutter/material.dart';
import 'package:headphone_strore/utils/colors.dart';

class ItemFullScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDesign.blackBlue,
      body: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Hero(
          tag: "item",
          child: Container(
            padding: EdgeInsets.all(24),
            alignment: Alignment.center,
            height: double.infinity,
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
                  15,
                ))),
            child: Image.asset(
              'assets/headphones.png',
            ),
          ),
        ),
      ),
    );
  }
}
