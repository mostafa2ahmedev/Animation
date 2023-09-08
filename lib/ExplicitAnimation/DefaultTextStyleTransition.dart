import 'package:flutter/material.dart';

class DefaultTextStyleTransitionEx extends StatefulWidget {
  const DefaultTextStyleTransitionEx({super.key});

  @override
  State<DefaultTextStyleTransitionEx> createState() =>
      _DefaultTextStyleTransitionExState();
}

class _DefaultTextStyleTransitionExState
    extends State<DefaultTextStyleTransitionEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  TextStyle style1 = const TextStyle(
      color: Colors.red, fontSize: 36, fontWeight: FontWeight.bold);

  TextStyle style2 = const TextStyle(
      color: Colors.black, fontSize: 26, fontWeight: FontWeight.normal);
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Defualt Transition'),
      ),
      body: Center(
        //العمليه بتاعت تحويل نوع الانيميشن كنا ممكن منعملهاش ونعملها من فوق علطول ع نوع التوين وخلاص
        child: DefaultTextStyleTransition(
            style: _animation.drive(TextStyleTween(begin: style1, end: style2)),
            child: const Text('Hello Brother')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.status == AnimationStatus.completed) {
            _controller.reverse();
            _controller.repeat();
          } else {
            _controller.forward();
          }
        },
        child: const Icon(Icons.animation),
      ),
    );
  }
}
