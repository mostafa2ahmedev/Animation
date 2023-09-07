import 'package:flutter/material.dart';

class AnimatedPaddingEx extends StatefulWidget {
  const AnimatedPaddingEx({super.key});

  @override
  State<AnimatedPaddingEx> createState() => _AnimatedPaddingExState();
}

class _AnimatedPaddingExState extends State<AnimatedPaddingEx> {
  List<String> chars = ['tom', 'jerry'];
  double padding = 10;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Padding'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            chars.length,
            (index) => AnimatedPadding(
              curve: Curves.decelerate,
              padding: EdgeInsets.all(isExpanded ? 30 : 10),
              duration: const Duration(milliseconds: 500),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/${chars[index]}.png'))),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isExpanded ? Icons.expand_less : Icons.expand),
        onPressed: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
      ),
    );
  }
}
