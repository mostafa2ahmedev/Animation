import 'package:flutter/material.dart';

class AnimatedSwitcherEx extends StatefulWidget {
  const AnimatedSwitcherEx({super.key});

  @override
  State<AnimatedSwitcherEx> createState() => _AnimatedSwitcherExState();
}

bool visible = true;

class _AnimatedSwitcherExState extends State<AnimatedSwitcherEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Switcher'),
      ),
      body: Center(
        child: AnimatedSwitcher(
          switchInCurve: Curves.bounceOut,
          switchOutCurve: Curves.bounceInOut,
          duration: const Duration(seconds: 1),
          child: visible
              ? ElevatedButton(onPressed: () {}, child: const Text('Login'))
              : const CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            visible = !visible;
          });
        },
        child: const Icon(Icons.switch_access_shortcut),
      ),
    );
  }
}
