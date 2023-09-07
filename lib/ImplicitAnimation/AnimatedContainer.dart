import 'package:flutter/material.dart';

class AnimatedContainerEx extends StatefulWidget {
  const AnimatedContainerEx({super.key});

  @override
  State<AnimatedContainerEx> createState() => _AnimatedContainerExState();
}

class _AnimatedContainerExState extends State<AnimatedContainerEx> {
  Color color = Colors.red;
  double borderR = 20;
  double width = 100, height = 100;

  void _changeValues() {
    setState(() {
      color = Colors.orange;
      borderR = 40;
      width = 300;
      height = 300;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _changeValues();
          },
          child: AnimatedContainer(
            height: height,
            width: width,
            duration: const Duration(milliseconds: 500),
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(borderR),
                image: const DecorationImage(
                    image: AssetImage('assets/jerry.png'))),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.animation),
          onPressed: () {
            setState(() {
              color = Colors.red;
              borderR = 20;
              width = 100;
              height = 100;
            });
          }),
    );
  }
}
