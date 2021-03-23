import 'dart:ui';

import 'package:flutter/material.dart';

class CustomAppBar {
  static Widget appBar({
    @required double height,
    @required Color color,
    @required String text,
    @required double fontSize,
    @required void onPressed(),
  }) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Stack(
        children: [
          Container(
            alignment: Alignment(-0.96, 0),
            child: IconButton(
              color: Colors.transparent,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: onPressed,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: fontSize,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  static Widget appBarGradient({
    @required double height,
    @required Color color,
    @required String text,
    @required AlignmentGeometry begin,
    @required AlignmentGeometry end,
    @required List<Color> colors,
    @required void onPressed(),
  }) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: begin,
        end: end,
        colors: colors,
      )),
      child: Stack(
        children: [
          Container(
            alignment: Alignment(-0.96, 0),
            child: IconButton(
              color: Colors.transparent,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: onPressed,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
