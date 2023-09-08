import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBuilderEx extends StatefulWidget {
  const AnimatedBuilderEx({super.key});

  @override
  State<AnimatedBuilderEx> createState() => _AnimatedBuilderExState();
}

class _AnimatedBuilderExState extends State<AnimatedBuilderEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    //cascade anotaion معناها كاريت الابوجكت واستخدمه علطلول
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
        title: const Text('Animated Builder'),
      ),
      body: Center(
        // is used to create custom animation so it's more complex
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.rotate(
              angle: _controller.value * 2 * pi,
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset('assets/tom.png'),
              ),
            );
          },
        ),
      ),
    );
  }
}
