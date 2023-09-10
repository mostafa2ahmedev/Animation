// import 'dart:math';

// import 'package:flutter/material.dart';

// class AnimatedBuilderEx extends StatefulWidget {
//   const AnimatedBuilderEx({super.key});

//   @override
//   State<AnimatedBuilderEx> createState() => _AnimatedBuilderExState();
// }

// class _AnimatedBuilderExState extends State<AnimatedBuilderEx>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller =
//         AnimationController(vsync: this, duration: const Duration(seconds: 2))
//           ..repeat(reverse: true);
//     //cascade anotaion معناها كاريت الابوجكت واستخدمه علطلول
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Animated Builder'),
//       ),
//       body: Center(
//         // is used to create custom animation so it's more complex
//         child: AnimatedBuilder(
//           animation: _controller,
//           builder: (context, child) {
//             return Transform.rotate(
//                 angle: _controller.value * 2 * pi, child: child);
//           },
//           // for perfomance  عشان كل ريبلد مقعدش ابني نفس الحاجه الثابته
//           child: SizedBox(
//             height: 100,
//             width: 100,
//             child: Image.asset('assets/tom.png'),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedBuilderEx extends StatefulWidget {
  const AnimatedBuilderEx({super.key});

  @override
  State<AnimatedBuilderEx> createState() => _AnimatedBuilderExState();
}

class _AnimatedBuilderExState extends State<AnimatedBuilderEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    //cascade anotaion معناها كاريت الابوجكت واستخدمه علطلول
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
        title: const Text('Animated Builder'),
      ),
      body: Center(
        // is used to create custom animation so it's more complex
        child: RotationTransition2(
          animation: _controller,
        ),
      ),
    );
  }
}

class RotationTransition2 extends AnimatedWidget {
  const RotationTransition2({Key? key, required Animation<double> animation})
      : super(key: key, listenable: animation);

  Animation<double> get animation => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: animation.value * 2 * pi,
      child: SizedBox(
        height: 100,
        width: 100,
        child: Image.asset('assets/tom.png'),
      ),
    );
  }
}
