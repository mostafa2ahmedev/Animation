import 'package:flutter/material.dart';

class AnimatedOpacityEx extends StatefulWidget {
  const AnimatedOpacityEx({super.key});

  @override
  State<AnimatedOpacityEx> createState() => _AnimatedOpacityExState();
}

class _AnimatedOpacityExState extends State<AnimatedOpacityEx> {
  //
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Opacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedOpacity(
                opacity: visible ? 1 : 0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOutCubic,
                child: const Text('Tom And Jerry'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedOpacity(
                  opacity: visible ? 1 : 0,
                  duration: const Duration(milliseconds: 900),
                  curve: Curves.easeInOutCubic,
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/jerry.png'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedOpacity(
                opacity: visible ? 1 : 0,
                duration: const Duration(milliseconds: 1200),
                curve: Curves.easeInOutCubic,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/tom.png'),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.animation),
        onPressed: () {
          setState(() {
            visible = !visible;
          });
        },
      ),
    );
  }
}
