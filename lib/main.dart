import 'package:flutter/material.dart';
import 'package:headphone_strore/screens/brand_names.dart';
import 'package:headphone_strore/utils/colors.dart';
import 'package:headphone_strore/widgets/brand_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Headphone Store',
      themeMode: ThemeMode.dark,
      home: BrandNames(),
    );
  }
}
