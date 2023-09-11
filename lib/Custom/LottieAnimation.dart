import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({super.key});

  @override
  State<LottieAnimation> createState() => _LottieAnimationState();
}

List<String> paths = [
  'assets/car.json',
  'assets/tigger.json',
  'assets/bird.json'
];

late PageController controller;
int currentpage = 0;

class _LottieAnimationState extends State<LottieAnimation> {
  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lottie'),
      ),
      body: PageView.builder(
        controller: controller,
        onPageChanged: (value) {
          setState(() {
            currentpage = value;
          });
        },
        itemCount: paths.length,
        itemBuilder: (context, index) {
          return Center(
            child: LottieBuilder.asset(
              paths[index],
              repeat: true,
              reverse: false,
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentpage,
          onTap: (value) {
            setState(() {
              currentpage = value;
              // controller.nextPage(
              //     duration: const Duration(seconds: 1),
              //     curve: Curves.bounceInOut);
              controller.animateToPage(currentpage,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.linear);
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.animation,
                ),
                label: '1'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.animation,
                ),
                label: '2'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.animation,
                ),
                label: '3')
          ]),
    );
  }
}
