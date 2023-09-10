import 'package:flutter/material.dart';

class AnimatedPhysicalModelEx extends StatefulWidget {
  const AnimatedPhysicalModelEx({super.key});

  @override
  State<AnimatedPhysicalModelEx> createState() =>
      _AnimatedPhysicalModelExState();
}

class _AnimatedPhysicalModelExState extends State<AnimatedPhysicalModelEx> {
  bool isPressed = false;
  void toggleElvation() {
    setState(() {
      isPressed = !isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Physical Model'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            toggleElvation();
          },
          child: Center(
            child: AnimatedPhysicalModel(
              shape: BoxShape.rectangle,
              elevation: isPressed ? 50 : 0,
              color: Colors.blue, // دا الكالور بتاع الويدجت نفسها اصلا
              borderRadius: BorderRadius.circular(isPressed ? 50 : 0),
              shadowColor: Colors.red,
              duration: const Duration(milliseconds: 500),
              curve: Curves.decelerate,
              child: SizedBox(
                width: 200,
                height: 200,
                child: Image.asset('assets/jerry.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
