import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CoustomAnimation {
  static PageRouteBuilder pageAnimation(
    Widget returnPage,
    Offset? begin,
    Offset? end,
    Curve? curves,
    int? duration,
  ) {
    
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => returnPage,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        Offset b = begin ?? const Offset(1.0, 0.0);
        Offset e = end ?? Offset.zero;
        Curve c = curves ?? Curves.easeInOut;

        var tween = Tween(begin: b, end: e).chain(CurveTween(curve: c));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
      transitionDuration: Duration(milliseconds: duration ?? 600),
    );
  }
}

/*

========================================================

Navigator.push(
context,
  CoustomAnimation.pageAnimation(
    RegisterPage(),
    Offset(1.0, 0.0),
    Offset.zero,
    Curves.easeInOut,
    500,
  ),
);

========================================================

right to left  =  Offset(-1.0, 0.0),

========================================================

left to right  =  Offset(-1.0, 0.0),

========================================================

top to bottom  =  Offset(0.0, -1.0),

========================================================

bottom to top  =  Offset(0.0, 1.0),

========================================================

 */