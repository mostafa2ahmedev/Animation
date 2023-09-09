import 'package:flutter/material.dart';

class PageScaleTransition extends PageRouteBuilder {
  final dynamic page;
  PageScaleTransition({this.page})
      : super(
            reverseTransitionDuration: const Duration(seconds: 1),
            transitionDuration: const Duration(seconds: 2),
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var aanimation = Tween<double>(begin: 0, end: 1).animate(
                  CurvedAnimation(
                      parent: animation, curve: Curves.bounceInOut));
              return ScaleTransition(
                scale: aanimation,
                child: child,
              );
            });
}
