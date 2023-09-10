import 'dart:developer';

import 'package:flutter/material.dart';

class PositionedDirectionalEx extends StatefulWidget {
  const PositionedDirectionalEx({super.key});

  @override
  State<PositionedDirectionalEx> createState() =>
      _PositionedDirectionalExState();
}

class _PositionedDirectionalExState extends State<PositionedDirectionalEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..forward();

    _animation = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(150, 150, 0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positioned Directional Transition'),
      ),
      body: Stack(
        children: [
          // ايه الفرق بين دي وبين البوزينشن ترانزيشن مع انهم ممكن يعملو نفس الحاجه ؟
// الاتنين بيستخدمو عشان يكنترولو البوزيشن بتاع التشايلد  من البيرنت بتاعهم ولكنهم مختلفين بسيط
//  التانيه بتتحكم ف البوزيشن عن طريق 4 اتجاهات
//بس تاخد بالك ان التانيه مختلفه  ان معندهاش اصلا اي انيميشن  بعكس التانيه
// وبالتالي انا محتاج انيمشن بيلدر عشان اعمل الانيمشن
// ودي بتستخدم لو عندك الويدجت ملهاش قابليه انها تعمل انيميشن ف بحط البيرنت لها الانميتد بيلدر ودا بيعمل الانميشن
//
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              log('${_controller.value}');
              log('${_animation.value}');
              return PositionedDirectional(
                top: _animation.value.top,
                start: _animation.value.left,
                bottom: _animation.value.bottom,
                end: _animation.value.right,
                child: Container(
                  color: Colors.amber,
                ),
              );
            },
          ),
          const Align(
            alignment: Alignment.bottomCenter,
          )
        ],
      ),
    );
  }
}
