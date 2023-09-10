import 'package:flutter/material.dart';

class SizeTransitionEx extends StatefulWidget {
  const SizeTransitionEx({super.key});

  @override
  State<SizeTransitionEx> createState() => _SizeTransitionExState();
}

class _SizeTransitionExState extends State<SizeTransitionEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.bounceInOut),
    );
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
        title: const Text('Size Transition'),
      ),
      body: Center(
        child: SizeTransition(
          sizeFactor: _animation,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.red,
            child: Image.asset('assets/tom.png'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.reset();
          _controller.forward();
          // _controller.repeat();
        },
        child: const Icon(Icons.animation),
      ),
    );
  }
}
