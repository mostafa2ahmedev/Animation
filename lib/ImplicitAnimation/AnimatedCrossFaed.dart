import 'package:flutter/material.dart';

class AnimatedCrossFadeEx extends StatefulWidget {
  const AnimatedCrossFadeEx({super.key});

  @override
  State<AnimatedCrossFadeEx> createState() => _AnimatedCrossFadeExState();
}

class _AnimatedCrossFadeExState extends State<AnimatedCrossFadeEx> {
  bool isFirst = true;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated CrossFade'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isFirst = !isFirst;
            });
          },
          child: AnimatedCrossFade(
              firstChild: Container(
                height: 200,
                width: 200,
                color: Colors.teal,
                child: Image.asset('assets/jerry.png'),
              ),
              secondChild: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
                child: Image.asset('assets/tom.png'),
              ),
              crossFadeState:
                  isFirst // دا بيتحكم مين الي يظهر  يعني بيتابع الستيت بتاع الويدجت زي كنترولر
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
              firstCurve: Curves.easeInCubic,
              secondCurve: Curves.easeInCubic,
              duration: const Duration(milliseconds: 800)),
        ),
      ),
    );
  }
}
