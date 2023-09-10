import 'package:flutter/material.dart';

class PageRotationScalseTransition extends PageRouteBuilder {
  final dynamic page;
  PageRotationScalseTransition({this.page})
      : super(
            reverseTransitionDuration: const Duration(seconds: 1),
            transitionDuration: const Duration(seconds: 1),
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return Align(
                alignment: Alignment.center,
                child: RotationTransition(
                  turns: animation,
                  child: ScaleTransition(
                    scale: animation,
                    child: page,
                  ),
                ),
              );
            });
}
