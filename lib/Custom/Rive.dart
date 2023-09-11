// import 'package:flutter/material.dart';

// import 'package:rive/rive.dart';

// class RiveAnimationEx extends StatefulWidget {
//   const RiveAnimationEx({super.key});

//   @override
//   State<RiveAnimationEx> createState() => _RiveAnimationExState();
// }

// List<String> paths = [
//   'assets/bear.riv',
//   'assets/girl.riv',
//   'assets/rating.riv'
// ];

// late PageController controller;
// int currentpage = 0;

// class _RiveAnimationExState extends State<RiveAnimationEx> {
//   @override
//   void initState() {
//     super.initState();
//     controller = PageController();
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Lottie'),
//       ),
//       body: PageView.builder(
//         controller: controller,
//         onPageChanged: (value) {
//           setState(() {
//             currentpage = value;
//           });
//         },
//         itemCount: paths.length,
//         itemBuilder: (context, index) {
//           return Center(
//             child: RiveAnimation.asset(
//               paths[index],
//             ),
//           );
//         },
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//           currentIndex: currentpage,
//           onTap: (value) {
//             setState(() {
//               currentpage = value;
//               // controller.nextPage(
//               //     duration: const Duration(seconds: 1),
//               //     curve: Curves.bounceInOut);
//               controller.animateToPage(currentpage,
//                   duration: const Duration(milliseconds: 100),
//                   curve: Curves.linear);
//             });
//           },
//           items: const [
//             BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.animation,
//                 ),
//                 label: '1'),
//             BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.animation,
//                 ),
//                 label: '2'),
//             BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.animation,
//                 ),
//                 label: '3')
//           ]),
//     );
//   }
// }
