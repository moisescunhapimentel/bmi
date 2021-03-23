import 'package:flutter/material.dart';

class CustomElevatedButton {
  static ElevatedButton elevatedButtonText(
      {TextStyle textStyle,
      Color backgroundColor,
      @required String text,
      double fontSize,
      BorderSide side,
      @required void function()}) {
    return ElevatedButton(
      onPressed: function,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Text(
          text,
          style: textStyle ??
              TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
        ),
      ),
      style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          shape: RoundedRectangleBorder(
              side: side ?? BorderSide.none,
              borderRadius: BorderRadius.circular(50))),
    );
  }

  static ElevatedButton elevatedButtonIcon(
      {TextStyle textStyle,
      Color backgroundColor,
      @required Widget child,
      @required Function function()}) {
    return ElevatedButton(
      onPressed: function,
      child: child,
      style: ElevatedButton.styleFrom(
        primary: backgroundColor,
      ),
    );
  }
}
