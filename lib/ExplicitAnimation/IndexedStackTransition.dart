import 'package:flutter/material.dart';

class IndexedStackTransitionEx extends StatefulWidget {
  const IndexedStackTransitionEx({super.key});

  @override
  State<IndexedStackTransitionEx> createState() =>
      _IndexedStackTransitionExState();
}

class _IndexedStackTransitionExState extends State<IndexedStackTransitionEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _scaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _controller.forward();
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
        title: const Text('Indexed Stack'),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [
          ScaleTransition(
            scale: _scaleAnimation,
            child: FadeTransition(
              opacity: _opacityAnimation,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Image.asset('assets/tom.png'),
              ),
            ),
          ),
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: Image.asset('assets/jerry.png'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          currentIndex++;
          if (currentIndex > 1) {
            currentIndex = 0;
          }
          _controller.reset();
          _controller.forward();
        });
      }),
    );
  }
}
