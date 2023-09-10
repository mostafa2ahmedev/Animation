import 'package:flutter/material.dart';

class TweenAnimationBuilderEx extends StatefulWidget {
  const TweenAnimationBuilderEx({super.key});

  @override
  State<TweenAnimationBuilderEx> createState() =>
      _TweenAnimationBuilderExState();
}

class _TweenAnimationBuilderExState extends State<TweenAnimationBuilderEx> {
  double value = 0;
  Color? newColor;
  // static final tween = ColorTween(begin: Colors.white, end: newColor);
  //لو الرينج بتاع الفاليوز ثابت ف الافضل تخليها بالشكل دا عشان  ميقعدش يعمل اوبجكت كل مره يعمل فيها ريبلد
  //انما لو الفاليوز جوا التوين متغيره ف لازم تبقي جوا
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: TweenAnimationBuilder(
              tween: ColorTween(begin: Colors.white, end: newColor),
              duration: const Duration(milliseconds: 500),
              builder: (context, Color? color, Widget? child) {
                return ColorFiltered(
                  colorFilter: ColorFilter.mode(color!, BlendMode.modulate),
                  child: child,
                );
              },
              child: Image.asset('assets/tom.png'),
              //عملناها بالطريقه دي عشان انا مش محتاج اعمل ريبلد للصوره نفسها كل ما اللون يتغير  ف عشان البورفورمانس
            ),
          ),
          Slider.adaptive(
              value: value,
              onChanged: (newValue) {
                setState(() {
                  value = newValue;
                  newColor = Color.lerp(Colors.white, Colors.red, value);
                });
              })
        ],
      ),
    );
  }
}
