import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final Widget logo;
  final String title;
  final String subTitle;

  BrandCard({this.logo, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BrandCard()),
      ),
      child: Container(
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(height: 160, decoration: new BoxDecoration(color: Color(0xff1f2e3b))),
            Positioned(
              right: 24,
              top: 40,
              bottom: 40,
              width: 90,
              child: logo,
            ),
            Positioned(
              left: -38,
              top: 0,
              bottom: 0,
              child: Center(
                child: Text(title,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xffdcdcdc),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
