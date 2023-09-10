import 'package:flutter/material.dart';

class AnimatedAlignEx extends StatefulWidget {
  const AnimatedAlignEx({super.key});

  @override
  State<AnimatedAlignEx> createState() => _AnimatedAlignExState();
}

int number = 0;

class _AnimatedAlignExState extends State<AnimatedAlignEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Align'),
      ),
      body: Stack(
        children: [
          //السنتر بتاع السكرين هوا الي زيرو اكس زيرو واي
          // بالنسبه للاكس اليمين موجب والشمال سالب عادي ولكن بالنسبه للواي معكوسه واعلي حاجه 1
          AnimatedAlign(
            alignment: getAligment(number),
            duration: const Duration(milliseconds: 500),
            curve: Curves.bounceOut,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset('assets/jerry.png'),
            ),
          ),
          AnimatedAlign(
            alignment: getAligment(number + 1),
            duration: const Duration(milliseconds: 500),
            curve: Curves.bounceOut,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset('assets/tom.png'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.animation),
          onPressed: () {
            setState(() {
              number = number + 1;
            });
          }),
    );
  }

  Alignment getAligment(int jnumber) {
    switch (jnumber) {
      case 1:
        return Alignment.topCenter;
      case 2:
        return Alignment.topLeft;
      case 3:
        return Alignment.topRight;
      case 4:
        return Alignment.bottomCenter;
      case 5:
        return Alignment.bottomRight;
      case 6:
        return Alignment.bottomLeft;
      case 7:
        return Alignment.centerRight;
      case 8:
        return Alignment.centerLeft;
      default: // عامله زي الايلس بتتنفذ لو مفيش حاجه من الكيزس نفعت
        number = 0;
        return Alignment.center;
    }
  }
}
