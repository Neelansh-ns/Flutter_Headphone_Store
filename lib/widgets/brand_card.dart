import 'package:flutter/material.dart';
import 'package:headphone_strore/screens/item_details.dart';

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
        MaterialPageRoute(builder: (context) => ItemDetails(title)),
      ),
      child: Container(
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
                decoration: BoxDecoration(color: Color(0xff1f2e3b))),
            Positioned(
              right: 16,
              top: 24,
              bottom: 24,
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
                      height: 1.5,
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
