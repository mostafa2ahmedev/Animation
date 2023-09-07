import 'package:flutter/material.dart';

class AnimatedTextEx extends StatefulWidget {
  const AnimatedTextEx({super.key});

  @override
  State<AnimatedTextEx> createState() => _AnimatedTextExState();
}

class _AnimatedTextExState extends State<AnimatedTextEx> {
  double fontSize = 20;
  Color color = Colors.red;

  void addAnimation() {
    setState(() {
      fontSize = 40;
      color = Colors.orange;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Text'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedDefaultTextStyle(
              style: TextStyle(
                fontSize: fontSize,
                color: color,
              ),
              duration: const Duration(milliseconds: 500),
              curve: Curves.bounceIn,
              child: const Text('Hello Brother'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    addAnimation();
                  },
                  icon: const Icon(Icons.add)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      fontSize = 20;
                      color = Colors.red;
                    });
                  },
                  icon: const Icon(Icons.remove))
            ],
          )
        ],
      ),
    );
  }
}
