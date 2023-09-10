import 'package:flutter/material.dart';

class RotationTransitionEx extends StatefulWidget {
  const RotationTransitionEx({super.key});

  @override
  State<RotationTransitionEx> createState() => _RotationTransitionExState();
}

class _RotationTransitionExState extends State<RotationTransitionEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  // late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    // _animation = Tween<double>(begin: 0, end: 5).animate(_controller);
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
        title: const Text('Rotation Transition'),
      ),
      body: Center(
        child: RotationTransition(
          alignment: Alignment.center, // دي  بتحدد النقطه الي هيلف منها
          turns: _controller,
          // ممكن اديله الكنترولر علطول ويشتغل بس لو عايز العب ف قيم الانيميشن  والكيرف وكدا لازم عن طريق الانيميشن اوبجكت
          child: SizedBox(
            height: 100,
            width: 100,
            child: Image.asset('assets/tom.png'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _controller.reset();
        _controller.forward();
        // _controller.fling(velocity: 5);
        // _controller.animateTo(1);
      }),
    );
  }
}
