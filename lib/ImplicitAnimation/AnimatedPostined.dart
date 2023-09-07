import 'package:flutter/material.dart';

class AnimatedPositinedEx extends StatefulWidget {
  const AnimatedPositinedEx({super.key});

  @override
  State<AnimatedPositinedEx> createState() => _AnimatedPositinedExState();
}

class _AnimatedPositinedExState extends State<AnimatedPositinedEx> {
  bool start = false;

  @override
  Widget build(BuildContext context) {
    //بنستخدم الستاك ف الانيميشن لما يكون عندنا اكتر من لاير من الانيميشن ممكن يتتحطو فوق بعضهم
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Positined'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              left: 0,
              top: 0,
              child: Container(
                height: 120,
                width: 120,
                color: Colors.transparent,
                child: Image.asset('assets/jerry.png'),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              top: 0,
              // لما عملنا من الليفت بالمديا كويري بحيث انها تبقي ع السايز بتاع السكرين ضرب ايرور مش عارف ليه
              left: start
                  ? 0
                  : MediaQuery.of(context).size.width -
                      150, // والممشكله كانت حصلت بسبب انه من عند الويدث بتاع السكرين بيبدا يبدا من اول الصوره
              // right: 0,
              child: Container(
                height: 120,
                width: 120,
                color: Colors.transparent,
                child: Image.asset('assets/tom.png'),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              top: start ? 0 : MediaQuery.of(context).size.width / 2,
              left: start ? 0 : MediaQuery.of(context).size.width / 2,
              child: Container(
                height: 120,
                width: 120,
                color: Colors.transparent,
                child: Image.asset('assets/tom.png'),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: 0,
              top: start ? 0 : MediaQuery.of(context).size.height - 250,
              child: Container(
                height: 120,
                width: 120,
                color: Colors.transparent,
                child: Image.asset('assets/tom.png'),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            start = !start;
          });
        },
        child: Icon(start ? Icons.animation : Icons.back_hand),
      ),
    );
  }
}
