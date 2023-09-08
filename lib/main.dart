import 'package:animation_project/ExplicitAnimation/AnimatedBuilder.dart';
import 'package:animation_project/ExplicitAnimation/DefaultTextStyleTransition.dart';
import 'package:animation_project/ExplicitAnimation/FadeTranstion.dart';
import 'package:animation_project/ExplicitAnimation/IndexedStackTransition.dart';
import 'package:animation_project/ExplicitAnimation/PositionedDirectionalEx.dart';
import 'package:animation_project/ExplicitAnimation/PositionedTranstion.dart';
import 'package:animation_project/ExplicitAnimation/RotaionTransition.dart';
import 'package:animation_project/ExplicitAnimation/SizeTransistion.dart';
import 'package:animation_project/ExplicitAnimation/TweenAnimationBuilder.dart';
import 'package:animation_project/ImplicitAnimation/AnimatedAlign.dart';
import 'package:animation_project/ImplicitAnimation/AnimatedContainer.dart';
import 'package:animation_project/ImplicitAnimation/AnimatedCrossFaed.dart';
import 'package:animation_project/ImplicitAnimation/AnimatedListState.dart';
import 'package:animation_project/ImplicitAnimation/AnimatedOpacity.dart';
import 'package:animation_project/ImplicitAnimation/AnimatedPadding.dart';
import 'package:animation_project/ImplicitAnimation/AnimatedPositinedDirectional.dart';
import 'package:animation_project/ImplicitAnimation/AnimatedPostined.dart';
import 'package:animation_project/ImplicitAnimation/AnimatedPysicalModel.dart';
import 'package:animation_project/ImplicitAnimation/AnimatedSwitcher.dart';
import 'package:animation_project/ImplicitAnimation/AnimatedText.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                // Animated Align widget
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedAlignEx()));
              },
              child: const Text('Animated Align'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedContainerEx()));
              },
              child: const Text('Animated Container'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedTextEx()));
              },
              child: const Text('Animated Text'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedOpacityEx()));
              },
              child: const Text('Animated Opacity'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedPaddingEx()));
              },
              child: const Text('Animated Padding'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedPhysicalModelEx()));
              },
              child: const Text(' Animated Physical Model'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedPositinedEx()));
              },
              child: const Text(' Animated Positined'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const AnimatedPositinedDirectionalEx()));
              },
              child: const Text(' Animated Positined Directional'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedCrossFadeEx()));
              },
              child: const Text(' Animated CrossFade'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedSwitcherEx()));
              },
              child: const Text(' Animated Switcher'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedListStateEx()));
              },
              child: const Text(' Animated List State'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PositionedTransitionEx()));
              },
              child: const Text(' Positined Transition'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SizeTransitionEx()));
              },
              child: const Text(' Size Transition'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RotationTransitionEx()));
              },
              child: const Text(' Rotation Transition'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedBuilderEx()));
              },
              child: const Text(' Animated Builder'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FadeTransitionEx()));
              },
              child: const Text(' Fade Transtion'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PositionedDirectionalEx()));
              },
              child: const Text(' Positioned Directional Transition'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TweenAnimationBuilderEx()));
              },
              child: const Text('Tween Animation Builder'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const DefaultTextStyleTransitionEx()));
              },
              child: const Text('Default TextStyle Transition'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const IndexedStackTransitionEx()));
              },
              child: const Text('Indexed Stack Transition'),
            ),
          ],
        ),
      ),
    );
  }
}
