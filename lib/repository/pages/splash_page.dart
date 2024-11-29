import 'dart:async';

import 'package:flutter/material.dart';

import 'home_page_view/home_web.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(days: 4),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePageWeb(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //  final isMobile = ResponsiveApp.mqMobile(context);
    //  final isPage = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.center,
              children: [],
            );
          },
        ),
      ),
    ));
  }
}
