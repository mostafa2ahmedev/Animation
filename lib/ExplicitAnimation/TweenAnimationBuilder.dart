import 'package:flutter/material.dart';

class TweenAnimationBuilderEx extends StatefulWidget {
  const TweenAnimationBuilderEx({super.key});

  @override
  State<TweenAnimationBuilderEx> createState() =>
      _TweenAnimationBuilderExState();
}

class _TweenAnimationBuilderExState extends State<TweenAnimationBuilderEx>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  double opacityLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween Animation Builder'),
      ),
      body: Center(
        child: Column(
          children: [
            //دي بتعمل انيمشن برده لاي ويدجت بس بدون بقا انيميشن اوبجكت ولا كنترولر اوبجكت
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: opacityLevel),
              duration: const Duration(seconds: 1),
              // الفاليو دي هتاكت كانها الانيمشن  وهي اصلا الفاليو بتاعت الانيميشن
              builder: (context, value, child) {
                return Opacity(
                  opacity: value,
                  child: child,
                );
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.black,
                child: Image.asset('assets/tom.png'),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    opacityLevel = opacityLevel == 0 ? 1 : 0;
                  });
                },
                child: const Text('Animate'))
          ],
        ),
      ),
    );
  }
}
