import 'package:flutter/material.dart';

class AnimatedPositinedDirectionalEx extends StatefulWidget {
  const AnimatedPositinedDirectionalEx({super.key});

  @override
  State<AnimatedPositinedDirectionalEx> createState() =>
      _AnimatedPositinedDirectionalExState();
}

class _AnimatedPositinedDirectionalExState
    extends State<AnimatedPositinedDirectionalEx> {
  double start = 0;
  double top = 0;
  @override
  Widget build(BuildContext context) {
    //بنستخدم الستاك ف الانيميشن لما يكون عندنا اكتر من لاير من الانيميشن ممكن يتتحطو فوق بعضهم
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated PositinedDirectional'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            AnimatedPositionedDirectional(
              duration: const Duration(milliseconds: 500),
              top: top,
              start: start,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.transparent,
                child: Image.asset('assets/jerry.png'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          start = start - 50;
                          if (start <= 0) {
                            start = 0;
                          }
                        });
                      },
                      child: const Icon(Icons.arrow_circle_left)),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          start = start + 50;
                          if (start >=
                              MediaQuery.of(context).size.width - 100) {
                            start = MediaQuery.of(context).size.width - 100;
                          }
                        });
                      },
                      child: const Icon(Icons.arrow_circle_right)),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          top = top - 50;
                          if (top <= 0) {
                            top = 0;
                          }
                        });
                      },
                      child: const Icon(Icons.arrow_circle_up)),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          top = top + 50;
                          if (top >= MediaQuery.of(context).size.height - 250) {
                            top = MediaQuery.of(context).size.height - 250;
                          }
                        });
                      },
                      child: const Icon(Icons.arrow_circle_down))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
