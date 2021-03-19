import 'package:flutter/material.dart';

class CustomElevatedButton {
  static ElevatedButton elevatedButtonText(
      {TextStyle textStyle,
      Color backgroundColor,
      @required String text,
      BorderSide side,
      @required void function()}) {
    return ElevatedButton(
      onPressed: function,
      child: Text(
        text,
        style: textStyle ??
            TextStyle(fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          shape: RoundedRectangleBorder(
              side: side ?? BorderSide.none,
              borderRadius: BorderRadius.circular(20))),
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
