import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/domain/constants/responsive/responsive.dart';

import 'home_mobile.dart';
import 'home_web.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveApp(isMobile:  HomeMobile(), isDesktop: HomePageWeb());
  }
}
