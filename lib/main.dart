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
          ],
        ),
      ),
    );
  }
}
