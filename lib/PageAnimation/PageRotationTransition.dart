import 'package:flutter/material.dart';

class PageRotationTransition extends PageRouteBuilder {
  final dynamic page;
  PageRotationTransition({this.page})
      : super(
            reverseTransitionDuration: const Duration(seconds: 1),
            transitionDuration: const Duration(seconds: 1),
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var aanimation = Tween<double>(begin: 0, end: 1).animate(
                  CurvedAnimation(parent: animation, curve: Curves.easeInCirc));
              return RotationTransition(
                turns: aanimation,
                child: child,
              );
            });
}
