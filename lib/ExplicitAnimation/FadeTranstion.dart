import 'package:flutter/material.dart';

class FadeTransitionEx extends StatefulWidget {
  const FadeTransitionEx({super.key});

  @override
  State<FadeTransitionEx> createState() => _FadeTransitionExState();
}

class _FadeTransitionExState extends State<FadeTransitionEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
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
        title: const Text('Fade Transition'),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Image.asset('assets/tom.png'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _controller.reset();
        _controller.forward();
      }),
    );
  }
}
