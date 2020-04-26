import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:headphone_strore/screens/brand_names.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Headphone Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: BrandNames(),
    );
  }
}
