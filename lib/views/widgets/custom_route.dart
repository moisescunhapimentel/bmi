import 'package:flutter/material.dart';

class CustomRoute {
  static Route createRoute(
      {@required Widget page, Curve curve, Offset begin, Offset end}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        curve = curve ?? Curves.ease;
        begin = begin ?? Offset(0.0, 1.0);
        end = end ?? Offset.zero;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
