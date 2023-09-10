import 'package:flutter/material.dart';

class PositionedTransitionEx extends StatefulWidget {
  const PositionedTransitionEx({super.key});

  @override
  State<PositionedTransitionEx> createState() => _PositionedTransitionExState();
}

class _PositionedTransitionExState extends State<PositionedTransitionEx>
    with SingleTickerProviderStateMixin {
  // عندنا كنترولر واحد ولكن 3 انيمشن
  // طالما عملنا كنترولر يبقي لازم نديله التيكر عشان نديله الريفريش ريت بتاع السكرين
  late AnimationController _controller;
  late Animation<RelativeRect> _animation;
  late Animation<RelativeRect> _animation2;
  late Animation<RelativeRect> _animation3;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animation = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(250, 250, 0, 0))
        .animate(_controller);
    _animation2 = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(150, 150, 0, 0))
        .animate(_controller);
    _animation3 = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(50, 50, 0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller
        .dispose(); // memory free ولازم قبل الديسببوسز بتات السكرين نفسها
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positioned Transition'),
      ),
      body: Stack(
        children: [
          PositionedTransition(
            rect: _animation3,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blueGrey,
              child: Image.asset('assets/tom.png'),
            ),
          ),
          PositionedTransition(
            rect: _animation2,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.grey,
              child: Image.asset('assets/jerry.png'),
            ),
          ),
          PositionedTransition(
            rect: _animation,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.greenAccent,
              child: Image.asset('assets/tom.png'),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _controller.reset();
                    // دا عشان بيقولك لما تعمل ريفيرس يتاكد انك وصلت للبدايه وتبدا تاني
                    _controller.forward();
                  },
                  child: const Icon(Icons.animation),
                ),
                ElevatedButton(
                  onPressed: () {
                    _controller.reverse();
                  },
                  child: const Icon(Icons.close),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
