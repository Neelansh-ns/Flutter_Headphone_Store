import 'package:flutter/material.dart';
import 'package:headphone_strore/utils/colors.dart';

class ItemFullScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          alignment: Alignment.center,
          color: ColorsDesign.blackBlue,
          height: double.infinity,
          width: double.infinity,
          child: Hero(
            tag: "item",
            child: Image.asset(
              'assets/headphones.png',
              height: 250,
            ),
          ),
        ),
      ),
    );
  }
}
