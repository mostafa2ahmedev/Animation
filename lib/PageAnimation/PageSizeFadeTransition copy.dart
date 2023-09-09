import 'package:flutter/material.dart';

class PageMixFadeTransition extends PageRouteBuilder {
  final dynamic page;
  PageMixFadeTransition({this.page})
      : super(
            reverseTransitionDuration: const Duration(seconds: 1),
            transitionDuration: const Duration(seconds: 1),
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return Align(
                alignment: Alignment.center,
                child: SizeTransition(
                  sizeFactor: animation,
                  child: FadeTransition(
                    opacity: animation,
                    child: page,
                  ),
                ),
              );
            });
}
