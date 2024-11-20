import 'package:flutter/material.dart';

class AnimatedWidgetPage extends StatefulWidget {
  const AnimatedWidgetPage({
    super.key,
    required this.whoIsAnimate,
  });

  final Widget whoIsAnimate;

  @override
  State<AnimatedWidgetPage> createState() => _AnimatedWidgetPageState();
}

class _AnimatedWidgetPageState extends State<AnimatedWidgetPage>
    with TickerProviderStateMixin {
  late Animation animation;
  late AnimationController aniController;

  @override
  void initState() {
    super.initState();

    aniController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000))
      ..addListener(
        () {
          setState(() {
            //   log(aniController.value.toString());
          });
        },
      )
      ..forward();
    // ..repeat(reverse: false, period: const Duration(seconds: 1));

    animation = Tween(begin: 0.4, end: 0.9).animate(
        CurvedAnimation(parent: aniController, curve: Curves.easeInBack));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        builder: (context, mxChild) {
          return Transform.scale(
            scale: animation.value,
            child: mxChild,
          );
        },
        child: widget.whoIsAnimate);
  }
}














// import 'dart:developer';

// import 'package:flutter/material.dart';

// class AnimatedWidgetPage extends StatefulWidget {
//   const AnimatedWidgetPage({super.key});

//   @override
//   State<AnimatedWidgetPage> createState() => _AnimatedWidgetPageState();
// }

// class _AnimatedWidgetPageState extends State<AnimatedWidgetPage>
//     with TickerProviderStateMixin {
//   late Animation animation;
//   late AnimationController aniController;

//   @override
//   void initState() {
//     super.initState();

//     aniController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 5))
//           ..addListener(
//             () {
//               setState(() {
//                 log(aniController.value.toString());
//               });
//             },
//           )
//           ..forward()
//           ..repeat(reverse: true);

//     animation = Tween(begin: 10, end: 100).animate(
//         CurvedAnimation(parent: aniController, curve: Curves.easeInSine));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: animation,
//       builder: (context, mxChild) {
//         return Transform.scale(
//           scale: aniController.value * 2,
//           child: mxChild,
//         );
//       },
//       child: Container(
//         color: Colors.pink,
//         height: 10,
//         width: 200,
//       ),
//     );
//   }
// }
