import 'package:bmi/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      accentColor: Colors.green,
      fontFamily: 'OpenSans',
    ),
    home: HomeView(),
  ));
}
