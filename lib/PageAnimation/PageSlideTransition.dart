import 'package:flutter/material.dart';

class PageSlideTransition extends PageRouteBuilder {
  final dynamic page;
  PageSlideTransition({this.page})
      : super(
            reverseTransitionDuration: const Duration(milliseconds: 200),
            transitionDuration: const Duration(milliseconds: 200),
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var aanimation =
                  Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero)
                      .animate(animation);
              // اللعب ف الاتجاهات من ال0 وال 1 بس
              return SlideTransition(
                position: aanimation,
                child: child,
              );
            });
}
