import 'package:flutter/material.dart';

class CustomPainterEx extends StatefulWidget {
  const CustomPainterEx({super.key});

  @override
  State<CustomPainterEx> createState() => _CustomPainterExState();
}

class _CustomPainterExState extends State<CustomPainterEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimtaion;
  late Animation<Color?> _colorAnimtaion;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    _sizeAnimtaion = Tween<double>(begin: 50, end: 200).animate(_controller);
    _colorAnimtaion = ColorTween(begin: Colors.red, end: Colors.amber)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.bounceOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Custom Painter'),
  //     ),
  //     body: Center(
  //       child: AnimatedBuilder(
  //           //بستخدمها عشان الويدجت الي مش بتانميت بنفسها اعملها انيميت انا
  //           animation: _controller,
  //           builder: (context, child) {
  //             return Container(
  //               decoration: BoxDecoration(
  //                 shape: BoxShape.circle,
  //                 color: _colorAnimtaion.value,
  //               ),
  //               height: _sizeAnimtaion.value,
  //               width: _sizeAnimtaion.value,
  //             );
  //           }),
  //     ),
  //   );
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Painter'),
      ),
      body: Center(
        child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return CustomPaint(
                painter: CirclePainer(
                    ssize: _sizeAnimtaion.value,
                    color: _colorAnimtaion.value!), // add custom painter
                size: const Size.square(100),
              );
            }),
      ),
    );
  }
}

class CirclePainer extends CustomPainter {
  final Color color;
  final double ssize;
  CirclePainer({required this.color, required this.ssize});
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    paint.color = color;
    paint.style = PaintingStyle.fill;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), ssize, paint);
  }

  @override
  bool shouldRepaint(CirclePainer oldDelegate) {
    return true;
  }
}
