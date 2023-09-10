import 'package:flutter/material.dart';

// عشان اعمل انيميشن للبيدجس محتاج اني ارث من الكلاس دا واعمل التعديلات بتاعتي هنا
class PageFadeTransition extends PageRouteBuilder {
  final dynamic page;
  //دي البيدج الي انا محتاج اعمل عليها الانيميشن
  PageFadeTransition({this.page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return Align(
                alignment: Alignment.center,
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              );
            });
  // البيدج بيلدر دا مسؤول عن انه يعمل بيلدر  يوديك للسكرين الجديده
  //الترانزسن بيلدر دا مسؤول عن الانيميشن بقا وانت رايح للسكرين
  // الانيميشن الاول دا بتاع الترانزشن عادي لكن التاني لو عايز اكسترا انيمشن
}
